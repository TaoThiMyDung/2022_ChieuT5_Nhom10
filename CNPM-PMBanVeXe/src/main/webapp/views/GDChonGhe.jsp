<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Chọn chổ ngồi</title>
    </head>
    <body>
        <div id="content">
            <div id="ticket-infor">
                <div class="location-time ticket-infor-item">
                    <h1>TP.HCM - Tiền Giang</h1>
                    <p>13:00 -> 17:00</p>
                </div>
                <div class="car-type-route ticket-infor-item">
                    <p>Loại xe: Ghế - 16 chổ</p>
                    <p>Quãng đường: 100km</p>
                </div>
                <div class="space-price ticket-infor-item">
                    <p>Trống: 16 chổ</p>
                    <p>Giá vé: 80.000 VNĐ</p>
                </div>
                <div class="view-detail ticket-infor-item">
                    <a href="#">xem chi tiết</a>
                </div>
            </div>
            <div id="ticket-diagram-gh-16">
                <div class="left">
                    <div class="ticket-diagram">
                        <h1>Sơ đồ vé</h1>
                        <div class="diagram">
                            <div class="driver not-available">
                                <img
                                        src=<c:url value="/assets/images/steering-wheel.png"/>
                                        alt="steering-wheel.png"
                                />
                                <i class="fa-solid fa-user"></i>
                                <p>Tài xế</p>
                            </div>
                        </div>
                        <div class="choose-diagram">Vé 2; Vé3</div>
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
                    <a href='<c:url value="/dat-ve"/>'><div class="book-ticket my-hover">Đặt vé</div></a>
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
