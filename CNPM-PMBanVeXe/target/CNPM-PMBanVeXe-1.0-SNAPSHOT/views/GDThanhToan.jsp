<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                    <a href='<c:url value="/thanh-toan-thanh-cong"/>' class="book-ticket my-hover">Mua Ngay</a>
                </div>

            </div>

        </div>
    </body>
</html>
