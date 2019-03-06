<%@ page contentType="text/html; charset=gb2312"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<head>
    <base href="<%=basePath%>">
    <title>Home</title>
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
            <div class="nav_list">
                <ul>
                    <li><a href="movie/seat">Home-test</a></li>
                    <%--<li><a href="contact.html">Sitemap</a></li>--%>
                    <%--<li><a href="contact.html">Contact</a></li>--%>
                </ul>
            </div>
            <div class="account_desc">
                <ul>
                    <li><a href="contact.html">Register</a></li>
                    <li><a href="contact.html">Login</a></li>
                    <li><a href="preview.html">Delivery</a></li>
                    <li><a href="#">Checkout</a></li>
                    <li><a href="#">My Account</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="wrap">
        <div class="header_top">
            <div class="logo">
                <a href="movie/seat"><img src="static/images/logo.png" alt="" /></a>
            </div>
            <div class="header_top_right">
                <%--<div class="cart">--%>
                <%--<p><span>Cart</span><div id="dd" class="wrapper-dropdown-2"> (empty)--%>
                <%--<ul class="dropdown">--%>
                <%--<li>you have no items in your Shopping cart</li>--%>
                <%--</ul></div></p>--%>
                <%--</div>--%>
                <div class="search_box">
                    <form>
                        <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
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
        <div class="header_bottom">
            <%--<div class="header_bottom_left">--%>
            <%--<div class="categories">--%>
            <%--<ul>--%>
            <%--<h3>Categories</h3>--%>
            <%--<li><a href="#">All</a></li>--%>
            <%--<li><a href="#">Hindi</a></li>--%>
            <%--<li><a href="#">Telugu</a></li>--%>
            <%--<li><a href="#">English</a></li>--%>
            <%--<li><a href="#">Tamil</a></li>--%>
            <%--<li><a href="#">Malayalam</a></li>--%>
            <%--<li><a href="#">Kannada</a></li>--%>
            <%--<li><a href="#">Bengali</a></li>--%>
            <%--<li><a href="#">Assami</a></li>--%>
            <%--<li><a href="#">Kids</a></li>--%>
            <%--<li><a href="#">Animation</a></li>--%>
            <%--<li><a href="#">Games</a></li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="header_bottom_right">--%>
            <%--<!------ Slider ------------>--%>
            <%--<div class="slider">--%>
            <%--<div class="slider-wrapper theme-default">--%>
            <%--<div id="slider" class="nivoSlider">--%>
            <%--<img src="static/images/1.jpg" data-thumb="static/images/1.jpg" alt="" />--%>
            <%--<img src="static/images/2.jpg" data-thumb="static/images/2.jpg" alt="" />--%>
            <%--<img src="static/images/3.jpg" data-thumb="static/images/3.jpg" alt="" />--%>
            <%--<img src="static/images/4.jpg" data-thumb="static/images/4.jpg" alt="" />--%>
            <%--<img src="static/images/5.jpg" data-thumb="static/images/5.jpg" alt="" />--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<!------End Slider ------------>--%>
            <%--</div>--%>
            <%--<div class="clear"></div>--%>
            <%--</div>--%>
        </div>
    </div>
    <!------------End Header ------------>
    <div class="main">
        <div class="wrap">
            <div class="content">
                <div class="content_top">
                    <div class="heading">
                        <h3>New Products</h3>
                    </div>
                </div>
                <div class="section group">
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/end-game.jpg" alt="" /></a>
                        <h2><a href="preview.html">End Game</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$620.87</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/Sorority_Wars.jpg" alt="" /></a>
                        <h2><a href="preview.html">Sorority Wars</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$620.87</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/New-Moon-The-Score-cover-twilight.jpg" alt="" /></a>
                        <h2><a href="preview.html">Twilight New Moon</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$899.75</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/avatar_movie.jpg" alt="" /></a>
                        <h2><a href="preview.html">Avatar</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$599.00</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/black-swan.jpg" alt="" /></a>
                        <h2><a href="preview.html">Black Swan</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$679.87</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="content_bottom">
                    <div class="heading">
                        <h3>Feature Products</h3>
                    </div>
                </div>
                <div class="section group">
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/beauty_and_the_beast.jpg" alt="" /></a>
                        <h2><a href="preview.html">Beauty and the beast</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$620.87</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/Eclipse.jpg" alt="" /></a>
                        <h2><a href="preview.html">Eclipse</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$620.87</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/Coraline.jpg" alt="" /></a>
                        <h2><a href="preview.html">Coraline</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$899.75</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/Unstoppable.jpg" alt="" /></a>
                        <h2><a href="preview.html">Unstoppable</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$599.00</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="grid_1_of_5 images_1_of_5">
                        <a href="preview.html"><img src="static/images/Priest.jpg" alt="" /></a>
                        <h2><a href="preview.html">Priest 3D</a></h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$679.87</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><a href="preview.html">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>
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


