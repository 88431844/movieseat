<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath =
            request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                    + path + "/";
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
    <script>
      function checkInfo() {
        var daySelected = $("#daySelected").val();
        var ticketId = $("#ticketId").val();
        if (daySelected == 0) {
          alert("请先选择日期")
        } else if (ticketId == 0) {
          alert("无影片档期，不可选座")
        } else {
          var id = $("#ticketId option:selected").val();
          window.location.href = "movie/seat?ticketId=" + id;
        }
      }

      function getTicket() {
        var day = $("#daySelected").val();
        var movieId = $("#movieId").val();
        $.ajax({
          type: "post",
          url: "ticket/getTicketByDay" + "?day=" + day + "&movieId=" + movieId,
          // data: {"day":day},
          dataType: "json",
          success: function (data) {
            //下拉菜单id
            var c = $("#ticketId");
            //清空菜单
            c.empty();
            //json格式的对象数组
            var items = eval(data);
            $.each(items, function (index, item) {
              //名称与id
              var cname = items[index].myInfo;
              var cid = items[index].ticketId;
              c.append("<option value='" + cid + "'>" + cname + "</option>");
            });
          }

        });

      }
    </script>
</head>
<body>
<%@include file="../head.jsp" %>
<div class="main">
    <div class="wrap">

        <div class="section group">
            <div class="cont-desc span_1_of_2">
                <div class="product-details">
                    <div class="grid static/images_3_of_2">
                        <img src="uploadFile/${movieInfo.img}" alt="电影海报" width="100%"
                             height="800px"/>
                    </div>
                    <div class="desc span_3_of_2">
                        <h2>电影名称 ： ${movieInfo.name} </h2>
                        <input type="hidden" name="movieId" id="movieId" value="${movieInfo.id}">
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
                                        <textarea class="autosize-transition" id="synopsis"
                                                  cols="120" rows="10"
                                                  readonly="readonly"
                                                  name="synopsis">${movieInfo.synopsis}</textarea>
                                    </div>
                                </li>
                                <li>
                                    <p>日期选择 :</p>
                                    <select name="day" id="daySelected" onchange="getTicket()">
                                        <option value="0">请选择</option>
                                        <c:forEach items="${dateList}" var="dateList">
                                            <option value="${dateList.day}">${dateList.day}</option>
                                        </c:forEach>
                                    </select>
                                </li>

                                <li>
                                    <p>观影选择 :</p>
                                    <select name="ticketId" id="ticketId">
                                        <option value="0">请先选择日期</option>
                                    </select>
                                </li>
                                <li>
                                    <div class="button"><span><a
                                            onclick="checkInfo()">电影选座</a></span></div>
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
                            <a href="movie/detail?id=${lastFiveMovie.id}"><img
                                    src="uploadFile/${lastFiveMovie.img}"
                                    alt=""/></a>
                        </div>
                        <div class="movie_desc">
                            <h3>
                                <a href="movie/detail?id=${lastFiveMovie.id}">${lastFiveMovie.name}</a>
                            </h3>
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
<%@include file="../footer.jsp" %>
<script type="text/javascript">
  $(document).ready(function () {
    $().UItoTop({easingType: 'easeOutQuart'});

  });
</script>
<a href="#" id="toTop"><span id="toTopHover"> </span></a>
<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'
            charset='gb2312'></script>
</div>
</body>
</html>

