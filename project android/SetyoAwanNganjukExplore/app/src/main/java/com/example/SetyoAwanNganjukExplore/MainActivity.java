package com.example.SetyoAwanNganjukExplore;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.example.SetyoAwanNganjukExplore.activities.Alam;
import com.example.SetyoAwanNganjukExplore.activities.Belanja;
import com.example.SetyoAwanNganjukExplore.activities.Edukasi;
import com.example.SetyoAwanNganjukExplore.activities.Kuliner;
import com.example.SetyoAwanNganjukExplore.activities.Religi;
import com.example.SetyoAwanNganjukExplore.activities.Sejarah;

public class MainActivity extends AppCompatActivity {
    Button button1 , button2, button3, button4, button5, button6;

    private static final int TIME_INTERVAL = 2000;
    private long mBackPressed;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        button1 = findViewById(R.id.button1);
        button2 = findViewById(R.id.button2);
        button3 = findViewById(R.id.button3);
        button4 = findViewById(R.id.button4);
        button5 = findViewById(R.id.button5);
        button6 = findViewById(R.id.button6);

        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "list wisata alam", Toast.LENGTH_SHORT).show();

                Intent intent = new Intent(MainActivity.this, Alam.class);
                startActivity(intent);

            }
        });

        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "list wisata religi", Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(MainActivity.this, Religi.class);
                startActivity(intent);

            }
        });

        button3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "list wisata sejarah", Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(MainActivity.this, Sejarah.class);
                startActivity(intent);


            }
        });

        button4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "list wisata kuliner", Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(MainActivity.this, Kuliner.class);
                startActivity(intent);


            }
        });

        button5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "list wisata edukasi", Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(MainActivity.this, Edukasi.class);
                startActivity(intent);


            }
        });

        button6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "list wisata belanja", Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(MainActivity.this, Belanja.class);
                startActivity(intent);


            }
        });


    }
    //toat keluar ======================================================================
    @Override
    public void onBackPressed()
    {
        if (mBackPressed + TIME_INTERVAL > System.currentTimeMillis())
        {
            super.onBackPressed();
            return;
        }
        else { Toast.makeText(getBaseContext(), "Tekan Sekali lagi untuk Keluar", Toast.LENGTH_SHORT).show(); }

        mBackPressed = System.currentTimeMillis();
    }




    //Option Menu========================================================================

    public boolean onCreateOptionsMenu (Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        return true;
    }
    public  boolean onOptionsItemSelected  (MenuItem item) {
        switch (item.getItemId()){
            case R.id.menu1:
                Toast.makeText(getApplicationContext(), "Detail App", Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(Intent.ACTION_VIEW);
                intent.setData(Uri.parse("https://nganjukexplore.000webhostapp.com "));
                startActivity(intent);
                break;

            case R.id.menu2:
                Toast.makeText(getApplicationContext(), "Kritik Saran", Toast.LENGTH_SHORT).show();
                Intent i = new Intent(Intent.ACTION_DIAL);
                i.setData(Uri.parse("tel:0895331535131"));
                startActivity(i);
                break;


            case R.id.menu3:
                Toast.makeText(getApplicationContext(), "Tentang", Toast.LENGTH_SHORT).show();
                break;
            default:
                break;
        }
        return super.onOptionsItemSelected(item);
    }


}
