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
<%@include file="../head.jsp"%>
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
                                        <p>����ѡ�� :</p>
                                        <select>
                                            <option>3��10��</option>
                                            <option>3��11��</option>
                                            <option>3��12��</option>
                                            <option>3��13��</option>
                                            <option>3��14��</option>
                                            <option>3��15��</option>
                                        </select>
                                </li>

                                <li>
                                        <p>ӰԺѡ�� :</p>
                                        <select>
                                            <option>�нֱȸߵ�ӰԺ</option>
                                            <option>3��11��</option>
                                            <option>3��12��</option>
                                            <option>3��13��</option>
                                            <option>3��14��</option>
                                            <option>3��15��</option>
                                        </select>
                                </li>
                                <li>
                                        <div class="button"><span><a href="movie/seat">��Ӱѡ��</a></span></div>
                                        <div class="clear"></div>
                                </li>

                            </ul>
                        </div>
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
<%@include file="../footer.jsp"%>
<script type="text/javascript">
    $(document).ready(function() {
        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

