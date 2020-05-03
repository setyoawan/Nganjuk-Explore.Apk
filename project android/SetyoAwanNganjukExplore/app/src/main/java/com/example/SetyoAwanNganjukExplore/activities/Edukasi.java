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
import com.example.SetyoAwanNganjukExplore.adapters.AdapterEdukasi;
import com.example.SetyoAwanNganjukExplore.model.ModelEdukasi;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Edukasi extends AppCompatActivity {

    private String URL_JSON = "https://nganjukexplore.000webhostapp.com/3edukasi/done.php";
    private JsonArrayRequest request ;
    private RequestQueue requestQueue ;
    private List<ModelEdukasi> listEdukasi;
    private RecyclerView recyclerView ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_edukasi);


        listEdukasi = new ArrayList<>();
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
                        ModelEdukasi edukasi = new ModelEdukasi();


                        edukasi.setId((jsonObject.getInt("id")));
                        edukasi.setNama(jsonObject.getString("nama"));
                        edukasi.setLokasi(jsonObject.getString("lokasi"));
                        edukasi.setKategori(jsonObject.getString("kategori"));
                        edukasi.setGambar(jsonObject.getString("gambar"));
                        edukasi.setIsi(jsonObject.getString("isi"));

                        //Toast.makeText(MainActivity.this,anime.toString(),Toast.LENGTH_SHORT).show();
                        listEdukasi.add(edukasi);


                    }
                    catch (JSONException e) {
                        e.printStackTrace();
                    }
                }


                setuprecyclerview(listEdukasi);
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });


        requestQueue = Volley.newRequestQueue(Edukasi.this);
        requestQueue.add(request);
    }



    public void setuprecyclerview (List<ModelEdukasi> listEdukasi) {

        AdapterEdukasi myAdapter = new AdapterEdukasi(this,listEdukasi) ;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(myAdapter);


    }
}
