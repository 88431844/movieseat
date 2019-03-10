<%@ page contentType="text/html; charset=gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<head>
    <base href="<%=basePath%>">
    <title>µÁ”∞«Ω</title>
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
</head>
<body>
<%@include file="../head.jsp"%>
<!------------End Header ------------>
<div class="main">
    <div class="wrap">
        <div class="content">

            <div class="section group">
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/end-game.jpg" alt=""/></a>
                    <h2><a href="movie/detail">End Game</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/Sorority_Wars.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Sorority Wars</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/New-Moon-The-Score-cover-twilight.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Twilight New Moon</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/avatar_movie.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Avatar</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/black-swan.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Black Swan</a></h2>
                </div>
            </div>

            <div class="section group">
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/beauty_and_the_beast.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Beauty and the beast</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/Eclipse.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Eclipse</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/Coraline.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Coraline</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/Unstoppable.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Unstoppable</a></h2>
                </div>
                <div class="grid_1_of_5 images_1_of_5">
                    <a href="movie/detail"><img src="static/images/Priest.jpg" alt=""/></a>
                    <h2><a href="movie/detail">Priest 3D</a></h2>
                </div>
            </div>
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


