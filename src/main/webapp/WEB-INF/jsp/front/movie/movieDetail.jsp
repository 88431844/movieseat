<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<head>
    <base href="<%=basePath%>">
    <title>电影详情</title>
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
                        <img src="uploadFile/${movieInfo.img}" alt="电影海报" width="100%" height="800px"/>
                    </div>
                    <div class="desc span_3_of_2">
                        <h2>电影名称 ： ${movieInfo.name} </h2>
                        <div class="available">
                            <ul>
                                <li><span>导演:</span> &nbsp; ${movieInfo.starring}</li>
                                <li><span>编剧:</span>&nbsp; ${movieInfo.screenwriter}</li>
                                <li><span>主演:</span>&nbsp; ${movieInfo.starring}</li>
                                <li><span>类型:</span>&nbsp; ${movieInfo.type}</li>
                                <li><span>语言:</span>&nbsp; ${movieInfo.language}</li>
                                <li><span>上映日期:</span>&nbsp; ${movieInfo.releasedate}</li>
                                <li><span>片长:</span>&nbsp; ${movieInfo.length}分钟</li>
                                <li>

                                    <div class="product_desc">
                                        <span>剧情简介 :</span>
                                        <textarea class="autosize-transition" id="synopsis" cols="120" rows="10"
                                                  disabled=""
                                                  name="synopsis">${movieInfo.synopsis}</textarea>
                                    </div>
                                </li>
                                <li>
                                        <p>日期选择 :</p>
                                        <select>
                                            <option>3月10日</option>
                                            <option>3月11日</option>
                                            <option>3月12日</option>
                                            <option>3月13日</option>
                                            <option>3月14日</option>
                                            <option>3月15日</option>
                                        </select>
                                </li>

                                <li>
                                        <p>影院选择 :</p>
                                        <select>
                                            <option>中街比高电影院</option>
                                            <option>3月11日</option>
                                            <option>3月12日</option>
                                            <option>3月13日</option>
                                            <option>3月14日</option>
                                            <option>3月15日</option>
                                        </select>
                                </li>
                                <li>
                                        <div class="button"><span><a href="movie/seat">电影选座</a></span></div>
                                        <div class="clear"></div>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>

            </div>
            <div class="rightsidebar span_3_of_1 sidebar">
                <h2>最新电影</h2>
                <c:forEach items="${lastFiveMovie}" var="lastFiveMovie">
                    <div class="special_movies">
                        <div class="movie_poster">
                            <a href="movie/detail"><img src="uploadFile/${lastFiveMovie.img}" alt=""/></a>
                        </div>
                        <div class="movie_desc">
                            <h3><a href="movie/detail?id=${lastFiveMovie.id}">${lastFiveMovie.name}</a></h3>
                            <p></p>
                            <span><a href="movie/detail?id=${lastFiveMovie.id}">电影详情</a></span>
                        </div>
                        <div class="clear"></div>
                    </div>
                </c:forEach>
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

