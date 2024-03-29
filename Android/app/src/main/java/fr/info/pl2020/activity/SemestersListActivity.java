package fr.info.pl2020.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.TextView;

import fr.info.pl2020.R;
import fr.info.pl2020.controller.CareerController;
import fr.info.pl2020.controller.SearchController;
import fr.info.pl2020.controller.SemestersListController;

public class SemestersListActivity extends ToolbarIntegratedActivity implements SearchView.OnQueryTextListener {

    public static final String ARG_CAREER_ID = "career_id";
    private ListView semesterList;
    private SearchController searchController;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_semesters_list);

        int careerId = 0;
        Bundle b = getIntent().getExtras();
        if (b != null) {
            careerId = b.getInt(ARG_CAREER_ID);
        }

        // Toolbar
        new ToolbarConfig()
                .enableSearch(this)
                .enableDrawer(findViewById(R.id.semester_layout))
                //.setTitle(currentCareer == null ? "" : currentCareer.getName())
                .build();

        this.semesterList = findViewById(R.id.semesterListView);
        this.searchController = new SearchController();
        new CareerController().getCareer(this, careerId, null);
    }

    @Override
    protected void onResume() {
        super.onResume();
        new SemestersListController().displaySemesterList(this, this.semesterList);
    }


    @Override
    public boolean onQueryTextSubmit(String query) {
        this.searchController.searchTeachingUnit(this, query, 0);
        return true;
    }

    @Override
    public boolean onQueryTextChange(String newText) {
        TextView searchErrorTextView = findViewById(R.id.searchErrorTextView);
        View searchBackground = findViewById(R.id.search_background);
        searchErrorTextView.setVisibility(View.GONE);

        if (newText.isEmpty()) {
            searchBackground.setVisibility(View.GONE);
            return false;
        } else if (newText.length() < MIN_CHAR_FOR_SEARCH) {
            searchBackground.setVisibility(View.VISIBLE);
            return false;
        } else {
            searchBackground.setVisibility(View.VISIBLE);
            this.searchController.searchTeachingUnit(this, newText, 0);
            return true;
        }
    }
}
