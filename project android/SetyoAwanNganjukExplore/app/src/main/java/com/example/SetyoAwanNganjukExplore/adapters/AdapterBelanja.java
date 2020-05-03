package com.example.SetyoAwanNganjukExplore.adapters;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;
import com.example.SetyoAwanNganjukExplore.R;
import com.example.SetyoAwanNganjukExplore.activities.BelanjaDetail;
import com.example.SetyoAwanNganjukExplore.model.ModelBelanja;

import java.util.List;

public class AdapterBelanja extends RecyclerView.Adapter<RecyclerViewAdapter.MyViewHolder> {

    RequestOptions option ;
    private Context mContext ;
    private List<ModelBelanja> mData ;


    public AdapterBelanja (Context mContext, List<ModelBelanja> mData) {
        this.mContext = mContext;
        this.mData = mData;

        option = new RequestOptions()
                .centerCrop()
                .placeholder(R.drawable.ic_image_black_24dp)
                .error(R.drawable.ic_image_black_24dp);
    }

    @Override
    public RecyclerViewAdapter.MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

        View view ;
        LayoutInflater Inflater = LayoutInflater.from(mContext);

        //================================= Recycler view
        view = Inflater.inflate(R.layout.alam_row_item,parent,false);
        //baru detail
        final RecyclerViewAdapter.MyViewHolder viewHolder = new RecyclerViewAdapter.MyViewHolder(view);

        viewHolder.view_container.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent i = new Intent(mContext, BelanjaDetail.class);
                i.putExtra("nama",mData.get(viewHolder.getAdapterPosition()).getNama());
                i.putExtra("isi",mData.get(viewHolder.getAdapterPosition()).getIsi());
                i.putExtra("lokasi",mData.get(viewHolder.getAdapterPosition()).getLokasi());
                i.putExtra("img",mData.get(viewHolder.getAdapterPosition()).getGambar());
                i.putExtra("kategori",mData.get(viewHolder.getAdapterPosition()).getKategori());


                mContext.startActivity(i);


            }
        });

        // click listener here
        return viewHolder;



    }

    @Override
    public void onBindViewHolder(RecyclerViewAdapter.MyViewHolder holder, int position) {

        holder.nama.setText(mData.get(position).getNama());
        holder.lokasi.setText(mData.get(position).getLokasi());
        holder.kategori.setText(mData.get(position).getKategori());


        // load image from the internet using Glide
        Glide.with(mContext)
                .load("https://nganjukexplore.000webhostapp.com/5belanja/img/"+ mData.get(position).getGambar())
                .apply(option).into(holder.img_thumbnail);

    }

    @Override
    public int getItemCount() {
        return mData.size();
    }

    public static class  MyViewHolder extends  RecyclerView.ViewHolder {

        TextView nama, lokasi, kategori;
        ImageView img_thumbnail;
        //baru detail
        LinearLayout view_container;


        public MyViewHolder(View itemView) {
            super(itemView);
            //baru detail
            view_container = itemView.findViewById(R.id.container);

            nama = itemView.findViewById(R.id.nama);
            lokasi = itemView.findViewById(R.id.lokasi);
            kategori = itemView.findViewById(R.id.kategori);

            img_thumbnail = itemView.findViewById(R.id.thumbnail);
        }

    }
}
