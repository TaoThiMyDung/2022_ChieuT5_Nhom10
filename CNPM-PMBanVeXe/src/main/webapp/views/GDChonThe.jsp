<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>Thanh toán</title>
</head>
<body>
<div id="content">
    <div id="ticket-diagram-gh-16">
        <div class="left">
            <div class="ticket-diagram">
                <h1>Chọn thẻ thanh toán</h1>

                <div class="chooseCard">

                    <form action="nhap-the" method="post" id="myForm">

                        <input type="hidden" id="ten" name="ten" value="<%= request.getParameter("ten")%>">
                        <input type="hidden" id="sdt" name="sdt" value=" <%= request.getParameter("sdt")%>">
                        <input type="hidden" id="gmail" name="gmail" value="<%= request.getParameter("gmail")%>">
                        <input type="hidden" id="diachi" name="diachi" value="<%= request.getParameter("diachi")%>">

                    </form>
                    <button type="submit" form="myForm" value="submit" style="font-size: 30px ">VISA</button>
                    <button type="submit" form="myForm" value="submit" style="font-size: 30px">MasterCard</button>
                    <button type="submit" form="myForm" value="submit" style="font-size: 30px">Credit</button>

                </div>
                <div class="choose-diagram">Vui lòng chọn loại thẻ để thanh toán.</div>
            </div>
        </div>
        <div class="right">
            <div class="note">
                <h1>Lưu ý</h1>
                <div class="note-list">
                    <p>Vui lòng chọn đúng thẻ thanh toán!</p>
                </div>
            </div>
            <a href='<c:url value="/thong-tin-mua-ve"/>' class="book-ticket my-hover">Quay Về</a>
        </div>
    </div>
</div>
<div id="notification-background">
    <div class="notification">
        <h1>Không thể chọn quá 5 chổ</h1>
        <div class="ok my-hover ">OK</div>
    </div>
</div>
</body>
</html>
