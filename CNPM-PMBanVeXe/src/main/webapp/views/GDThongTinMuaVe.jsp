<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <h3>Thông tin khách hàng</h3>
          <p>Họ và tên: Nguyễn Hoàng Minh</p>
          <p>Số điện thoại: 0396933284</p>
          <p>Gmail: hoangminh11282@gmail.com</p>
          <h3>Thông tin chuyến</h3>
          <p>Tuyến xe: Sài Gòn - Tiền Giang</p>
          <p>Thời gian: 19:00 14/06/2022</p>
          <p>Địa điểm lên xe: Bến xe miền Tây</p>
          <p>Số lượng ghế: 1</p>
          <p>Số ghế: B20</p>
        </div>
        <div class="choose-diagram">Tổng tiền: 80.000 đ</div>
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

      <a href=<c:url value="/chon-the" /> class="book-ticket my-hover">Xác nhận</a>
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
