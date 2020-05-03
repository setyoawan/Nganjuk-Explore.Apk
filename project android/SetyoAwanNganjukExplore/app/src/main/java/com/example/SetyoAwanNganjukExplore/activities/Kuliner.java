package com.example.SetyoAwanNganjukExplore.activities;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.example.SetyoAwanNganjukExplore.R;
import com.example.SetyoAwanNganjukExplore.adapters.AdapterKuliner;
import com.example.SetyoAwanNganjukExplore.model.ModelKuliner;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Kuliner extends AppCompatActivity {


    private String URL_JSON = "https://nganjukexplore.000webhostapp.com/4kuliner/done.php";
    private JsonArrayRequest request ;
    private RequestQueue requestQueue ;
    private List<ModelKuliner> listKuliner;
    private RecyclerView recyclerView ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kuliner);

        listKuliner = new ArrayList<>();
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
                        ModelKuliner kuliner = new ModelKuliner();


                        kuliner.setId((jsonObject.getInt("id")));
                        kuliner.setNama(jsonObject.getString("nama"));
                        kuliner.setLokasi(jsonObject.getString("lokasi"));
                        kuliner.setKategori(jsonObject.getString("kategori"));
                        kuliner.setGambar(jsonObject.getString("gambar"));
                        kuliner.setIsi(jsonObject.getString("isi"));

                        //Toast.makeText(MainActivity.this,anime.toString(),Toast.LENGTH_SHORT).show();
                        listKuliner.add(kuliner);


                    }
                    catch (JSONException e) {
                        e.printStackTrace();
                    }
                }


                setuprecyclerview(listKuliner);
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });


        requestQueue = Volley.newRequestQueue(Kuliner.this);
        requestQueue.add(request);
    }



    public void setuprecyclerview (List<ModelKuliner> listKuliner) {

        AdapterKuliner myAdapter = new AdapterKuliner(this,listKuliner) ;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(myAdapter);


    }
}
