<%@ page contentType="text/html; charset=gb2312"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<head>
    <base href="<%=basePath%>">
    <title>电影详情</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="static/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="static/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="static/js/move-top.js"></script>
    <script type="text/javascript" src="static/js/easing.js"></script>
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
</div>
<div class="main">
    <div class="wrap">

        <div class="section group">
            <div class="cont-desc span_1_of_2">
                <div class="product-details">
                    <div class="grid static/images_3_of_2">
                        <img src="static/images/1.jpg" alt="电影海报" />
                    </div>
                    <div class="desc span_3_of_2">
                        <h2>电影名称 ： 惊奇队长 Captain Marvel </h2>
                        <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>--%>
                        <div class="price">
                            <p>票价: <span>50 元/张</span></p>
                        </div>
                        <div class="available">
                            <ul>
                                <li><span>导演:</span> &nbsp; 安娜?波顿 / 瑞安?弗雷克</li>
                                <li><span>编剧:</span>&nbsp;  安娜?波顿 / 瑞安?弗雷克 / 吉内瓦?德沃莱特-罗宾森 / 尼科尔?帕尔曼 / 梅格?勒福夫</li>
                                <li><span>主演:</span>&nbsp;  布丽?拉尔森 / 裘德?洛 / 塞缪尔?杰克逊 / 本?门德尔森 / 安妮特?贝宁</li>
                                <li><span>类型:</span>&nbsp; 动作 / 科幻 / 冒险</li>
                                <li><span>语言:</span>&nbsp; 英语</li>
                                <li><span>上映日期:</span>&nbsp; 2019-03-08(美国/中国大陆)</li>
                                <li><span>片长:</span>&nbsp; 124分钟</li>
                                <li>
                                    <%--<div class="share">--%>
                                        <p>日期选择 :</p>
                                        <select>
                                            <option>3月10日</option>
                                            <option>3月11日</option>
                                            <option>3月12日</option>
                                            <option>3月13日</option>
                                            <option>3月14日</option>
                                            <option>3月15日</option>
                                        </select>
                                    <%--</div>--%>
                                </li>

                                <li>
                                    <%--<div class="share">--%>
                                        <p>影院选择 :</p>
                                        <select>
                                            <option>中街比高电影院</option>
                                            <option>3月11日</option>
                                            <option>3月12日</option>
                                            <option>3月13日</option>
                                            <option>3月14日</option>
                                            <option>3月15日</option>
                                        </select>
                                    <%--</div>--%>
                                </li>
                                <li>
                                    <%--<div class="share">--%>
                                        <div class="button"><span><a href="movie/seat">电影选座</a></span></div>
                                        <div class="clear"></div>
                                    <%--</div>--%>
                                </li>

                            </ul>
                        </div>
                        <div class="share-desc">
                            <%--<div class="share">--%>
                                <%--<p>日期选择 :</p>--%>
                                <%--<select>--%>
                                    <%--<option>3月10日</option>--%>
                                    <%--<option>3月11日</option>--%>
                                    <%--<option>3月12日</option>--%>
                                    <%--<option>3月13日</option>--%>
                                    <%--<option>3月14日</option>--%>
                                    <%--<option>3月15日</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                            <%--<div class="share">--%>
                                <%--<p>影院选择 :</p>--%>
                                <%--<select>--%>
                                    <%--<option>中街比高电影院</option>--%>
                                    <%--<option>3月11日</option>--%>
                                    <%--<option>3月12日</option>--%>
                                    <%--<option>3月13日</option>--%>
                                    <%--<option>3月14日</option>--%>
                                    <%--<option>3月15日</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                            <%--<div class="share">--%>
                                <%--<div class="button"><span><a href="movie/seat">电影选座</a></span></div>--%>
                                <%--<div class="clear"></div>--%>
                            <%--</div>--%>

                        </div>

                        <%--<div class="wish-list">--%>
                            <%--<ul>--%>
                                <%--<li class="wish"><a href="#">Add to Wishlist</a></li>--%>
                                <%--<li class="compare"><a href="#">Add to Compare</a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="product_desc">
                    <h2>剧情简介 :</h2>
                    <p>漫画中的初代“惊奇女士”原名Carol Danvers，她曾经是一名美国空军情报局探员，暗恋惊奇先生。此后她得到了超能力，成为“惊奇女士”，在漫画中是非常典型的女性英雄人物。她可以吸收并控制任意形态的能量，拥有众多超能力。《惊奇队长》将是漫威首部以女性超级英雄为主角的电影。</p>
                </div>
            </div>
            <div class="rightsidebar span_3_of_1 sidebar">
                <h2>最新电影</h2>
                <div class="special_movies">
                    <div class="movie_poster">
                        <a href="movie/detail"><img src="static/images/end-game.jpg" alt="" /></a>
                    </div>
                    <div class="movie_desc">
                        <h3><a href="movie/detail">End Game</a></h3>
                        <p></p>
                        <span><a href="movie/detail">电影详情</a></span>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="special_movies">
                    <div class="movie_poster">
                        <a href="movie/detail"><img src="static/images/Coraline.jpg" alt="" /></a>
                    </div>
                    <div class="movie_desc">
                        <h3><a href="movie/detail">Coraline</a></h3>
                        <p></p>
                        <span><a href="movie/detail">电影详情</a></span>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="special_movies">
                    <div class="movie_poster">
                        <a href="movie/detail"><img src="static/images/Eclipse.jpg" alt="" /></a>
                    </div>
                    <div class="movie_desc">
                        <h3><a href="movie/detail">Eclipse</a></h3>
                        <p></p>
                        <span><a href="movie/detail">电影详情</a></span>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="special_movies">
                    <div class="movie_poster">
                        <a href="movie/detail"><img src="static/images/Priest.jpg" alt="" /></a>
                    </div>
                    <div class="movie_desc">
                        <h3><a href="movie/detail">Priest 3D</a></h3>
                        <p></p>
                        <span><a href="movie/detail">电影详情</a></span>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="special_movies">
                    <div class="movie_poster">
                        <a href="movie/detail"><img src="static/images/Sorority_Wars.jpg" alt="" /></a>
                    </div>
                    <div class="movie_desc">
                        <h3><a href="movie/detail">Sorority Wars</a></h3>
                        <p></p>
                        <span><a href="movie/detail">电影详情</a></span>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="wrap">
        <%--<div class="section group">--%>
            <%--<div class="col_1_of_4 span_1_of_4">--%>
                <%--<h4>Information</h4>--%>
                <%--<ul>--%>
                    <%--<li><a href="#">About Us</a></li>--%>
                    <%--<li><a href="#">Customer Service</a></li>--%>
                    <%--<li><a href="#">Advanced Search</a></li>--%>
                    <%--<li><a href="#">Orders and Returns</a></li>--%>
                    <%--<li><a href="contact.html">Contact Us</a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="col_1_of_4 span_1_of_4">--%>
                <%--<h4>Why buy from us</h4>--%>
                <%--<ul>--%>
                    <%--<li><a href="#">About Us</a></li>--%>
                    <%--<li><a href="#">Customer Service</a></li>--%>
                    <%--<li><a href="#">Privacy Policy</a></li>--%>
                    <%--<li><a href="contact.html">Site Map</a></li>--%>
                    <%--<li><a href="#">Search Terms</a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="col_1_of_4 span_1_of_4">--%>
                <%--<h4>My account</h4>--%>
                <%--<ul>--%>
                    <%--<li><a href="contact.html">Sign In</a></li>--%>
                    <%--<li><a href="index.html">View Cart</a></li>--%>
                    <%--<li><a href="#">My Wishlist</a></li>--%>
                    <%--<li><a href="#">Track My Order</a></li>--%>
                    <%--<li><a href="contact.html">Help</a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="col_1_of_4 span_1_of_4">--%>
                <%--<h4>Contact</h4>--%>
                <%--<ul>--%>
                    <%--<li><span>+91-123-456789</span></li>--%>
                    <%--<li><span>+00-123-000000</span></li>--%>
                <%--</ul>--%>
                <%--<div class="social-icons">--%>
                    <%--<h4>Follow Us</h4>--%>
                    <%--<ul>--%>
                        <%--<li><a href="#" target="_blank"><img src="static/images/facebook.png" alt="" /></a></li>--%>
                        <%--<li><a href="#" target="_blank"><img src="static/images/twitter.png" alt="" /></a></li>--%>
                        <%--<li><a href="#" target="_blank"><img src="static/images/skype.png" alt="" /> </a></li>--%>
                        <%--<li><a href="#" target="_blank"> <img src="static/images/linkedin.png" alt="" /></a></li>--%>
                        <%--<div class="clear"></div>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
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

