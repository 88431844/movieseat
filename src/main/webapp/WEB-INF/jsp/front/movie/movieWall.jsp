<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<head>
    <base href="<%=basePath%>">
    <title>电影墙</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="static/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="static/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="static/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="static/js/move-top.js"></script>
    <script type="text/javascript" src="static/js/easing.js"></script>
    <script type="text/javascript" src="static/js/jquery.nivo.slider.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
    <script>
        function myAlert() {
            var message = "${message}";
            var messageStr = message.toString();
            if (null != messageStr && !"".endsWith(messageStr)) {
                alert(messageStr);
            }

        }

    </script>
</head>
<body onload="myAlert()">
<%@include file="../head.jsp"%>
<!------------End Header ------------>
<div class="main">
    <div class="wrap">
        <div class="content">

            <c:forEach items="${movieLists}" var="movieLists">
                <div class="section group">
                    <c:forEach items="${movieLists}" var="movieList">
                        <div class="grid_1_of_5 images_1_of_5">
                            <a href="movie/detail?id=${movieList.id}"><img src="uploadFile/${movieList.img}" alt=""
                                                                           width="300px"
                                                                           height=200px"/></a>
                            <h2><a href="movie/detail">${movieList.name}</a></h2>
                        </div>
                    </c:forEach>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@include file="../footer.jsp"%>
<script type="text/javascript">
    $(document).ready(function () {
        $().UItoTop({easingType: 'easeOutQuart'});
    });
</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>


