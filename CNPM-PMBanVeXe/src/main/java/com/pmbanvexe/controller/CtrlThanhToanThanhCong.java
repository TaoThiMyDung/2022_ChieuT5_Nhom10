package com.pmbanvexe.controller;

import com.pmbanvexe.beans.thanhtoan;
import com.pmbanvexe.dao.ThanhToanDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ThanhToanThanhCong", value = "/thanh-toan-thanh-cong")
public class CtrlThanhToanThanhCong extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/GDThanhToanThanhCong.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("custId").trim();
        String ten = request.getParameter("ten").trim();
        String sdt = request.getParameter("sdt").trim();
        String gmail = request.getParameter("gmail").trim();
        String diachi = request.getParameter("diachi").trim();
        String tien = request.getParameter("tien").trim();

        thanhtoan t = ThanhToanDAO.getInstance().addItem(id,ten,sdt,gmail,diachi,tien);


        doGet(request, response);
    }
}
