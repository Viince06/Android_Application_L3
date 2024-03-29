package fr.info.pl2020.controller;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import com.loopj.android.http.JsonHttpResponseHandler;

import org.json.JSONObject;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpStatus;
import fr.info.pl2020.R;
import fr.info.pl2020.service.RegisterService;

public class RegisterController {
    public void authenticate(Context context, String name, String lastname, String email, String password) {
        new RegisterService().verify(name, lastname, email, password, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject response) {
                if (statusCode == HttpStatus.SC_CREATED) {
                    ((Activity) context).finish();
                } else {
                    Log.e("REGISTER", "Statut HTTP de la réponse inattendu (Code: " + statusCode + ")");
                }
            }

            @Override
            public void onFailure(int statusCode, Header[] headers, Throwable throwable, JSONObject errorResponse) {
                if (statusCode == HttpStatus.SC_CONFLICT) {
                    TextView error = ((Activity) context).findViewById(R.id.registerErrorTextView);
                    error.setText(errorResponse.optString("message"));
                    error.setVisibility(View.VISIBLE);

                } else {
                    Log.e("LOGIN", "Echec de l'authentification (Code: " + statusCode + ")", throwable);
                }
            }
        });
    }
}