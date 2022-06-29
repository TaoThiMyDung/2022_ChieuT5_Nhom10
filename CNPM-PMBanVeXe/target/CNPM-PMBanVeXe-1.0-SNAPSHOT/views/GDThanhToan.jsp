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
                <input type="hidden" id="tien" name="tien" value="${SLVe*80000}">
                <input type="hidden" id="ve_da_mua" name="ve_da_mua" value="<c:forEach var="listVe" items="${listVe}">
    ${listVe.ma_ve}
</c:forEach>">
                <input type="hidden" id="ten" name="ten" value="  <c:forEach var="list" items="${list}">${list.ho_ten}</c:forEach>">


                <button type="submit" value="submit" class="book-ticket my-hover">Mua ngay</button>
            </form>

        </div>

    </div>

</div>
</body>
</html>
