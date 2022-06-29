<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
  response.setCharacterEncoding("UTF-8");

%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
  <title>Thông tin mua vé</title>
</head>
<body>
<div id="content">

  <div id="ticket-diagram-gh-16">
    <div class="left">
      <div class="ticket-diagram">
        <h1>Thông tin mua vé</h1>
        <div class="infoUser">
          <h3>Thông tin khách hàng </h3>

            <c:forEach var="list" items="${list}">
              <p>Họ và tên: ${list.ho_ten}</p>
              <p>Số điện thoại: ${list.sdt}</p>
              <p>Gmail: ${list.email}</p>
              <p>Địa chỉ: ${list.dia_chi}</p>
            </c:forEach>
  </p>

          <h3>Thông tin chuyến</h3>
<c:forEach var="listTuyenDuong" items="${listTuyenDuong}">
          <p>Tuyến xe: ${listTuyenDuong.tuyen_duong}</p>
          <p>Thời gian đi:  ${listTuyenDuong.time_di}</p>
          <p>Thời gian đến:  ${listTuyenDuong.time_den}</p>
</c:forEach>
<c:forEach var="listChuyenXe" items="${listChuyenXe}">
            <p>Điểm lên xe: ${listChuyenXe.diem_don}</p>
            <p>Điểm xuống xe:  ${listChuyenXe.diem_tra}</p>

</c:forEach>
          <p> Vé đã đặt:
<c:forEach var="listVe" items="${listVe}">
    ${listVe.ma_ve}
</c:forEach></p>


            <p>Tổng vé: ${SLVe} </p>




        </div>
        <div class="choose-diagram">Tổng tiền: ${SLVe*80000} </div>
      </div>
    </div>
    <div class="right">
      <div class="note">
        <h1>Lưu ý</h1>
        <div class="note-list">
          <p>Khách hàng vui lòng đến bến xe sớm hơn 15 phút.</p>
          <p>Khi lên xe vui lòng xuất trình vé đã thanh toán.</p>
          <p>Nhà xe sẽ không hoàn tiền nếu khách hàng đến muộn hơn giờ khởi hành</p>
        </div>
      </div>
      <form action="chon-the" method="post">

        <input type="hidden" id="ten" name="ten" value="<%= request.getParameter("hoTen")%>">
        <input type="hidden" id="sdt" name="sdt" value=" <%= request.getParameter("Sodt")%>">
        <input type="hidden" id="gmail" name="gmail" value="<%= request.getParameter("gmail")%>">
        <input type="hidden" id="diachi" name="diachi" value="<%= request.getParameter("DiaChi")%>">
        <button type="submit" value="submit" class="book-ticket my-hover">Kiểm tra</button>
      </form>
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
