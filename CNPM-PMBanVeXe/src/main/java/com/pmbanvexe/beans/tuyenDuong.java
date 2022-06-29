package com.pmbanvexe.beans;

public class tuyenDuong {
    String time_di,time_den,tuyen_duong;

    public tuyenDuong(String time_di, String time_den, String tuyen_duong) {
        this.time_di = time_di;
        this.time_den = time_den;
        this.tuyen_duong = tuyen_duong;
    }

    public String getTime_di() {
        return time_di;
    }

    public void setTime_di(String time_di) {
        this.time_di = time_di;
    }

    public String getTime_den() {
        return time_den;
    }

    public void setTime_den(String time_den) {
        this.time_den = time_den;
    }

    public String gettuyen_duong() {
        return tuyen_duong;
    }

    public void settuyen_duong(String tuyen_duong) {
        this.tuyen_duong = tuyen_duong;
    }

    @Override
    public String toString() {
        return "tuyenDuong{" +
                "time_di='" + time_di + '\'' +
                ", time_den='" + time_den + '\'' +
                ", tuyen_duong='" + tuyen_duong + '\'' +
                '}';
    }
}
