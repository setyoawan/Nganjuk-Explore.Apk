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
import com.example.SetyoAwanNganjukExplore.adapters.AdapterReligi;
import com.example.SetyoAwanNganjukExplore.model.ModelReligi;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Religi extends AppCompatActivity {

    private String URL_JSON = "https://nganjukexplore.000webhostapp.com/6religi/done.php";
    private JsonArrayRequest request ;
    private RequestQueue requestQueue ;
    private List<ModelReligi> listReligi;
    private RecyclerView recyclerView ;


    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_religi);
        listReligi = new ArrayList<>();
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
                        ModelReligi religi = new ModelReligi();


                        religi.setId((jsonObject.getInt("id")));
                        religi.setNama(jsonObject.getString("nama"));
                        religi.setLokasi(jsonObject.getString("lokasi"));
                        religi.setKategori(jsonObject.getString("kategori"));
                        religi.setGambar(jsonObject.getString("gambar"));
                        religi.setIsi(jsonObject.getString("isi"));

                        //Toast.makeText(MainActivity.this,anime.toString(),Toast.LENGTH_SHORT).show();
                        listReligi.add(religi);


                    }
                    catch (JSONException e) {
                        e.printStackTrace();
                    }
                }


                setuprecyclerview(listReligi);
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });


        requestQueue = Volley.newRequestQueue(Religi.this);
        requestQueue.add(request);
    }



    public void setuprecyclerview (List<ModelReligi> listReligi) {

        AdapterReligi myAdapter = new AdapterReligi(this,listReligi) ;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(myAdapter);


    }
}
