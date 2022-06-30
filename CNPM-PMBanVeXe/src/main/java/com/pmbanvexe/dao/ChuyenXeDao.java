package com.pmbanvexe.dao;

import com.pmbanvexe.beans.DiemDung;
import com.pmbanvexe.beans.ThongTinChuyenXe;
import com.pmbanvexe.connect.Connect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ChuyenXeDao {
    public static ThongTinChuyenXe layThongTinChuyenXe(int maChuyenXe) {
        Connection connection = Connect.getInstance().getConnection();
        ThongTinChuyenXe result = null;
        try {
            String query = "CALL thong_tin_chuyen_xe(?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, maChuyenXe);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                result = new ThongTinChuyenXe();
                String diemDi = resultSet.getString("diem_di");
                String diemDen = resultSet.getString("diem_den");
                Timestamp thoiGianDi = resultSet.getTimestamp("thoi_gian_di");
                Timestamp thoiGianDen = resultSet.getTimestamp("thoi_gian_den");
                int quangDuong = resultSet.getInt("quang_duong");
                String tenLoaiXe = resultSet.getString("ten_loai_xe");
                String bienSo = resultSet.getString("bien_so");
                int soGhe = resultSet.getInt("so_ghe");
                int gheTrong = resultSet.getInt("ghe_trong");
                int gia_ve = resultSet.getInt("gia_ve");
                result.setMaChuyenXe(maChuyenXe);
                result.setDiemDi(diemDi);
                result.setDiemDen(diemDen);
                result.setThoiGianDi(thoiGianDi);
                result.setThoiGianDen(thoiGianDen);
                result.setQuangDuong(quangDuong);
                result.setTenLoaiXe(tenLoaiXe);
                result.setBienSo(bienSo);
                result.setSoGhe(soGhe);
                result.setGheTrong(gheTrong);
                result.setGiaVe(gia_ve);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static List<ThongTinChuyenXe> latTatCaChuyenXe() {
        Connection connection = Connect.getInstance().getConnection();
        List<ThongTinChuyenXe> result = new ArrayList<>();
        try {
            String query = "CALL lay_tat_ca_chuyen_xe()";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                ThongTinChuyenXe thongTinChuyenXe = new ThongTinChuyenXe();
                int maChuyenXe = resultSet.getInt("ma_chuyen_xe");
                String diemDi = resultSet.getString("diem_di");
                String diemDen = resultSet.getString("diem_den");
                Timestamp thoiGianDi = resultSet.getTimestamp("thoi_gian_di");
                Timestamp thoiGianDen = resultSet.getTimestamp("thoi_gian_den");
                int quangDuong = resultSet.getInt("quang_duong");
                String tenLoaiXe = resultSet.getString("ten_loai_xe");
                String bienSo = resultSet.getString("bien_so");
                int soGhe = resultSet.getInt("so_ghe");
                int gheTrong = resultSet.getInt("ghe_trong");
                int gia_ve = resultSet.getInt("gia_ve");
                thongTinChuyenXe.setMaChuyenXe(maChuyenXe);
                thongTinChuyenXe.setDiemDi(diemDi);
                thongTinChuyenXe.setDiemDen(diemDen);
                thongTinChuyenXe.setThoiGianDi(thoiGianDi);
                thongTinChuyenXe.setThoiGianDen(thoiGianDen);
                thongTinChuyenXe.setQuangDuong(quangDuong);
                thongTinChuyenXe.setTenLoaiXe(tenLoaiXe);
                thongTinChuyenXe.setBienSo(bienSo);
                thongTinChuyenXe.setSoGhe(soGhe);
                thongTinChuyenXe.setGheTrong(gheTrong);
                thongTinChuyenXe.setGiaVe(gia_ve);
                result.add(thongTinChuyenXe);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static List<String> layTatCaTuyenXeDi() {
        Connection connection = Connect.getInstance().getConnection();
        List<String> result = new ArrayList<>();
        try {
            String query = "SELECT DISTINCT diem_di from TuyenXe";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                result.add(resultSet.getString(1));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static List<DiemDung> layCacDiemDungCuaChuyenXe(int maChuyenXe, String loaiDiemDung) {
        Connection connection = Connect.getInstance().getConnection();
        List<DiemDung> result = new ArrayList<>();
        try {
            String query = "";
            if (loaiDiemDung.equals("diemDon")) {
                query = "select ma_diem_don, ten_diem_don from DiemDon where ma_chuyen_xe = ?";
            } else {
                query = "select ma_diem_tra, ten_diem_tra from DiemTra where ma_chuyen_xe = ?";
            }
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, maChuyenXe);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                DiemDung diemDung = new DiemDung();
                int maDiemDung = 0;
                String tenDiemDung ="";
                if (loaiDiemDung.equals("diemDon")) {
                    maDiemDung = resultSet.getInt("ma_diem_don");
                    tenDiemDung = resultSet.getString("ten_diem_don");
                } else {
                    maDiemDung = resultSet.getInt("ma_diem_tra");
                    tenDiemDung = resultSet.getString("ten_diem_tra");
                }
                diemDung.setMaDiemDung(maDiemDung);
                diemDung.setTenDiemDung(tenDiemDung);
                diemDung.setLoaiDiemDung(loaiDiemDung);
                result.add(diemDung);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
