package com.pmbanvexe.controller;

import com.pmbanvexe.beans.*;
import com.pmbanvexe.dao.ThanhToanDAO;
import com.pmbanvexe.dao.ThongTinChuyenXeDAO;
import com.pmbanvexe.dao.ThongTinKhachHangDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ThanhToanThanhCong", value = "/thanh-toan-thanh-cong")
public class CtrlThanhToanThanhCong extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("custId");
        int tien = Integer.parseInt(request.getParameter("tien"));
        String ve_mua = request.getParameter("ve_da_mua");
        String ten = request.getParameter("ten");
        thanhtoan t = ThanhToanDAO.getInstance().addItem(id,tien,ve_mua,ten);
        List<ve> listVe = ThongTinChuyenXeDAO.getInstance().getVe();
        int count = listVe.size();

        for (int i = 0 ; i< count;i++) {

            chitietHD ct = ThanhToanDAO.getInstance().addHD(id, String.valueOf(listVe.get(i)));
        }






        RequestDispatcher rd = request.getRequestDispatcher("/views/GDThanhToanThanhCong.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        doGet(request, response);
    }
}
