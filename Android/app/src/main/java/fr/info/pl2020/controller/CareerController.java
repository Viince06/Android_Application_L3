package fr.info.pl2020.controller;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;

import com.loopj.android.http.BlackholeHttpResponseHandler;
import com.loopj.android.http.JsonHttpResponseHandler;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;
import java.util.stream.Collectors;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpStatus;
import fr.info.pl2020.R;
import fr.info.pl2020.activity.SemestersListActivity;
import fr.info.pl2020.component.MessagePopup;
import fr.info.pl2020.manager.AuthenticationManager;
import fr.info.pl2020.model.Career;
import fr.info.pl2020.model.TeachingUnit;
import fr.info.pl2020.service.CareerService;
import fr.info.pl2020.store.CareerListStore;
import fr.info.pl2020.store.CareerStore;

import static fr.info.pl2020.util.JsonModelConvert.jsonArrayToCareers;
import static fr.info.pl2020.util.JsonModelConvert.jsonObjectToCareer;

public class CareerController {

    private CareerService careerService = new CareerService();

    /**
     * Récupère le parcours correspondant à l'id envoyé en paramètre OU le parccours principal si id == 0
     */
    public void getCareer(Context context, int careerId, Runnable callback) {
        this.careerService.getCareerById(careerId, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject response) {
                CareerStore.setCurrentCareer(jsonObjectToCareer(response));

                if (callback != null) {
                    callback.run();
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else {
                    Log.e("CAREER", "Echec de la récupération du parcours de l'étudiant (Code: " + statusCode + ")", throwable);
                    Toast.makeText(context, R.string.unexpected_http_status, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    /**
     * Récupère l'ensemble des parcours de l'étudiant
     */
    public void getAllCareers(Context context, Runnable callback) {
        new CareerService().getAllCareers(new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONArray response) {
                if (statusCode == HttpStatus.SC_OK) {
                    CareerListStore.clear();
                    List<Career> careers = jsonArrayToCareers(response);
                    for (Career career : careers) {
                        CareerListStore.addItem(career);
                    }

                    if (callback != null) {
                        callback.run();
                    }
                } else {
                    Log.e("CAREER_SERVICE", "Erreur lors de la récupération des informations de la liste des parcours");
                    Toast.makeText(context, R.string.standard_exception, Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else {
                    Log.e("CAREER_SERVICE", "Echec de la récupération de la liste des parcours (Code: " + statusCode + ")", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    /**
     * Récupère l'ensemble des parcours publics
     */
    public void getPublicCareers(Context context, Runnable callback) {
        new CareerService().getPublicCareers(new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONArray response) {
                if (statusCode == HttpStatus.SC_OK) {
                    CareerListStore.clear();
                    List<Career> careers = jsonArrayToCareers(response);
                    for (Career career : careers) {
                        CareerListStore.addItem(career);
                    }

                    if (callback != null) {
                        callback.run();
                    }
                } else {
                    Log.e("CAREER_SERVICE", "Erreur lors de la récupération des informations de la liste des parcours publics");
                    Toast.makeText(context, R.string.standard_exception, Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else {
                    Log.e("CAREER_SERVICE", "Echec de la récupération de la liste des parcours publics (Code: " + statusCode + ")", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void createCareer(Context context, Career career) {
        this.careerService.createCareer(career, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject response) {
                if (response.has("error")) {
                    new MessagePopup(context, "Erreur", response.optString("error"));
                } else {
                    new MessagePopup(context, "Le parcours a bien été créé.", null, (dialog, which) -> {
                        CareerStore.setCurrentCareer(jsonObjectToCareer(response));
                        Intent intent = new Intent(context, SemestersListActivity.class);
                        intent.putExtra(SemestersListActivity.ARG_CAREER_ID, CareerStore.getCurrentCareer().getId());
                        context.startActivity(intent);
                    });
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else if (statusCode == HttpStatus.SC_UNPROCESSABLE_ENTITY || statusCode == HttpStatus.SC_CONFLICT) {
                    new MessagePopup(context, "Erreur", errorResponse.optString("error"));
                } else {
                    Log.e("CAREER", "Echec de la creation  d'un parcours", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void editCareer(Context context, Career career) {
        this.careerService.editCareer(career, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject response) {
                if (response.has("error")) {
                    new MessagePopup(context, "Erreur", response.optString("error"));
                } else {
                    new MessagePopup(context, "Le parcours a bien été modifié.", null, (dialog, which) -> {
                    });
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else if (statusCode == HttpStatus.SC_UNPROCESSABLE_ENTITY || statusCode == HttpStatus.SC_CONFLICT) {
                    new MessagePopup(context, "Erreur", errorResponse.optString("error"));
                } else {
                    Log.e("CAREER", "Echec de l'édition  d'un parcours", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void deleteCareer(Context context, Career career) {
        this.careerService.deleteCareer(career, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject response) {
                if (response.has("error")) {
                    new MessagePopup(context, "Erreur", response.optString("error"));
                } else {
                    new MessagePopup(context, "Le parcours a bien été Supprimé.");
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else if (statusCode == HttpStatus.SC_UNPROCESSABLE_ENTITY) {
                    new MessagePopup(context, "Erreur", errorResponse.optString("error"));
                } else {
                    Log.e("CAREER", "Echec de la Suppression d'un parcours", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void saveCareer(Context context, Runnable callback) {
        int careerId = CareerStore.getCurrentCareer().getId();
        List<Integer> teachingUnitIdList = CareerStore.getCurrentCareer().getTeachingUnits().stream().map(TeachingUnit::getId).collect(Collectors.toList());
        this.careerService.saveCareer(careerId, teachingUnitIdList, new JsonHttpResponseHandler() {

            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject response) {
                if (response.has("error")) {
                    new MessagePopup(context, "Erreur", response.optString("error"));
                } else {
                    CareerStore.setCurrentCareer(jsonObjectToCareer(response));
                    new MessagePopup(context, "Le parcours a bien été enregistré.");
                    if (callback != null) {
                        callback.run();
                    }
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    new AuthenticationManager().callLoginActivity(context);
                } else if (statusCode == HttpStatus.SC_UNPROCESSABLE_ENTITY) {
                    new MessagePopup(context, "Erreur", errorResponse.optString("error"));
                } else {
                    Log.e("CAREER", "Echec de l'enregistrement d'un parcours", throwable);
                    Toast.makeText(context, R.string.server_connection_error, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void downloadCareer(Context context, int careerId, Career.ExportFormat format) {
        this.careerService.exportCareer(context, careerId, format);
    }

    public void sendMailCareer(Context context, int careerId) {
        this.careerService.sendCareer(careerId, new BlackholeHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, byte[] response) {
                new MessagePopup(context, "Le parcours a bien été envoyé.", null, (dialog, which) -> {
                });
            }
        });
    }
}