<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Chọn chổ ngồi</title>
    </head>
    <body>
        <div id="content">
            <div class="process-book-ticket">
                <div class="step-process step-1 active">
                    <h1>Kiểm tra vé</h1>
                    <div class="step-num">1</div>
                </div>
                <div class="step-process step-2">
                    <h1>Chọn điểm đón / điểm trả</h1>
                    <div class="step-num">2</div>
                </div>
                <div class="step-process step-3">
                    <h1>Điền thông tin</h1>
                    <div class="step-num">3</div>
                </div>
                <div class="process-bar"></div>
            </div>
            <div id="step-1" class="step show">
                <h1 class="step-title">Các vé đã chọn</h1>
                <div class="step-content">
                    <c:forEach var="ve" items="${requestScope.dsVe}">
                        <div class="ticket">
                            <p>Mã vé: ${ve.maVe}</p>
                            <p>Điểm đi: ${ve.diemDi}</p>
                            <p>Điểm đến: ${ve.diemDen}</p>
                            <p>Loại xe: ${ve.tenLoaiXe}</p>
                            <p>Vị trí: Ghế số ${ve.viTriGhe}</p>
                            <p>Ngày khởi hành: <fmt:formatDate pattern = "dd/MM/yyyy" value = "${ve.thoiGianDi}" /></p>
                            <p>Giờ khởi hành: <fmt:formatDate type = "time" value = "${ve.thoiGianDi}" /></p>
                            <p>Giá vé: ${ve.giaVe} VNĐ</p>
                        </div>
                    </c:forEach>
                </div>
                <div class="step-actions">
                    <a href='<c:url value="/chon-cho-ngoi?maChuyenXe=${requestScope.maChuyenXe}"/>'>
                        <div class="btn btn-back my-hover">Quay lại</div>
                    </a>
                    <div class="total-price">Tổng: ${requestScope.tongGiaVe} VNĐ</div>
                    <div class="btn btn-continue my-hover">Tiếp tục</div>
                </div>
            </div>
            <div id="step-2" class="step">
                <div class="step-content">
                    <div class="palce-point">
                        <label for="pick-up">Chọn điểm đón</label>
                        <select name="pick-up" id="pick-up">
                            <c:forEach var="diemDung" items="${requestScope.cacDiemDon}">
                                <option value="${diemDung.maDiemDung}">${diemDung.tenDiemDung}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="palce-point">
                        <label for="drop-off">Chọn điểm trả</label>
                        <select name="drop-off" id="drop-off">
                            <c:forEach var="diemDung" items="${requestScope.cacDiemTra}">
                                <option value="${diemDung.maDiemDung}">${diemDung.tenDiemDung}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="step-actions">
                    <div class="btn btn-back my-hover">Quay lại</div>
                    <div class="btn btn-continue my-hover">Tiếp tục</div>
                </div>
            </div>
            <div id="step-3" class="step">
                <h1 class="step-title">Điền thông tin khách hàng</h1>
                <div class="step-content">
                    <form action="dat-ve" id="form-book-ticket" method="post">
                        <input type="hidden" name="dsMaVe" value="${requestScope.dsMaVe}">
                        <input type="hidden" name="diem-don">
                        <input type="hidden" name="diem-tra">
                        <div class="form-group">
                            <label for="full-name">Họ tên</label>
                            <input id="full-name" type="text" name="hoTen">
                            <p class="form-error"></p>
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại</label>
                            <input id="phone" type="text" name="Sodt">
                            <p class="form-error"></p>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input id="email" type="text" name="gmail">
                            <p class="form-error"></p>
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ</label>
                            <input id="address" type="text" name="DiaChi">
                            <p class="form-error"></p>
                        </div>
                    </form>
                </div>
                <div class="step-actions">
                    <div class="btn btn-back my-hover">Quay lại</div>
                    <button type="submit" form="form-book-ticket" value="submit" class="btn btn-payment my-hover">Đặt vé</button>
                </div>
            </div>
        </div>
    </body>
</html>
