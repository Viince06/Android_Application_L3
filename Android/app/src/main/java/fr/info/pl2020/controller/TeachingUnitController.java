package fr.info.pl2020.controller;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.ExpandableListView;
import android.widget.Toast;

import com.loopj.android.http.JsonHttpResponseHandler;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpStatus;
import fr.info.pl2020.R;
import fr.info.pl2020.activity.TeachingUnitListActivity;
import fr.info.pl2020.adapter.TeachingUnitAdapter;
import fr.info.pl2020.manager.AuthenticationManager;
import fr.info.pl2020.model.TeachingUnit;
import fr.info.pl2020.service.TeachingUnitService;
import fr.info.pl2020.store.TeachingUnitListStore;
import fr.info.pl2020.util.FunctionsUtils;
import fr.info.pl2020.util.JsonModelConvert;

public class TeachingUnitController {

    public void updateTeachingUnits(Context context, int semesterId) {
        new TeachingUnitService().getAll(semesterId, null, new JsonHttpResponseHandler() {

            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONArray response) {
                if (statusCode != HttpStatus.SC_OK) {
                    Log.e("TEACHING_UNIT", "Statut HTTP de la réponse inattendu (Code: " + statusCode + ")");
                    Toast.makeText(context, R.string.standard_exception, Toast.LENGTH_SHORT).show();
                }

                List<TeachingUnit> teachingUnits = JsonModelConvert.jsonArrayToTeachingUnits(response);
                for (TeachingUnit tu : teachingUnits) {
                    TeachingUnitListStore.addItem(tu);
                }

                setupExpandableListView(context);
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else {
                    Log.e("TEACHING_UNIT", "Echec de la récupération de la liste des UE (Code: " + statusCode + ")", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void setupExpandableListView(Context context) {
        ExpandableListView expandableListView = ((Activity) context).findViewById(R.id.teachingunit_list);
        expandableListView.setAdapter(new TeachingUnitAdapter(context, TeachingUnitListStore.getTeachingUnitByCategory(), TeachingUnitListActivity.isTwoPane));
        int lastOpenedTU = TeachingUnitListStore.getLastOpenedTeachingUnit();
        if (lastOpenedTU != 0 && TeachingUnitListStore.TEACHING_UNITS.containsKey(lastOpenedTU)) {
            TeachingUnit tu = TeachingUnitListStore.TEACHING_UNITS.get(lastOpenedTU);
            if (tu != null) {
                int index = FunctionsUtils.getIndex(TeachingUnitListStore.getTeachingUnitByCategory().keySet(), tu.getCategory());
                expandableListView.expandGroup(index);
            }
        }
    }
}
