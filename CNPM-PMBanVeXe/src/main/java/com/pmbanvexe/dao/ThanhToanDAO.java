package com.pmbanvexe.dao;

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
    public thanhtoan addItem(String id, String ten, String sdt, String gmail, String diachi,String tien) {
        String query ="insert into thanh_toan value (?,?,?,?,?,?)";
        try {
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            ps.setString(2,ten);
            ps.setString(3,sdt);
            ps.setString(4,gmail);
            ps.setString(5,diachi);
            ps.setString(6,tien);
            ps.executeUpdate();

        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        ThanhToanDAO t = new ThanhToanDAO();
        t.addItem("191301314","Nguyễn Hoàng Mingss","0396933284","hoangminh@gmail.com","dak lak1","12000");
    }

}
