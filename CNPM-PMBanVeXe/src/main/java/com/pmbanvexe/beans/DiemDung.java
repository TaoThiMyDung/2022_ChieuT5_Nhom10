package com.pmbanvexe.beans;

import java.io.Serializable;
import java.sql.Timestamp;

public class DiemDung implements Serializable {
    private static final long serialVersionUID = 1L;
    private int maDiemDung;
    private String tenDiemDung;
    private String loaiDiemDung;

    public int getMaDiemDung() {
        return maDiemDung;
    }

    public void setMaDiemDung(int maDiemDung) {
        this.maDiemDung = maDiemDung;
    }

    public String getTenDiemDung() {
        return tenDiemDung;
    }

    public void setTenDiemDung(String tenDiemDung) {
        this.tenDiemDung = tenDiemDung;
    }

    public String getLoaiDiemDung() {
        return loaiDiemDung;
    }

    public void setLoaiDiemDung(String loaiDiemDung) {
        this.loaiDiemDung = loaiDiemDung;
    }
}
