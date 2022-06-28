package com.pmbanvexe.beans;

import java.io.Serializable;

public class the implements Serializable {
    private static final long serialVersionUID = 1L;
    String so_the,date,cvv;

    public the(String so_the, String date, String cvv) {
        this.so_the = so_the;
        this.date = date;
        this.cvv = cvv;
    }

    public String getSo_the() {
        return so_the;
    }

    public void setSo_the(String so_the) {
        this.so_the = so_the;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    @Override
    public String toString() {
        return "the{" +
                "so_the='" + so_the + '\'' +
                ", date='" + date + '\'' +
                ", cvv='" + cvv + '\'' +
                '}';
    }
}
