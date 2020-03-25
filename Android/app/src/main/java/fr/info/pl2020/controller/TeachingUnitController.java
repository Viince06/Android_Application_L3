package fr.info.pl2020.controller;

import android.content.Context;
import android.util.Log;
import android.widget.ExpandableListView;
import android.widget.TextView;
import android.widget.Toast;

import com.loopj.android.http.JsonHttpResponseHandler;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpStatus;
import fr.info.pl2020.R;
import fr.info.pl2020.adapter.TeachingUnitAdapter;
import fr.info.pl2020.model.TeachingUnit;
import fr.info.pl2020.service.TeachingUnitService;

import static fr.info.pl2020.manager.AuthenticationManager.callLoginActivity;

public class TeachingUnitController {

    public void displayTeachingUnits(Context context, ExpandableListView expandableListView, int semesterId) {
        new TeachingUnitService().getAllBySemester(semesterId, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONArray response) {
                if (statusCode == HttpStatus.SC_OK) {
                    Map<String, List<TeachingUnit>> teachingUnitByCategoryMap = new TreeMap<>();
                    for (int i = 0; i < response.length(); i++) {
                        try {
                            JSONObject jsonTeachingUnit = response.getJSONObject(i);
                            int teachingUnitId = jsonTeachingUnit.getInt("id");
                            String teachingUnitName = jsonTeachingUnit.getString("name");

                            TeachingUnit teachingUnit = new TeachingUnit(teachingUnitId, teachingUnitName);
                            if (jsonTeachingUnit.optBoolean("selectedByStudent")) {
                                teachingUnit.setSelectedByStudent(true);
                            }
                            String categoryName = jsonTeachingUnit.getString("category");
                            teachingUnitByCategoryMap.putIfAbsent(categoryName, new ArrayList<>());
                            teachingUnitByCategoryMap.get(categoryName).add(teachingUnit);
                        } catch (JSONException e) {
                            Log.e("TEACHING_UNIT", "Erreur lors de la récupération des informations d'une UE", e);
                            Toast.makeText(context, R.string.standard_exception, Toast.LENGTH_SHORT).show();
                            return;
                        }
                    }

                    for (List<TeachingUnit> list : teachingUnitByCategoryMap.values()) {
                        list.sort((o1, o2) -> o1.getId() - o2.getId());
                    }

                    TeachingUnitAdapter categoryAdapter = new TeachingUnitAdapter(context, teachingUnitByCategoryMap);
                    expandableListView.setAdapter(categoryAdapter);
                } else {
                    Log.e("TEACHING_UNIT", "Statut HTTP de la réponse inattendu (Code: (Code: " + statusCode + ")");
                    Toast.makeText(context, R.string.standard_exception, Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    callLoginActivity(context);
                } else {
                    Log.e("TEACHING_UNIT", "Echec de la récupération de la liste des UE (Code: " + statusCode + ")", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void displayTeachingUnitDetails(Context context, TextView nameTextView, TextView codeTextView, TextView descriptionTextView, int teachingUnitId) {
        new TeachingUnitService().getOne(teachingUnitId, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject response) {
                if (statusCode == HttpStatus.SC_OK) {
                    try {
                        nameTextView.setText(response.getString("name"));
                        codeTextView.setText(response.getString("code"));
                        descriptionTextView.setText(response.getString("description"));
                    } catch (JSONException e) {
                        Log.e("TEACHING_UNIT", "Echec de la récupération des informations de l'UE '" + teachingUnitId + "' depuis le JSON", e);
                    }
                } else {
                    Log.e("TEACHING_UNIT", "Statut HTTP de la réponse inattendu (Code: " + statusCode + ")");
                    Toast.makeText(context, R.string.unexpected_http_status, Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    callLoginActivity(context);
                } else {
                    Log.e("TEACHING_UNIT", "Echec de la récupération de la description de l'UE '" + teachingUnitId + "' (Code: " + statusCode + ")", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}
