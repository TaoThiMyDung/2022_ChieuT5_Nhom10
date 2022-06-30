<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title><dec:title default="Trang chủ"/></title>
    <%@include file="/shares/css.jsp"%>
</head>
<body>
<%@include file="/shares/header.jsp"%>
<dec:body/>
<%@include file="/shares/footer.jsp"%>
<%@include file="/shares/js.jsp"%>
</body>
</html>
