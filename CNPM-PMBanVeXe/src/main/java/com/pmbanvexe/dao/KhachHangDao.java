package com.pmbanvexe.dao;

import com.pmbanvexe.beans.DiemDung;
import com.pmbanvexe.beans.KhachHang;
import connect.Connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class KhachHangDao {
    public static int themKhachHang(String hoTen, String sdt, String email, String diaChi) {
        Connection connection = Connect.getInstance().getConnection();
        try {
            String query = "Call themKhachHang(?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, hoTen);
            preparedStatement.setString(2, sdt);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, diaChi);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return resultSet.getInt(1);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
    public static KhachHang layKhachHang(String hoTen, String sdt, String email, String diaChi) {
        Connection connection = Connect.getInstance().getConnection();
        KhachHang khachHang = null;
        try {
            String query = "SELECT * from khachhang where ho_ten = ? and sdt = ? and email = ? and dia_chi = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, hoTen);
            preparedStatement.setString(2, sdt);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, diaChi);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                khachHang = new KhachHang();
                khachHang.setMaKh(resultSet.getInt("ma_kh"));
                khachHang.setHoTen(resultSet.getString("ho_ten"));
                khachHang.setSdt(resultSet.getString("sdt"));
                khachHang.setEmail(resultSet.getString("email"));
                khachHang.setDiaChi(resultSet.getString("dia_chi"));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return khachHang;
    }
    public static KhachHang layKhachHang(int maKh) {
        Connection connection = Connect.getInstance().getConnection();
        KhachHang khachHang = null;
        try {
            String query = "SELECT * from khachhang where ma_kh = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, maKh);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                khachHang = new KhachHang();
                khachHang.setMaKh(resultSet.getInt("ma_kh"));
                khachHang.setHoTen(resultSet.getString("ho_ten"));
                khachHang.setSdt(resultSet.getString("sdt"));
                khachHang.setEmail(resultSet.getString("email"));
                khachHang.setDiaChi(resultSet.getString("dia_chi"));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return khachHang;
    }
}
