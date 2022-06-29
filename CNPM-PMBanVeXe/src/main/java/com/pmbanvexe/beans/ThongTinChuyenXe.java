package com.pmbanvexe.beans;

import java.io.Serializable;
import java.sql.Timestamp;

public class ThongTinChuyenXe implements Serializable {
    private static final long serialVersionUID = 1L;
    private String diemDi, diemDen, tenLoaiXe, bienSo;
    private int maChuyenXe, soGhe, gheTrong, giaVe, quangDuong;
    private Timestamp thoiGianDi, thoiGianDen;

    public String getDiemDi() {
        return diemDi;
    }

    public void setDiemDi(String diemDi) {
        this.diemDi = diemDi;
    }

    public String getDiemDen() {
        return diemDen;
    }

    public void setDiemDen(String diemDen) {
        this.diemDen = diemDen;
    }

    public String getTenLoaiXe() {
        return tenLoaiXe;
    }

    public void setTenLoaiXe(String tenLoaiXe) {
        this.tenLoaiXe = tenLoaiXe;
    }

    public String getBienSo() {
        return bienSo;
    }

    public void setBienSo(String bienSo) {
        this.bienSo = bienSo;
    }

    public int getSoGhe() {
        return soGhe;
    }

    public void setSoGhe(int soGhe) {
        this.soGhe = soGhe;
    }

    public int getGheTrong() {
        return gheTrong;
    }

    public void setGheTrong(int gheTrong) {
        this.gheTrong = gheTrong;
    }

    public int getGiaVe() {
        return giaVe;
    }

    public void setGiaVe(int giaVe) {
        this.giaVe = giaVe;
    }

    public Timestamp getThoiGianDi() {
        return thoiGianDi;
    }

    public void setThoiGianDi(Timestamp thoiGianDi) {
        this.thoiGianDi = thoiGianDi;
    }

    public Timestamp getThoiGianDen() {
        return thoiGianDen;
    }

    public void setThoiGianDen(Timestamp thoiGianDen) {
        this.thoiGianDen = thoiGianDen;
    }

    public int getQuangDuong() {
        return quangDuong;
    }

    public void setQuangDuong(int quangDuong) {
        this.quangDuong = quangDuong;
    }

    public int getMaChuyenXe() {
        return maChuyenXe;
    }

    public void setMaChuyenXe(int maChuyenXe) {
        this.maChuyenXe = maChuyenXe;
    }
}
