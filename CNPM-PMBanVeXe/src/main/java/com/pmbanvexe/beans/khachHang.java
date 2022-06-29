package com.pmbanvexe.beans;

public class khachHang {
    int ma_kh;
    String ho_ten,sdt,email,dia_chi;

    public khachHang(int ma_kh, String ho_ten, String sdt, String email, String dia_chi) {
        this.ma_kh = ma_kh;
        this.ho_ten = ho_ten;
        this.sdt = sdt;
        this.email = email;
        this.dia_chi = dia_chi;
    }

    public int getMa_kh() {
        return ma_kh;
    }

    public void setMa_kh(int ma_kh) {
        this.ma_kh = ma_kh;
    }

    public String getHo_ten() {
        return ho_ten;
    }

    public void setHo_ten(String ho_ten) {
        this.ho_ten = ho_ten;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDia_chi() {
        return dia_chi;
    }

    public void setDia_chi(String dia_chi) {
        this.dia_chi = dia_chi;
    }

    @Override
    public String toString() {
        return "khachHang{" +
                "ma_kh=" + ma_kh +
                ", ho_ten='" + ho_ten + '\'' +
                ", sdt='" + sdt + '\'' +
                ", Email='" + email + '\'' +
                ", dia_chi='" + dia_chi + '\'' +
                '}';
    }
}
