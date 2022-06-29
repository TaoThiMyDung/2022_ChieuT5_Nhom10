package com.pmbanvexe.dao;

import com.pmbanvexe.beans.chitietHD;
import com.pmbanvexe.beans.thanhtoan;
import connect.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ThanhToanDAO {
    private static ThanhToanDAO instance;

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private ThanhToanDAO() {

    }
    public static ThanhToanDAO getInstance() {
        if (instance == null) {
            instance = new ThanhToanDAO();
        }
        return instance;
    }
    public thanhtoan addItem(String ma_hoa_don, int tong_tien, String ma_ve_da_mua,String ten_KH) {
        String query ="insert into hoadon value (?,?,?,?)";
        try {
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,ma_hoa_don);
            ps.setInt(2,tong_tien);
            ps.setString(3,ma_ve_da_mua);
            ps.setString(4,ten_KH);
            ps.executeUpdate();

        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public chitietHD addHD(String ma_hd, String ma_ve) {
        String query ="insert into cthd value (?,?)";
        try {
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,ma_hd);
            ps.setString(2,ma_ve);
            ps.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        ThanhToanDAO t = new ThanhToanDAO();
//       t.addItem("123123",12111,"ve01_ve02","minhhhh");
       t.addHD("minh","qưe2w");
    }

}