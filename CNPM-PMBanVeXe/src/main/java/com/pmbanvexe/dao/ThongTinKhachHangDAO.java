package com.pmbanvexe.dao;

import com.pmbanvexe.beans.khachHang;
import connect.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ThongTinKhachHangDAO {

    private static ThongTinKhachHangDAO instance;

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private ThongTinKhachHangDAO() {

    }
    public static ThongTinKhachHangDAO getInstance() {
        if (instance == null) {
            instance = new ThongTinKhachHangDAO();
        }
        return instance;
    }
    public List<khachHang> getInfo() {
        try {
            List<khachHang> list = new ArrayList<>();
            String query ="select * from khachhang order by ma_kh desc limit 1";
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                khachHang k = new khachHang(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
                list.add(k);
            }
            return list;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        ThongTinKhachHangDAO k = new ThongTinKhachHangDAO();
        System.out.println(k.getInfo());
    }

}
