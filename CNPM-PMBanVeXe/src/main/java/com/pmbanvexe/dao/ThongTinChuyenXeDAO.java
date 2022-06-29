package com.pmbanvexe.dao;

import com.pmbanvexe.beans.chuyenxe;
import com.pmbanvexe.beans.tuyenDuong;
import com.pmbanvexe.beans.ve;
import connect.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ThongTinChuyenXeDAO {
    private static ThongTinChuyenXeDAO instance;

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private ThongTinChuyenXeDAO() {

    }
    public static ThongTinChuyenXeDAO getInstance() {
        if (instance == null) {
            instance = new ThongTinChuyenXeDAO();
        }
        return instance;
    }
    public List<ve> getVe() {
        try {
            List<ve> listVe = new ArrayList<>();
            String query ="select ma_ve from datve";
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                ve v = new ve(rs.getInt(1));
                listVe.add(v);

            }
            return listVe;
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<chuyenxe> getThongTinChuyen() {
        try {
            List<chuyenxe> chuyenxe = new ArrayList<>();
            String query ="SELECT DISTINCT diemdon.ten_diem_don, diemtra.ten_diem_tra\n" +
                    "FROM ((datve\n" +
                    "INNER JOIN diemdon ON datve.ma_diem_don = diemdon.ma_diem_don)\n" +
                    "INNER JOIN diemtra ON datve.ma_diem_tra = diemtra.ma_diem_tra)";
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                chuyenxe c = new chuyenxe(rs.getString(1),rs.getString(2));
                chuyenxe.add(c);

            }
            return chuyenxe;
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<tuyenDuong> getTuyen() {
        try {
            List<tuyenDuong> tuyenDuong = new ArrayList<>();
            String query ="SELECT chuyenxe.thoi_gian_di,chuyenxe.thoi_gian_den,tuyenxe.ten_tuyen_xe FROM chuyenxe INNER JOIN tuyenxe ON chuyenxe.ma_tuyen_xe = tuyenxe.ma_tuyen_xe limit 1";
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                tuyenDuong c = new tuyenDuong(rs.getString(1),rs.getString(2),rs.getString(3));
                tuyenDuong.add(c);

            }
            return tuyenDuong;
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static void main(String[] args) {
        ThongTinChuyenXeDAO t = new ThongTinChuyenXeDAO();
//        System.out.println(t.getVe());
//        System.out.println(t.getThongTinChuyen());
        System.out.println(t.getTuyen());
    }
}
