<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Chọn chổ ngồi</title>
</head>
<body>
<div id="content">
    <div id="ticket-infor">
        <div class="location-time ticket-infor-item">
            <h1>${requestScope.thongTinChuyenXe.diemDi} - ${requestScope.thongTinChuyenXe.diemDen}</h1>
            <p>
                <fmt:formatDate
                        type="both"
                        dateStyle="short"
                        timeStyle="short"
                        value="${requestScope.thongTinChuyenXe.thoiGianDi}"
                /> => <fmt:formatDate
                        type="both"
                        dateStyle="short"
                        timeStyle="short"
                        value="${requestScope.thongTinChuyenXe.thoiGianDen}"/>
            </p>
        </div>
        <div class="car-type-route ticket-infor-item">
            <p>Loại xe: ${requestScope.thongTinChuyenXe.tenLoaiXe} - ${requestScope.thongTinChuyenXe.soGhe} chổ</p>
            <p>Quãng đường: ${requestScope.thongTinChuyenXe.quangDuong}km</p>
        </div>
        <div class="space-price ticket-infor-item">
            <p>Trống: ${requestScope.thongTinChuyenXe.gheTrong} chổ</p>
            <p>Giá vé: ${requestScope.thongTinChuyenXe.giaVe} VNĐ</p>
        </div>
    </div>
    <div id="ticket-diagram-gh-16">
        <div class="left">
            <div class="ticket-diagram">
                <h1>Sơ đồ vé</h1>
                <div class="diagram" tickedIsBooked = ${requestScope.cacVeDaDuocDat} >
                    <div class="driver not-available">
                        <img
                                src=
                                <c:url value="/assets/images/steering-wheel.png"/>
                                        alt="steering-wheel.png"
                        />
                        <i class="fa-solid fa-user"></i>
                        <p>Tài xế</p>
                    </div>
                </div>
                <div class="choose-diagram" ></div>
            </div>
        </div>
        <div class="right">
            <div class="note">
                <h1>Chú thích</h1>
                <div class="note-list">
                    <div class="note-item">
                        <i class="fa-solid fa-user"></i>
                        <p>:Còn trống</p>
                    </div>
                    <div class="note-item">
                        <i class="fa-solid fa-user not-available"></i>
                        <p>:Đã được đặt</p>
                    </div>
                    <div class="note-item">
                        <i class="fa-solid fa-user choose"></i>
                        <p>:Bạn đã chọn</p>
                    </div>
                </div>
            </div>
            <form id="order-form" action="dat-ve" method="GET" hidden>
                <input name="ma-chuyen-xe" type="hidden" value="${requestScope.thongTinChuyenXe.maChuyenXe}">
                <input name="danh-sach-ve" type="hidden">
            </form>
            <button type="submit" form="order-form" class="book-ticket my-hover">Đặt vé</button>
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
