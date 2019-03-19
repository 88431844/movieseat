<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <base href="<%=basePath%>">
    <title>电影列表</title>
</head>
<body>
<%@include file="../backTop.jsp" %>
<%@include file="../backMenu.jsp" %>
电影列表
<a href="backMovie/toEditMovie">编辑电影</a>
<a href="backMovie/delMovie">删除电影</a>
<%@include file="../backFooter.jsp" %>
</body>
</html>
