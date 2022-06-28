package com.pmbanvexe.beans;

import java.io.Serializable;

public class thanhtoan implements Serializable {
    private static final long serialVersionUID = 1L;
    String id,ten,sdt,gmail,diachi,tien;

    public thanhtoan(String id, String ten, String sdt, String gmail, String diachi, String tien) {
        this.id = id;
        this.ten = ten;
        this.sdt = sdt;
        this.gmail = gmail;
        this.diachi = diachi;
        this.tien = tien;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getTien() {
        return tien;
    }

    public void setTien(String tien) {
        this.tien = tien;
    }

    @Override
    public String toString() {
        return "thanhtoan{" +
                "id='" + id + '\'' +
                ", ten='" + ten + '\'' +
                ", sdt='" + sdt + '\'' +
                ", gmail='" + gmail + '\'' +
                ", diachi='" + diachi + '\'' +
                ", tien='" + tien + '\'' +
                '}';
    }
}
