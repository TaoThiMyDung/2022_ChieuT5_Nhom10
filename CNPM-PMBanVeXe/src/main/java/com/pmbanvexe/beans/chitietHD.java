package com.pmbanvexe.beans;

public class chitietHD {
    String ma_hd,ma_ve;

    public chitietHD(String ma_hd, String ma_ve) {
        this.ma_hd = ma_hd;
        this.ma_ve = ma_ve;
    }

    public String getMa_hd() {
        return ma_hd;
    }

    public void setMa_hd(String ma_hd) {
        this.ma_hd = ma_hd;
    }

    public String getMa_ve() {
        return ma_ve;
    }

    public void setMa_ve(String ma_ve) {
        this.ma_ve = ma_ve;
    }

    @Override
    public String toString() {
        return "chitietHD{" +
                "ma_hd='" + ma_hd + '\'' +
                ", ma_ve='" + ma_ve + '\'' +
                '}';
    }
}
