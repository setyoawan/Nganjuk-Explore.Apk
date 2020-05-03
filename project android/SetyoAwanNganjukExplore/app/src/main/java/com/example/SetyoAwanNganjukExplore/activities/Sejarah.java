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
import com.example.SetyoAwanNganjukExplore.adapters.AdapterSejarah;
import com.example.SetyoAwanNganjukExplore.model.ModelSejarah;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Sejarah extends AppCompatActivity {

        private String URL_JSON = "https://nganjukexplore.000webhostapp.com/2sejarah/done.php";
        private JsonArrayRequest request ;
        private RequestQueue requestQueue ;
        private List<ModelSejarah> listSejarah;
        private RecyclerView recyclerView ;


        @Override
        protected void onCreate(Bundle savedInstanceState) {

            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_sejarah);
            listSejarah = new ArrayList<>();
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
                            ModelSejarah sejarah = new ModelSejarah();


                            sejarah.setId((jsonObject.getInt("id")));
                            sejarah.setNama(jsonObject.getString("nama"));
                            sejarah.setLokasi(jsonObject.getString("lokasi"));
                            sejarah.setKategori(jsonObject.getString("kategori"));
                            sejarah.setGambar(jsonObject.getString("gambar"));
                            sejarah.setIsi(jsonObject.getString("isi"));

                            //Toast.makeText(MainActivity.this,anime.toString(),Toast.LENGTH_SHORT).show();
                            listSejarah.add(sejarah);


                        }
                        catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }


                    setuprecyclerview(listSejarah);
                }
            }, new Response.ErrorListener() {
                @Override
                public void onErrorResponse(VolleyError error) {

                }
            });


            requestQueue = Volley.newRequestQueue(Sejarah.this);
            requestQueue.add(request);
        }



        public void setuprecyclerview (List<ModelSejarah> listSejarah) {
            //method seperti nama adapternya
            AdapterSejarah myAdapter = new AdapterSejarah(this,listSejarah);
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
            recyclerView.setAdapter(myAdapter);


        }
}
