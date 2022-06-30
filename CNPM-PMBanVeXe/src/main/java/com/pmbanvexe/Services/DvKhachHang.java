package com.pmbanvexe.Services;

import com.pmbanvexe.beans.KhachHang;
import com.pmbanvexe.dao.KhachHangDao;

public class DvKhachHang {
    public static int themKhachHang(String hoTen, String sdt, String email, String diaChi) {
        return KhachHangDao.themKhachHang(hoTen, sdt, email, diaChi);
    }

    public static KhachHang layKhachHang(String hoTen, String sdt, String email, String diaChi) {
        return KhachHangDao.layKhachHang(hoTen, sdt, email, diaChi);
    }

    public static KhachHang layKhachHang(int maKh) {
        return KhachHangDao.layKhachHang(maKh);
    }
}
