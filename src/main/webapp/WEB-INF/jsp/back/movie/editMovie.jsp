<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <base href="<%=basePath%>">
    <title>编辑电影</title>
</head>
<body>
<%@include file="../backTop.jsp" %>
<%@include file="../backMenu.jsp" %>
<a href="backMovie/editMovie">编辑电影</a>
<%@include file="../backFooter.jsp" %>
</body>
</html>
