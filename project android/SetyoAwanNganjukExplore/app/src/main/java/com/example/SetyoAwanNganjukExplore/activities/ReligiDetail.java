package com.example.SetyoAwanNganjukExplore.activities;

import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;
import com.codesgood.views.JustifiedTextView;
import com.example.SetyoAwanNganjukExplore.R;

public class ReligiDetail extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_religi_detail);

        //menyembunyikan appbar
        //getSupportActionBar().hide();

        //menerima data
        String nama = getIntent().getExtras().getString("nama");
        String lokasi = getIntent().getExtras().getString("lokasi");
        String kategori = getIntent().getExtras().getString("kategori");
        String gambar = getIntent().getExtras().getString("img");
        String deskripsi = getIntent().getExtras().getString("isi");

        //ini views

        CollapsingToolbarLayout collapsingToolbarLayout =findViewById(R.id.collapsingtoolbar_id);
        collapsingToolbarLayout.setTitleEnabled(true);

        TextView namawst = findViewById(R.id.aa_nama);
        TextView lokasiwst = findViewById(R.id.aa_lokasi);
        TextView kategoriwst = findViewById(R.id.aa_kategori);
        JustifiedTextView deskripsiwst = findViewById(R.id.aa_deskripsi);

        ImageView img = findViewById(R.id.aa_thumbnail);



        //setting values

        namawst.setText(nama);
        lokasiwst.setText(lokasi);
        kategoriwst.setText(kategori);
        deskripsiwst.setText(deskripsi);



        //judul
        collapsingToolbarLayout.setTitle(nama);

        RequestOptions requestOptions = new RequestOptions().centerCrop().placeholder(R.drawable.ic_image_black_24dp).error(R.drawable.ic_image_black_24dp);


        //setting image menggunakan glide

        Glide.with(this).load("https://nganjukexplore.000webhostapp.com/6religi/img/" + gambar).apply(requestOptions).into(img);


    }
}
