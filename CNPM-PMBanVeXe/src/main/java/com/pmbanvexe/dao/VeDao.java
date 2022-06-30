package com.pmbanvexe.dao;

import com.pmbanvexe.beans.ThongTinVeXe;
import com.pmbanvexe.connect.Connect;

import java.sql.*;

public class VeDao {
    public static ThongTinVeXe layThongTinChuyenXe(int maChuyenXe, int viTriGhe) {
        Connection connection = Connect.getInstance().getConnection();
        ThongTinVeXe result = null;
        try {
            String query = "CALL thong_tin_ve_xe(?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, maChuyenXe);
            preparedStatement.setInt(2, viTriGhe);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                result = new ThongTinVeXe();
                int maVe = resultSet.getInt("ma_ve");
                String diemDi = resultSet.getString("diem_di");
                String diemDen = resultSet.getString("diem_den");
                String loaiXe = resultSet.getString("ten_loai_xe");
                Timestamp thoiGianDi = resultSet.getTimestamp("thoi_gian_di");
                int gia_ve = resultSet.getInt("gia_ve");
                result.setMaVe(maVe);
                result.setDiemDi(diemDi);
                result.setDiemDen(diemDen);
                result.setTenLoaiXe(loaiXe);
                result.setViTriGhe(viTriGhe);
                result.setThoiGianDi(thoiGianDi);
                result.setGiaVe(gia_ve);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    public static int datVe(int maVe, int maKh, int maDiemDon, int maDiemTra) {
        Connection connection = Connect.getInstance().getConnection();
        int result = -1;
        try {
            String query = "INSERT INTO DatVe(ma_ve, ma_kh, ma_diem_don, ma_diem_tra) VALUES (?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, maVe);
            preparedStatement.setInt(2, maKh);
            preparedStatement.setInt(3, maDiemDon);
            preparedStatement.setInt(4, maDiemTra);
            result = preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    public static String layCacVeDaDat(int maChuyenXe) {
        Connection connection = Connect.getInstance().getConnection();
        String result = "";
        try {
            String query = "SELECT v.vi_tri_ghe from datve as dv, ve as v where dv.ma_ve = v.ma_ve and v.ma_chuyen_xe = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, maChuyenXe);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
               result += resultSet.getString(1) +",";
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}