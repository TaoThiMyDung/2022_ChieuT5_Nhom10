package com.pmbanvexe.controller;

import com.pmbanvexe.beans.*;
import com.pmbanvexe.dao.TheDAO;
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

@WebServlet(name = "ThanhToan", value = "/thanh-toan")
public class CtrlThanhToan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");

        List<khachHang> list = ThongTinKhachHangDAO.getInstance().getInfo();
        List<ve> listVe = ThongTinChuyenXeDAO.getInstance().getVe();
        List<chuyenxe> listChuyenXe = ThongTinChuyenXeDAO.getInstance().getThongTinChuyen();
        List<tuyenDuong> listTuyenDuong = ThongTinChuyenXeDAO.getInstance().getTuyen();

        int SLVe = listVe.size();
        request.setAttribute("list",list);
        request.setAttribute("listVe",listVe);
        request.setAttribute("SLVe",SLVe);
        request.setAttribute("listChuyenXe",listChuyenXe);
        request.setAttribute("listTuyenDuong",listTuyenDuong);
        RequestDispatcher rd = request.getRequestDispatcher("/views/GDThanhToan.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        doGet(request, response);
    }
}
