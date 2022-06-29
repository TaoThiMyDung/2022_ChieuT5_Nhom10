package com.pmbanvexe.beans;

public class chuyenxe {
    String diem_don,diem_tra;

    public chuyenxe(String diem_don, String diem_tra) {
        this.diem_don = diem_don;
        this.diem_tra = diem_tra;
    }

    public String getDiem_don() {
        return diem_don;
    }

    public void setDiem_don(String diem_don) {
        this.diem_don = diem_don;
    }

    public String getDiem_tra() {
        return diem_tra;
    }

    public void setDiem_tra(String diem_tra) {
        this.diem_tra = diem_tra;
    }

    @Override
    public String toString() {
        return "chuyenxe{" +
                "diem_don='" + diem_don + '\'' +
                ", diem_tra='" + diem_tra + '\'' +
                '}';
    }
}
