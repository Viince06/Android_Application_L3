package fr.info.pl2020.controller;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import fr.info.pl2020.activity.CareerListActivity;
import fr.info.pl2020.activity.CareerSummaryActivity;
import fr.info.pl2020.activity.SemestersListActivity;

public class HomeController {

    public enum StartActivity {
        SEMESTER_LIST,
        CAREER_SUMMARY,
        CAREER_LIST
    }

    public void changeActivity(Context context, StartActivity activityName) {
        switch (activityName) {
            case SEMESTER_LIST:
                context.startActivity(new Intent(context, SemestersListActivity.class));
                break;

            case CAREER_SUMMARY:
                context.startActivity(new Intent(context, CareerSummaryActivity.class));
                break;

            case CAREER_LIST:
                context.startActivity(new Intent(context, CareerListActivity.class));
                break;

            default:
                Log.d("HOME", "changeActivity() - Activité non reconnu");
        }
    }
}