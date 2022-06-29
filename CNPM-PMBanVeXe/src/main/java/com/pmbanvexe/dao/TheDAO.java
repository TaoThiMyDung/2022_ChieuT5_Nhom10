package com.pmbanvexe.dao;

import com.pmbanvexe.beans.the;
import connect.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TheDAO {
    private static TheDAO instance;

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private TheDAO() {

    }
    public static TheDAO getInstance() {
        if (instance == null) {
            instance = new TheDAO();
        }
        return instance;
    }
    public List<the> checkCard(String so_the, String date, String cvv) {
        List<the> list = new ArrayList<>();
        String query = "Select * from the where so_the = ? and date = ? and cvv = ?";
        try {
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,so_the);
            ps.setString(2,date);
            ps.setString(3,cvv);

            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new the(rs.getString(1),rs.getString(2),rs.getString(3)));
            }
        }
        catch (Exception e ){
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        TheDAO t = new TheDAO();
        System.out.println(t.checkCard("112233","05/2025","123").size());
    }
}