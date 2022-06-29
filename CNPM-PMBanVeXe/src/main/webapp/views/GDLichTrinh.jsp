<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>Xem lich trinh</title>
</head>
<body>
<div class="khungtrang">
    <i class="fa fa-chevron-circle-left" aria-hidden="true" onclick="zoomountLeft(this)" alt="image"></i>
    <img id="trangKhung" src='<c:url value="/assets/images/chuyenxe.png" />'/>
    <img id="trangKhung1" src='<c:url value="/assets/images/tet-post-12-752x440.png" />'/>
    <i class="fa fa-chevron-circle-right" aria-hidden="true" onclick="zoomountRight(this)" alt="image"></i>
</div>

<div id="Search">

    <form>
        <input class="start" type="text" name="search" placeholder="Điểm đi">
        <i class="fa fa-search" aria-hidden="true"></i>
        <input class="start" type="text" name="search" placeholder="Điểm đến">
        <i class="fa fa-search" aria-hidden="true"></i>
    </form>
</div>

<div class="schedule-scroll">
    <div class="schedule-table">
        <div class="groups">
            <table lich-trinh="" class="group-table">
                <thead lich-trinh="">
                <tr class="table-head">
                    <th class="schedule-route-name">Route</th>
                    <th class="kind">Type</th>
                    <th class="distance">Distance</th>
                    <th class="duration">Duration</th>
                    <th class="price">Price</th>
                    <th class="time">Time</th>
                    <th class="end"></th>
                </tr>
                </thead>
                <thead lich-trinh="">
                <tr lich-trinh="" class="title">
                    <th lich-trinh="" colspan="7" class="text">TP.Ho Chi Minh ⇒</th>
                </tr>
                </thead>
                <tbody lich-trinh="">
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Quang Ngai</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">757 km</td>
                    <th lich-trinh="" class="duration">18h</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Quang Ngai</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">734 km</td>
                    <th lich-trinh="" class="duration">16h 56m</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>
                <thead lich-trinh="">
                <tr lich-trinh="" class="title">
                    <th lich-trinh="" colspan="7" class="text">Bạc Liêu ⇒</th>
                </tr>
                </thead>
                <tbody lich-trinh="">
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">TP.Ho Chi Minh</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">271 km</td>
                    <th lich-trinh="" class="duration">6h</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>

                <thead lich-trinh="">
                <tr lich-trinh="" class="title">
                    <th lich-trinh="" colspan="7" class="text">Bảo Lộc ⇒</th>
                </tr>
                </thead>
                <tbody lich-trinh="">
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Huế</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">827 km</td>
                    <th lich-trinh="" class="duration">19h</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Đà Nẵng</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">756 km</td>
                    <th lich-trinh="" class="duration">15h30m</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Quãng Ngãi</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">618 km</td>
                    <th lich-trinh="" class="duration">13h</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>
                <thead lich-trinh="">
                <tr lich-trinh="" class="title">
                    <th lich-trinh="" colspan="7" class="text">Bến Tre ⇒</th>
                </tr>
                </thead>
                <tbody lich-trinh="">
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">TP. Hồ Chí Minh</button>
                    </td>
                    <td lich-trinh="" class="kind">Seat</td>
                    <td lich-trinh="" class="distance">75 km</td>
                    <th lich-trinh="" class="duration">2h</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>
                <thead lich-trinh="">
                <tr lich-trinh="" class="title">
                    <th lich-trinh="" colspan="7" class="text">Cần Thơ ⇒</th>
                </tr>
                </thead>
                <tbody lich-trinh="">
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Năm Căn</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">194 km</td>
                    <th lich-trinh="" class="duration">4h35m</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Vũng Tàu</button>
                    </td>
                    <td lich-trinh="" class="kind">Seat</td>
                    <td lich-trinh="" class="distance">252 km</td>
                    <th lich-trinh="" class="duration">5h10m</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Cà Mau</button>
                    </td>
                    <td lich-trinh="" class="kind">Seat</td>
                    <td lich-trinh="" class="distance">143 km</td>
                    <th lich-trinh="" class="duration">3h</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Đà Lạt</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">550 km</td>
                    <th lich-trinh="" class="duration">11h30m</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">TP. Hồ Chí Minh</button>
                    </td>
                    <td lich-trinh="" class="kind">Seat</td>
                    <td lich-trinh="" class="distance">432 km</td>
                    <th lich-trinh="" class="duration">3h25m</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr lich-trinh="" class="item">
                    <td lich-trinh="" class="schedule-route-name">
                        <button lich-trinh="">Quảng Nam</button>
                    </td>
                    <td lich-trinh="" class="kind">Bunk</td>
                    <td lich-trinh="" class="distance">1200 km</td>
                    <th lich-trinh="" class="duration">16h</th>
                    <td lich-trinh="" class="price"><!----></td>
                    <td lich-trinh="" class="time">
                        <button lich-trinh="" class="time-detail">Chi tiết
                            <i lich-trinh="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td lich-trinh="" class="end">
                        <button lich-trinh="" class="buy-btn">
                            <span lich-trinh="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>

            </table>
        </div>
    </div>
</div>
</body>
</html>
