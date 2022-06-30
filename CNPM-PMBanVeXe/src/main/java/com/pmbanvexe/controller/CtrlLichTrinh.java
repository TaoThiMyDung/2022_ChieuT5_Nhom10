package com.pmbanvexe.controller;

import com.pmbanvexe.Services.DvXe;
import com.pmbanvexe.beans.ThongTinChuyenXe;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LichTrinh", value = "/lich-trinh")
public class CtrlLichTrinh extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> tatCaChuyenXeDi = DvXe.layTatCaTuyenXeDi();
        List<ThongTinChuyenXe> tatCaChuyenXe = DvXe.layTatCaChuyenXe();

        request.setAttribute("tatCaChuyenXeDi", tatCaChuyenXeDi);
        request.setAttribute("tatCaChuyenXe", tatCaChuyenXe);
        RequestDispatcher rd = request.getRequestDispatcher("/views/GDLichTrinh.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
