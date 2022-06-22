<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div class="ticket">
                        <p>Mã vé: VE2</p>
                        <p>Điểm đi: TP.HCM</p>
                        <p>Điểm đến: Tiền Giang</p>
                        <p>Loại xe: Ghế</p>
                        <p>Vị trí: Ghế số 2</p>
                        <p>Ngày khởi hành: 13/06/2022</p>
                        <p>Giờ khởi hành: 09:30</p>
                        <p>Giá vé: 80.000 VNĐ</p>
                    </div>
                    <div class="ticket">
                        <p>Mã vé: VE2</p>
                        <p>Điểm đi: TP.HCM</p>
                        <p>Điểm đến: Tiền Giang</p>
                        <p>Loại xe: Ghế</p>
                        <p>Vị trí: Ghế số 2</p>
                        <p>Ngày khởi hành: 13/06/2022</p>
                        <p>Giờ khởi hành: 09:30</p>
                        <p>Giá vé: 80.000 VNĐ</p>
                    </div>
                    <div class="ticket">
                        <p>Mã vé: VE2</p>
                        <p>Điểm đi: TP.HCM</p>
                        <p>Điểm đến: Tiền Giang</p>
                        <p>Loại xe: Ghế</p>
                        <p>Vị trí: Ghế số 2</p>
                        <p>Ngày khởi hành: 13/06/2022</p>
                        <p>Giờ khởi hành: 09:30</p>
                        <p>Giá vé: 80.000 VNĐ</p>
                    </div>
                    <div class="ticket">
                        <p>Mã vé: VE2</p>
                        <p>Điểm đi: TP.HCM</p>
                        <p>Điểm đến: Tiền Giang</p>
                        <p>Loại xe: Ghế</p>
                        <p>Vị trí: Ghế số 2</p>
                        <p>Ngày khởi hành: 13/06/2022</p>
                        <p>Giờ khởi hành: 09:30</p>
                        <p>Giá vé: 80.000 VNĐ</p>
                    </div>
                    <div class="ticket">
                        <p>Mã vé: VE2</p>
                        <p>Điểm đi: TP.HCM</p>
                        <p>Điểm đến: Tiền Giang</p>
                        <p>Loại xe: Ghế</p>
                        <p>Vị trí: Ghế số 2</p>
                        <p>Ngày khởi hành: 13/06/2022</p>
                        <p>Giờ khởi hành: 09:30</p>
                        <p>Giá vé: 80.000 VNĐ</p>
                    </div>
                </div>
                <div class="step-actions">
                    <a href="#">
                        <div class="btn btn-back my-hover">Quay lại</div>
                    </a>
                    <div class="total-price">Tổng: 350.000 VNĐ</div>
                    <div class="btn btn-continue my-hover">Tiếp tục</div>
                </div>
            </div>
            <div id="step-2" class="step">
                <div class="step-content">
                    <div class="palce-point">
                        <label for="pick-up">Chọn điểm đón</label>
                        <select name="pick-up" id="pick-up">
                            <option value="">Bến xe Hồng Hoàng</option>
                        </select>
                    </div>
                    <div class="palce-point">
                        <label for="drop-off">Chọn điểm trả</label>
                        <select name="drop-off" id="drop-off">
                            <option value="">Bệnh viện MPT</option>
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
                    <form action="">
                        <div class="form-group">
                            <label for="full-name">Họ tên</label>
                            <input id="full-name" type="text">
                            <p class="form-error"></p>
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại</label>
                            <input id="phone" type="text">
                            <p class="form-error"></p>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input id="email" type="text">
                            <p class="form-error"></p>
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ</label>
                            <input id="address" type="text">
                            <p class="form-error"></p>
                        </div>
                    </form>
                </div>
                <div class="step-actions">
                    <div class="btn btn-back my-hover">Quay lại</div>

                    <a href='<c:url value="/thong-tin-mua-ve"/>' class="btn btn-payment my-hover">Thanh toán</a>
                </div>
            </div>
        </div>
    </body>
</html>
