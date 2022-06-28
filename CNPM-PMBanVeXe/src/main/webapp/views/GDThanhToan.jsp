
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Random" %>


<html>
    <head>
        <title>Thanh toán</title>
    </head>
    <body>

        <div id="content">
            <div id="ticket-diagram-gh-16">
                <div class="left">
                    <div class="ticket-diagram">
                        <h1>Xác thực thanh toán</h1>
                        <div class="verification">
                            <p>Người gửi: Nguyễn Hoàng Minh</p>
                            <p>Người nhận: Nhà xe Vé Xe Giả</p>
                            <p>Số tiền: 80.000 đ</p>
                            <p>Nội dung: Thanh toán tiền mua vé xe</p>
                        </div>
                        <div class="choose-diagram">Thanh toán: 80.000 đ.</div>
                    </div>
                </div>
                <div class="right">
                    <div class="note">
                        <h1>Lưu ý</h1>
                        <div class="note-list">
                            <p>Vui lòng thanh toán số tiền trên trong vòng 5 phút để mua vé!</p>
                        </div>
                    </div>
                    <a href='<c:url value="/nhap-the"/>' class="book-ticket my-hover">Quay Về</a>
                    <form action="thanh-toan-thanh-cong" method="post">
                        <%
                            Random rand = new Random();
                            int n = rand.nextInt(90000000) + 10000000;
                        %>
                        <input type="hidden" id="custId" name="custId" value="<%=n%>">
                        <input type="hidden" id="ten" name="ten" value="<%= request.getParameter("ten")%>">
                        <input type="hidden" id="sdt" name="sdt" value="<%= request.getParameter("sdt")%>">
                        <input type="hidden" id="gmail" name="gmail" value="<%= request.getParameter("gmail")%>">
                        <input type="hidden" id="diachi" name="diachi" value="<%= request.getParameter("diachi")%>">
                        <input type="hidden" id="tien" name="tien" value="80000">


                        <button type="submit" value="submit" class="book-ticket my-hover">Mua ngay</button>
                    </form>

                </div>

            </div>

        </div>
    </body>
</html>
