package com.pmbanvexe.controller;

import com.pmbanvexe.beans.the;
import com.pmbanvexe.dao.TheDAO;

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
        RequestDispatcher rd = request.getRequestDispatcher("/views/GDThanhToan.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String sothe = request.getParameter("SoThe").trim();
        String date = request.getParameter("Date").trim();
        String cvv = request.getParameter("CVV").trim();

        List<the> t = TheDAO.getInstance().checkCard(sothe,date,cvv);
        int check = t.size();
        request.setAttribute("check",check);
        doGet(request, response);
    }
}
