<%@ page contentType="text/html; charset=gb2312"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<head>
    <base href="<%=basePath%>">
    <title>电影墙</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="static/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="static/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="static/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="static/js/move-top.js"></script>
    <script type="text/javascript" src="static/js/easing.js"></script>
    <script type="text/javascript" src="static/js/jquery.nivo.slider.js"></script>
    <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider();
        });
    </script>
</head>
<body>
<div class="header">
    <div class="headertop_desc">
        <div class="wrap">
            <div class="account_desc">
                <ul>
                    <li><a href="#">注册</a></li>
                    <li><a href="#">登录</a></li>
                    <li><a href="#">用户中心</a></li>
                    <li><a href="#">后台管理</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="wrap">
        <div class="header_top">
            <div class="logo">
                <a href="movie/wall"><img src="static/images/logo.png" alt="" /></a>
            </div>
            <div class="header_top_right">
                <div class="search_box">
                    <form>
                        <input type="text" value="搜索电影" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
                    </form>
                </div>
                <div class="clear"></div>
            </div>
            <script type="text/javascript">
                function DropDown(el) {
                    this.dd = el;
                    this.initEvents();
                }
                DropDown.prototype = {
                    initEvents : function() {
                        var obj = this;

                        obj.dd.on('click', function(event){
                            $(this).toggleClass('active');
                            event.stopPropagation();
                        });
                    }
                }

                $(function() {

                    var dd = new DropDown( $('#dd') );

                    $(document).click(function() {
                        // all dropdowns
                        $('.wrapper-dropdown-2').removeClass('active');
                    });

                });
            </script>
            <div class="clear"></div>
        </div>

    </div>
    <!------------End Header ------------>
    <div class="main">
        <div class="wrap">
            <div class="content">

                <div class="section group">
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/end-game.jpg" alt="" /></a>
                        <h2><a href="movie/detail">End Game</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/Sorority_Wars.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Sorority Wars</a></h2>
                       <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/New-Moon-The-Score-cover-twilight.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Twilight New Moon</a></h2>
                       <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/avatar_movie.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Avatar</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/black-swan.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Black Swan</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                    </div>
                </div>

                <div class="section group">
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/beauty_and_the_beast.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Beauty and the beast</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/Eclipse.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Eclipse</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/Coraline.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Coraline</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/Unstoppable.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Unstoppable</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="movie/detail"><img src="static/images/Priest.jpg" alt="" /></a>
                        <h2><a href="movie/detail">Priest 3D</a></h2>
                        <%--<div class="price-details">--%>
                            <%--<div align="center">--%>
                                <%--<h4><a href="movie/detail">电影详情</a></h4>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="wrap">
            <div class="copy_right">
                <p>Copyright &copy; 2019.沈阳航空航天大学.</p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            $().UItoTop({ easingType: 'easeOutQuart' });
        });
    </script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
    <div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>


