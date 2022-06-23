<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>Nhập thẻ</title>
</head>
<body>
<div id="content">
    <div id="ticket-diagram-gh-16">
        <div class="left">
            <div class="ticket-diagram">
                <h1>Nhập thẻ để thanh toán</h1>
                <div class="enterCard">
                    <form id="myForm" onsubmit="myFunction()" method="post">
                        <label>Số thẻ:</label> <input type="text" name="SoThe" id="soThe"><br>
                        <label>Ngày hết hạn:</label> <input type="text" name="Date"><br>
                        <label>CVV:</label> <input type="text" name="CVV"><br>
                    </form>
                    <class class="summitFinal">
                        <button type="submit" form="myForm" value="submit" style="font-size: 30px">Kiểm tra</button>
                    </class>
                    <script>
                        function myFunction() {
                            const soThe = 13579
                            if (soThe == document.getElementById("soThe").value) {
                                alert('Nhập thẻ thành công!!!')
                                window.open('<c:url value="/thanh-toan" />', '_blank');
                                self.close()

                            } else {
                                alert('Vui lòng kiểm tra lại thẻ')
                            }
                        }
                    </script>
                </div>
                <div class="choose-diagram">Vui lòng nhập đúng thẻ để thanh toán.</div>
            </div>
        </div>
        <div class="right">
            <div class="note">
                <h1>Lưu ý</h1>
                <div class="note-list">
                    <p>Vui lòng kiểm tra kĩ số thẻ để nhập chính xác!</p>
                </div>
            </div>
            <a href='<c:url value="/chon-the" />' class="book-ticket my-hover">Quay Về</a>
        </div>
    </div>
</div>
</body>
</html>
