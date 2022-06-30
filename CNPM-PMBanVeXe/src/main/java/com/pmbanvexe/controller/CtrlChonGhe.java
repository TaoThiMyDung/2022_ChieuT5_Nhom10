package com.pmbanvexe.controller;

import com.pmbanvexe.Services.DvVe;
import com.pmbanvexe.Services.DvXe;
import com.pmbanvexe.beans.ThongTinChuyenXe;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChonCho", value = "/chon-cho-ngoi")
public class CtrlChonGhe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maChuyenXe = Integer.parseInt(request.getParameter("maChuyenXe"));
        ThongTinChuyenXe thongTinChuyenXe = DvXe.layThongTinChuyenXe(maChuyenXe);
        String cacVeDaDuocDat = DvVe.layCacVeDaDat(maChuyenXe);
        request.setAttribute("cacVeDaDuocDat", cacVeDaDuocDat);
        request.setAttribute("thongTinChuyenXe", thongTinChuyenXe);

        RequestDispatcher rd = request.getRequestDispatcher("/views/GDChonGhe.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
