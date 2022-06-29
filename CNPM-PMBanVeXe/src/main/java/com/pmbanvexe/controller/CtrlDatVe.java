package com.pmbanvexe.controller;

import com.pmbanvexe.Services.DvKhachHang;
import com.pmbanvexe.Services.DvVe;
import com.pmbanvexe.Services.DvXe;
import com.pmbanvexe.beans.DiemDung;
import com.pmbanvexe.beans.ThongTinVeXe;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DatVe", value = "/dat-ve")
public class CtrlDatVe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maChuyenXe = Integer.parseInt(request.getParameter("ma-chuyen-xe"));
        String dsViTri[] = request.getParameter("danh-sach-ve").split(",");
        int dsViTritoInt[] = new int[dsViTri.length];
        String dsMaVe = "";
        for (int i = 0; i < dsViTri.length; i++) {
            dsViTritoInt[i] = Integer.parseInt(dsViTri[i]);
        }
        List<ThongTinVeXe> dsVe = DvVe.layThongTinVeXe(maChuyenXe, dsViTritoInt);
        int tongGiaVe = 0;
        for (ThongTinVeXe ve : dsVe) {
            tongGiaVe += ve.getGiaVe();
            dsMaVe += ve.getMaVe() +",";
        }
        List<DiemDung> cacDiemDon = DvXe.layCacDiemDungCuaChuyenXe(maChuyenXe, "diemDon");
        List<DiemDung> cacDiemTra = DvXe.layCacDiemDungCuaChuyenXe(maChuyenXe, "diemTra");
        request.setAttribute("dsMaVe", dsMaVe);
        request.setAttribute("maChuyenXe", maChuyenXe);
        request.setAttribute("dsVe", dsVe);
        request.setAttribute("tongGiaVe", tongGiaVe);
        request.setAttribute("cacDiemDon", cacDiemDon);
        request.setAttribute("cacDiemTra", cacDiemTra);
        RequestDispatcher rd = request.getRequestDispatcher("/views/GDDatVe.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dsMaVeString[] = request.getParameter("dsMaVe").split(",");
        int dsMaVeInt[] = new int[dsMaVeString.length];
        for (int i = 0; i < dsMaVeString.length; i++) {
            dsMaVeInt[i] = Integer.parseInt(dsMaVeString[i].trim());
        }
        String hoTen = request.getParameter("hoTen");
        String sdt = request.getParameter("Sodt");
        String email = request.getParameter("gmail");
        String diaChi = request.getParameter("DiaChi");
        int maDiemDon = Integer.parseInt(request.getParameter("diem-don"));
        int maDiemTra = Integer.parseInt(request.getParameter("diem-tra"));

        int maKh = DvKhachHang.themKhachHang(hoTen, sdt, email, diaChi);
        for(Integer i: dsMaVeInt) {
            DvVe.datVe(i, maKh, maDiemDon, maDiemTra);
        }
        response.sendRedirect("thong-tin-mua-ve");
    }
}
