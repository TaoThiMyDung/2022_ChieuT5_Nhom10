<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>Xem lich trinh</title>
</head>
<body>
<div id="content">
    <div class="khungtrang">
        <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
        <img id="trangKhung" src='<c:url value="/assets/images/chuyenxe.png"/>' />
        <img id="trangKhung1" src='<c:url value="/assets/images/tet-post-12-752x440.png"/>'/>
        <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
    </div>

    <div id="Search">
        <form>
            <div class="form-group">
                <label for="start">Chọn điểm đi</label>
                <input id="start" class="start" type="text" name="start" placeholder="Điểm đi">
                <i class="fa fa-search" aria-hidden="true"></i>
            </div>
            <div class="form-group">
                <label for="end">Chọn điểm đến</label>
                <input id="end" class="start" type="text" name="end" placeholder="Điểm đến">
                <i class="fa fa-search" aria-hidden="true"></i>
            </div>
        </form>
    </div>

    <div class="schedule-scroll">
        <div class="schedule-table">
            <div class="groups">
                <table class="group-table">
                    <thead >
                    <tr class="table-head">
                        <th class="schedule-route-name">Chuyến xe</th>
                        <th class="kind">Loại xe</th>
                        <th class="distance">Khoảng cách</th>
                        <th class="duration">Thời gian</th>
                        <th class="price">Giá vé</th>
                        <th class="time">Chi tiết</th>
                        <th class="end"></th>
                    </tr>
                    </thead>
                    <tbody >
                    <c:forEach var="diemDi" items="${requestScope.tatCaChuyenXeDi}">
                    <thead>
                    <tr  class="title">
                        <th  colspan="7" class="text">${diemDi} ⇒</th>
                    </tr>
                    </thead>
                    <tbody >
                        <c:forEach var="chuyenXe" items="${requestScope.tatCaChuyenXe}">
                            <c:if test="${chuyenXe.diemDi.equals(diemDi)}">
                                <tr  class="item">
                                    <td  class="schedule-route-name">
                                        <button >${chuyenXe.diemDen}</button>
                                    </td>
                                    <td  class="kind">${chuyenXe.tenLoaiXe}</td>
                                    <td  class="distance">${chuyenXe.quangDuong} km</td>
                                    <th  class="duration">${chuyenXe.thoiGianDi}</th>
                                    <td  class="price">${chuyenXe.giaVe}</td>
                                    <td  class="time">
                                        <button  class="time-detail">Chi tiết
                                            <i  class="fa fa-info-circle" style="font-size: 18px;"></i>
                                        </button>
                                    </td>
                                    <td  class="end">
                                        <a href='<c:url value="chon-cho-ngoi?maChuyenXe=${chuyenXe.maChuyenXe}"/>'>
                                            <button  class="buy-btn">
                                                <span  class="buy-txt">Đặt vé</span>
                                            </button>
                                        </a>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </tbody>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
