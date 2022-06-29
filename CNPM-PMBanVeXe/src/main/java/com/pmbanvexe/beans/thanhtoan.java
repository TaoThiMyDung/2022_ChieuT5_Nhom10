package com.pmbanvexe.beans;

import java.io.Serializable;

public class thanhtoan implements Serializable {
    private static final long serialVersionUID = 1L;
    String ma_hoa_don,ma_ve_da_mua,ten_KH;
    int tong_tien;

    public thanhtoan(String ma_hoa_don, String ma_ve_da_mua, String ten_KH, int tong_tien) {
        this.ma_hoa_don = ma_hoa_don;
        this.ma_ve_da_mua = ma_ve_da_mua;
        this.ten_KH = ten_KH;
        this.tong_tien = tong_tien;
    }

    public String getMa_hoa_don() {
        return ma_hoa_don;
    }

    public void setMa_hoa_don(String ma_hoa_don) {
        this.ma_hoa_don = ma_hoa_don;
    }

    public String getMa_ve_da_mua() {
        return ma_ve_da_mua;
    }

    public void setMa_ve_da_mua(String ma_ve_da_mua) {
        this.ma_ve_da_mua = ma_ve_da_mua;
    }

    public String getTen_KH() {
        return ten_KH;
    }

    public void setTen_KH(String ten_KH) {
        this.ten_KH = ten_KH;
    }

    public int getTong_tien() {
        return tong_tien;
    }

    public void setTong_tien(int tong_tien) {
        this.tong_tien = tong_tien;
    }

    @Override
    public String toString() {
        return "thanhtoan{" +
                "ma_hoa_don='" + ma_hoa_don + '\'' +
                ", ma_ve_da_mua='" + ma_ve_da_mua + '\'' +
                ", ten_KH='" + ten_KH + '\'' +
                ", tong_tien=" + tong_tien +
                '}';
    }
}
