<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <base href="<%=basePath%>">
    <title>添加电影</title>
</head>
<body>
<%@include file="../backTop.jsp" %>
<%@include file="../backMenu.jsp" %>
<a href="backMovie/addMovie">添加电影</a>
<%@include file="../backFooter.jsp" %>
</body>
</html>
