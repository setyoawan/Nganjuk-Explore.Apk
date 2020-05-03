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
import com.example.SetyoAwanNganjukExplore.adapters.AdapterBelanja;
import com.example.SetyoAwanNganjukExplore.model.ModelBelanja;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Belanja extends AppCompatActivity {

    private String URL_JSON = "https://nganjukexplore.000webhostapp.com/5belanja/done.php";
    private JsonArrayRequest request ;
    private RequestQueue requestQueue ;
    private List<ModelBelanja> listBelanja;
    private RecyclerView recyclerView ;


    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_belanja);
        listBelanja = new ArrayList<>();
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
                        ModelBelanja belanja = new ModelBelanja();


                        belanja.setId((jsonObject.getInt("id")));
                        belanja.setNama(jsonObject.getString("nama"));
                        belanja.setLokasi(jsonObject.getString("lokasi"));
                        belanja.setKategori(jsonObject.getString("kategori"));
                        belanja.setGambar(jsonObject.getString("gambar"));
                        belanja.setIsi(jsonObject.getString("isi"));

                        //Toast.makeText(MainActivity.this,anime.toString(),Toast.LENGTH_SHORT).show();
                        listBelanja.add(belanja);


                    }
                    catch (JSONException e) {
                        e.printStackTrace();
                    }
                }


                setuprecyclerview(listBelanja);
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });


        requestQueue = Volley.newRequestQueue(Belanja.this);
        requestQueue.add(request);
    }



    public void setuprecyclerview (List<ModelBelanja> listBelanja) {

        AdapterBelanja myAdapter = new AdapterBelanja(this,listBelanja) ;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(myAdapter);


    }
}
