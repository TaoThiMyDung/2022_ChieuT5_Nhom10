package com.pmbanvexe.controller;

import com.pmbanvexe.beans.chuyenxe;
import com.pmbanvexe.beans.khachHang;
import com.pmbanvexe.beans.tuyenDuong;
import com.pmbanvexe.beans.ve;
import com.pmbanvexe.dao.ThongTinChuyenXeDAO;
import com.pmbanvexe.dao.ThongTinKhachHangDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ThongTinMuaVe", value = "/thong-tin-mua-ve")
public class CtrlThongTinMuaVe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        RequestDispatcher rd = request.getRequestDispatcher("/views/GDThongTinMuaVe.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }
}
