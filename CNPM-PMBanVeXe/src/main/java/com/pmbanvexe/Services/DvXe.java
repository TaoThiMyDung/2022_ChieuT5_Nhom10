package com.pmbanvexe.Services;

import com.pmbanvexe.beans.DiemDung;
import com.pmbanvexe.beans.ThongTinChuyenXe;
import com.pmbanvexe.dao.ChuyenXeDao;

import java.util.List;

public class DvXe {
    public static ThongTinChuyenXe layThongTinChuyenXe(int maChuyenXe) {
        return ChuyenXeDao.layThongTinChuyenXe(maChuyenXe);
    }
    public static List<DiemDung> layCacDiemDungCuaChuyenXe(int maChuyenXe, String loaiDiemDung) {
        return ChuyenXeDao.layCacDiemDungCuaChuyenXe(maChuyenXe, loaiDiemDung);
    }
    public static List<String> layTatCaTuyenXeDi() {
        return  ChuyenXeDao.layTatCaTuyenXeDi();
    }
    public static List<ThongTinChuyenXe> layTatCaChuyenXe() {
        return  ChuyenXeDao.latTatCaChuyenXe();
    }
}
