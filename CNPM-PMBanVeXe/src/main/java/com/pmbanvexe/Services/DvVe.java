package com.pmbanvexe.Services;

import com.pmbanvexe.beans.ThongTinVeXe;
import com.pmbanvexe.dao.VeDao;

import java.util.ArrayList;
import java.util.List;

public class DvVe {
    public static List<ThongTinVeXe> layThongTinVeXe(int maChuyenXe, int... viTriGhe) {
        List<ThongTinVeXe> dsVeXe = new ArrayList<>();
        for (Integer i : viTriGhe) {
            dsVeXe.add(VeDao.layThongTinChuyenXe(maChuyenXe, i));
        }
        return dsVeXe;
    }

    public static int datVe(int maVe, int maKh, int maDiemDon, int maDiemTra) {
        return VeDao.datVe(maVe, maKh, maDiemDon, maDiemTra);
    }

    public static String layCacVeDaDat(int maChuyenXe) {
        return VeDao.layCacVeDaDat(maChuyenXe);
    }
}
