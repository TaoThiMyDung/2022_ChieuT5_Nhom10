package com.pmbanvexe.Services;

import com.pmbanvexe.dao.KhachHangDao;

public class DvKhachHang {
    public static int themKhachHang(String hoTen, String sdt, String email, String diaChi) {
        return KhachHangDao.themKhachHang(hoTen, sdt, email, diaChi);
    }
}
