package com.pmbanvexe.beans;

import java.io.Serializable;
import java.sql.Timestamp;

public class ThongTinVeXe implements Serializable {
    private static final long serialVersionUID = 1L;
    private String diemDi, diemDen, tenLoaiXe, bienSo;
    private int maVe, viTriGhe, giaVe;
    private Timestamp thoiGianDi;

    public int getMaVe() {
        return maVe;
    }

    public void setMaVe(int maVe) {
        this.maVe = maVe;
    }

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

    public int getViTriGhe() {
        return viTriGhe;
    }

    public void setViTriGhe(int viTriGhe) {
        this.viTriGhe = viTriGhe;
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
}
