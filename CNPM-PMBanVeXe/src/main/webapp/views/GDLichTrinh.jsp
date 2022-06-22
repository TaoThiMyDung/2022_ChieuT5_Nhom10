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
            <table data-v-7ecd57ee="" class="group-table">
                <thead data-v-7ecd57ee="">
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
                <thead data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="title">
                    <th data-v-7ecd57ee="" colspan="7" class="text">TP.Ho Chi Minh ⇒</th>
                </tr>
                </thead>
                <tbody data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Quang Ngai</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">757 km</td>
                    <th data-v-7ecd57ee="" class="duration">18h</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Quang Ngai</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">734 km</td>
                    <th data-v-7ecd57ee="" class="duration">16h 56m</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>
                <thead data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="title">
                    <th data-v-7ecd57ee="" colspan="7" class="text">Bạc Liêu ⇒</th>
                </tr>
                </thead>
                <tbody data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">TP.Ho Chi Minh</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">271 km</td>
                    <th data-v-7ecd57ee="" class="duration">6h</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>

                <thead data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="title">
                    <th data-v-7ecd57ee="" colspan="7" class="text">Bảo Lộc ⇒</th>
                </tr>
                </thead>
                <tbody data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Huế</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">827 km</td>
                    <th data-v-7ecd57ee="" class="duration">19h</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Đà Nẵng</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">756 km</td>
                    <th data-v-7ecd57ee="" class="duration">15h30m</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Quãng Ngãi</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">618 km</td>
                    <th data-v-7ecd57ee="" class="duration">13h</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>
                <thead data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="title">
                    <th data-v-7ecd57ee="" colspan="7" class="text">Bến Tre ⇒</th>
                </tr>
                </thead>
                <tbody data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">TP. Hồ Chí Minh</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Seat</td>
                    <td data-v-7ecd57ee="" class="distance">75 km</td>
                    <th data-v-7ecd57ee="" class="duration">2h</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>
                <thead data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="title">
                    <th data-v-7ecd57ee="" colspan="7" class="text">Cần Thơ ⇒</th>
                </tr>
                </thead>
                <tbody data-v-7ecd57ee="">
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Năm Căn</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">194 km</td>
                    <th data-v-7ecd57ee="" class="duration">4h35m</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Vũng Tàu</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Seat</td>
                    <td data-v-7ecd57ee="" class="distance">252 km</td>
                    <th data-v-7ecd57ee="" class="duration">5h10m</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Cà Mau</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Seat</td>
                    <td data-v-7ecd57ee="" class="distance">143 km</td>
                    <th data-v-7ecd57ee="" class="duration">3h</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Đà Lạt</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">550 km</td>
                    <th data-v-7ecd57ee="" class="duration">11h30m</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">TP. Hồ Chí Minh</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Seat</td>
                    <td data-v-7ecd57ee="" class="distance">432 km</td>
                    <th data-v-7ecd57ee="" class="duration">3h25m</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                <tr data-v-7ecd57ee="" class="item">
                    <td data-v-7ecd57ee="" class="schedule-route-name">
                        <button data-v-7ecd57ee="">Quảng Nam</button>
                    </td>
                    <td data-v-7ecd57ee="" class="kind">Bunk</td>
                    <td data-v-7ecd57ee="" class="distance">1200 km</td>
                    <th data-v-7ecd57ee="" class="duration">16h</th>
                    <td data-v-7ecd57ee="" class="price"><!----></td>
                    <td data-v-7ecd57ee="" class="time">
                        <button data-v-7ecd57ee="" class="time-detail">Chi tiết
                            <i data-v-7ecd57ee="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                        </button>
                    </td>
                    <td data-v-7ecd57ee="" class="end">
                        <button data-v-7ecd57ee="" class="buy-btn">
                            <span data-v-7ecd57ee="" class="buy-txt">Đặt vé</span>
                        </button>
                    </td>
                </tr>
                </tbody>

            </table>
        </div>
    </div>
</div>
<div id="layout7">
    <div class="thanhDuoi">
        <div class="tenWeb">
            <h1 class="ten">VeXeGia</h1>
            <p class="kinhNghiem">Vé xe chất lượng, đặt vé an toàn </p>
            <div class="hotline">
                <a href='<c:url value="/assets/images/img.png" />'>
                    <i class="fa fa-phone-square" aria-hidden="true"></i></a>
                <p class="line">1900.363.079</p>
            </div>
        </div>
        <div class="thongTin">
            <div class="left">
                <h2>Thông tin liên lạc</h2>
            </div>
            <div class="right">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <h3 class="ten">----- Địa chỉ :</h3>
                <p class="noiDung"> quận Thủ Đức , TP HCM</p>

                <i class="fa fa-phone-square" aria-hidden="true"></i>
                <h3 class="ten">----- Điện thoại :</h3>
                <p class="noiDung"> 1900.363.079 </p>

                <i class="fa fa-envelope" aria-hidden="true"></i>
                <h3 class="ten">----- Email :</h3>
                <p class="noiDung"> vexegia@gmail.com </p>

                <i class="fa fa-clock-o" aria-hidden="true"></i>
                <h3 class="ten">----- Giờ mở cửa :</h3>
                <p class="noiDung"> 24/24 từ Thứ 2 - Chủ Nhật </p>
            </div>
        </div>
        <div class="NoiDung">
            <div class="hoTro">
                <div class="chucNang">
                    <h2>Về Chúng Tôi</h2>
                    <a href="#">
                        <p>Trang chủ</p></a>
                    <a href="#">
                        <p>Giới thiệu</p>
                    </a>
                    <a href="#">
                        <p>Vé xe</p>
                    </a>
                    <a href="#">
                        <p>Tin tức</p></a>
                    <a href="#">
                        <p>Liên hệ</p></a>
                </div>
                <div class="chucNang">
                    <h2>Chức Năng</h2>
                    <p>Xây dựng Website</p>
                    <p>Social </p>
                    <p>Quản lý bán vé</p>
                    <p>Chatbot</p>
                    <p>Google Map</p>
                </div>
                <div class="chucNang">
                    <h2>Hỗ Trợ</h2>
                    <p>Học viện</p>
                    <p>Kho giao diện</p>
                    <p>Kho ứng dụng</p>
                    <p>Đại lý</p>
                    <p>Tài liệu hướng dẫn</p>
                </div>
            </div>
            <div class="lienLac">
                <div class="lienLac_left">
                    <div class="left">
                        <h3>Theo dõi mạng xã hội</h3>
                        <a href="https://www.google.com/search?q=fb&oq=fb&aqs=chrome..69i57j46i131i199i433i465i512j69i59j0i512j46i199i291i433i512j69i60l3.1291j0j7&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src='<c:url value="/assets/images/fb_left.PNG"/>'/></a>
                        <a href="https://www.google.com/search?q=google&oq=goo&aqs=chrome.0.0i131i355i433i512j46i131i199i433i465i512j0i131i433i512j69i57j69i60l3j69i65.1245j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src='<c:url value="/assets/images/g_left.PNG" />'/></a>
                        <a href="https://www.google.com/search?gs_ssp=eJzj4tLP1TfIyDMsS05XYDRgdGDwYi8pzywpSS0CAFnOB00&q=twitter&oq=tw&aqs=chrome.1.69i57j46i131i199i433i465i512j0i433i512j46i131i433i512j0i131i433i512j46i433i512j0i131i433i512j69i60.3261j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src='<c:url value="/assets/images/tw_left.PNG" />'/></a>
                        <a href="https://www.google.com/search?q=pinterest&oq=p&aqs=chrome.3.69i59l2j69i57j0i131i433i512j69i60l4.10676j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src='<c:url value="/assets/images/p_left.PNG" />'/></a>
                    </div>
                    <div class="right">
                        <h3>Thanh Toán</h3>
                        <a href="https://www.google.com/search?q=visa&oq=visa&aqs=chrome..69i57j0i433i512l2j0i512l2j0i131i433i512j0i512l2j0i10i512j0i512.2103j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src='<c:url value="/assets/images/thanhToan1.PNG" />' height="43" width="62"/></a>
                        <img class="mang" src='<c:url value="/assets/images/thanhToan2.PNG" />' height="44" width="65"/>
                        <a href="https://www.google.com/search?q=paypal&oq=paypal&aqs=chrome..69i57j46i199i433i465i512j0i433i512j0i512l6.3397j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src='<c:url value="/assets/images/thanhToan3.PNG" />' height="40" width="64"/></a>
                        <a href="https://www.google.com/search?q=jcb&oq=jcb&aqs=chrome..69i57j46i199i433i465i512j0i512l6j0i10i512j0i512.1389j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src='<c:url value="/assets/images/thanhToan4.PNG" />' height="38" width="62"/></a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
