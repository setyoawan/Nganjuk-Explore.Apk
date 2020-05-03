package com.example.SetyoAwanNganjukExplore.activities;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.example.SetyoAwanNganjukExplore.R;
import com.example.SetyoAwanNganjukExplore.adapters.RecyclerViewAdapter;
import com.example.SetyoAwanNganjukExplore.model.ModelAlam;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Alam extends AppCompatActivity {
    private String URL_JSON = "https://nganjukexplore.000webhostapp.com/1alam/done.php";
    private JsonArrayRequest request ;
    private RequestQueue requestQueue ;
    private List<ModelAlam> listAlam;
    private RecyclerView recyclerView ;


    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_alam);
        listAlam = new ArrayList<>();
        recyclerView = findViewById(R.id.recyclerview_id);
        jsonrequest();



    }

    public void jsonrequest() {


        request = new JsonArrayRequest(URL_JSON, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {

                JSONObject jsonObject = null;


                for (int i = 0 ; i < response.length();i++) {

                    //Toast.makeText(getApplicationContext(),String.valueOf(i),Toast.LENGTH_SHORT).show();

                    try {

                        jsonObject = response.getJSONObject(i);
                        ModelAlam alam = new ModelAlam();


                        alam.setId((jsonObject.getInt("id")));
                        alam.setNama(jsonObject.getString("nama"));
                        alam.setLokasi(jsonObject.getString("lokasi"));
                        alam.setKategori(jsonObject.getString("kategori"));
                        alam.setGambar(jsonObject.getString("gambar"));
                        alam.setIsi(jsonObject.getString("isi"));

                        //Toast.makeText(MainActivity.this,anime.toString(),Toast.LENGTH_SHORT).show();
                        listAlam.add(alam);


                    }
                    catch (JSONException e) {
                        e.printStackTrace();
                    }
                }


                setuprecyclerview(listAlam);
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });


        requestQueue = Volley.newRequestQueue(Alam.this);
        requestQueue.add(request);
    }



    public void setuprecyclerview (List<ModelAlam> listAlam) {

        RecyclerViewAdapter myAdapter = new RecyclerViewAdapter(this,listAlam) ;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(myAdapter);


    }


}
