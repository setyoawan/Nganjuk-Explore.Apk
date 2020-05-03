package com.example.SetyoAwanNganjukExplore.model;

public class ModelReligi {

    private int id;
    private String nama ;
    private String isi;
    private String lokasi ;
    private String gambar;
    private String kategori;

    public ModelReligi() {
    }

    public ModelReligi(int id, String nama, String isi, String lokasi, String gambar, String kategori) {
        this.id = id;
        this.nama = nama;
        this.isi = isi;
        this.lokasi = lokasi;
        this.gambar = gambar;
        this.kategori = kategori;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getIsi() {
        return isi;
    }

    public void setIsi(String isi) {
        this.isi = isi;
    }

    public String getLokasi() {
        return lokasi;
    }

    public void setLokasi(String lokasi) {
        this.lokasi = lokasi;
    }

    public String getGambar() {
        return gambar;
    }

    public void setGambar(String gambar) {
        this.gambar = gambar;
    }

    public String getKategori() {
        return kategori;
    }

    public void setKategori(String kategori) {
        this.kategori = kategori;
    }
}
