<%@ page contentType="text/html; charset=gb2312"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<head>
    <base href="<%=basePath%>">
    <title>��Ӱ����</title>
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
                    <li><a href="#">ע��</a></li>
                    <li><a href="#">��¼</a></li>
                    <li><a href="#">�û�����</a></li>
                    <li><a href="#">��̨����</a></li>
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
                        <input type="text" value="������Ӱ" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
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
                        <img src="static/images/1.jpg" alt="��Ӱ����" />
                    </div>
                    <div class="desc span_3_of_2">
                        <h2>��Ӱ���� �� ����ӳ� Captain Marvel </h2>
                        <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>--%>
                        <div class="price">
                            <p>Ʊ��: <span>50 Ԫ/��</span></p>
                        </div>
                        <div class="available">
                            <ul>
                                <li><span>����:</span> &nbsp; ����?���� / ��?���׿�</li>
                                <li><span>���:</span>&nbsp;  ����?���� / ��?���׿� / ������?��������-�ޱ�ɭ / ��ƶ�?������ / ÷��?�ո���</li>
                                <li><span>����:</span>&nbsp;  ����?����ɭ / �õ�?�� / ���Ѷ�?�ܿ�ѷ / ��?�ŵ¶�ɭ / ������?����</li>
                                <li><span>����:</span>&nbsp; ���� / �ƻ� / ð��</li>
                                <li><span>����:</span>&nbsp; Ӣ��</li>
                                <li><span>��ӳ����:</span>&nbsp; 2019-03-08(����/�й���½)</li>
                                <li><span>Ƭ��:</span>&nbsp; 124����</li>
                                <li>
                                    <%--<div class="share">--%>
                                        <p>����ѡ�� :</p>
                                        <select>
                                            <option>3��10��</option>
                                            <option>3��11��</option>
                                            <option>3��12��</option>
                                            <option>3��13��</option>
                                            <option>3��14��</option>
                                            <option>3��15��</option>
                                        </select>
                                    <%--</div>--%>
                                </li>

                                <li>
                                    <%--<div class="share">--%>
                                        <p>ӰԺѡ�� :</p>
                                        <select>
                                            <option>�нֱȸߵ�ӰԺ</option>
                                            <option>3��11��</option>
                                            <option>3��12��</option>
                                            <option>3��13��</option>
                                            <option>3��14��</option>
                                            <option>3��15��</option>
                                        </select>
                                    <%--</div>--%>
                                </li>
                                <li>
                                    <%--<div class="share">--%>
                                        <div class="button"><span><a href="movie/seat">��Ӱѡ��</a></span></div>
                                        <div class="clear"></div>
                                    <%--</div>--%>
                                </li>

                            </ul>
                        </div>
                        <div class="share-desc">
                            <%--<div class="share">--%>
                                <%--<p>����ѡ�� :</p>--%>
                                <%--<select>--%>
                                    <%--<option>3��10��</option>--%>
                                    <%--<option>3��11��</option>--%>
                                    <%--<option>3��12��</option>--%>
                                    <%--<option>3��13��</option>--%>
                                    <%--<option>3��14��</option>--%>
                                    <%--<option>3��15��</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                            <%--<div class="share">--%>
                                <%--<p>ӰԺѡ�� :</p>--%>
                                <%--<select>--%>
                                    <%--<option>�нֱȸߵ�ӰԺ</option>--%>
                                    <%--<option>3��11��</option>--%>
                                    <%--<option>3��12��</option>--%>
                                    <%--<option>3��13��</option>--%>
                                    <%--<option>3��14��</option>--%>
                                    <%--<option>3��15��</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                            <%--<div class="share">--%>
                                <%--<div class="button"><span><a href="movie/seat">��Ӱѡ��</a></span></div>--%>
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
                    <h2>������ :</h2>
                    <p>�����еĳ���������Ůʿ��ԭ��Carol Danvers����������һ�������վ��鱨��̽Ա�����������������˺����õ��˳���������Ϊ������Ůʿ�������������Ƿǳ����͵�Ů��Ӣ��������������ղ�����������̬��������ӵ���ڶ೬������������ӳ������������ײ���Ů�Գ���Ӣ��Ϊ���ǵĵ�Ӱ��</p>
                </div>
            </div>
            <div class="rightsidebar span_3_of_1 sidebar">
                <h2>���µ�Ӱ</h2>
                <div class="special_movies">
                    <div class="movie_poster">
                        <a href="movie/detail"><img src="static/images/end-game.jpg" alt="" /></a>
                    </div>
                    <div class="movie_desc">
                        <h3><a href="movie/detail">End Game</a></h3>
                        <p></p>
                        <span><a href="movie/detail">��Ӱ����</a></span>
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
                        <span><a href="movie/detail">��Ӱ����</a></span>
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
                        <span><a href="movie/detail">��Ӱ����</a></span>
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
                        <span><a href="movie/detail">��Ӱ����</a></span>
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
                        <span><a href="movie/detail">��Ӱ����</a></span>
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
            <p>Copyright &copy; 2019.�������պ����ѧ.</p>
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

