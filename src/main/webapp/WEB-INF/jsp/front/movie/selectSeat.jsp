<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width; initial-scale=1.0">
    <title>电影选座</title>
    <link rel="stylesheet" type="text/css" href="static/css/main.css" />
    <style type="text/css">
        .demo{width:700px; margin:40px auto 0 auto; min-height:450px;}
        @media screen and (max-width: 360px) {.demo {width:340px}}

        .front{width: 300px;margin: 5px 32px 45px 32px;background-color: #f0f0f0;	color: #666;text-align: center;padding: 3px;border-radius: 5px;}
        .booking-details {float: right;position: relative;width:200px;height: 450px; }
        .booking-details h3 {margin: 5px 5px 0 0;font-size: 16px;}
        .booking-details p{line-height:26px; font-size:16px; color:#999}
        .booking-details p span{color:#666}
        div.seatCharts-cell {color: #182C4E;height: 25px;width: 25px;line-height: 25px;margin: 3px;float: left;text-align: center;outline: none;font-size: 13px;}
        div.seatCharts-seat {color: #fff;cursor: pointer;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;}
        div.seatCharts-row {height: 35px;}
        div.seatCharts-seat.available {background-color: #B9DEA0;}
        div.seatCharts-seat.available.first-class {
            /* 	background: url(vip.png); */
            background-color: #c31e1f;
        }
        div.seatCharts-seat.focused {background-color: #6f65b4;border: none;}
        div.seatCharts-seat.selected {background-color: #E6CAC4;}
        div.seatCharts-seat.unavailable {background-color: #472B34;cursor: not-allowed;}
        div.seatCharts-container {border-right: 1px dotted #adadad;width: 600px;padding: 20px;float: left;}
        div.seatCharts-legend {padding-left: 0px;position: absolute;bottom: 16px;}
        ul.seatCharts-legendList {padding-left: 0px;}
        .seatCharts-legendItem{float:left; width:90px;margin-top: 10px;line-height: 2;}
        span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;}
        .checkout-button {display: block;width:80px; height:24px; line-height:20px;margin: 10px auto;border:1px solid #999;font-size: 14px; cursor:pointer}
        #selected-seats {max-height: 150px;overflow-y: auto;overflow-x: none;width: 200px;}
        #selected-seats li{float:left; width:72px; height:26px; line-height:26px; border:1px solid #d3d3d3; background:#f7f7f7; margin:6px; font-size:14px; font-weight:bold; text-align:center}
    </style>

</head>

<body>
<div id="header">
    <div id="logo"><h1><a href="#" title="返回首页">返回首页</a></h1></div>
</div>

<div id="main">
    <div class="demo">
        <div id="seat-map">
            <div class="front">屏幕</div>
        </div>
        <div class="booking-details">
            <p>电影名称：<span>${ticketDto.movieName}</span></p>
            <p>影院名称：<span>${ticketDto.cinemaName}</span></p>
            <p>影厅名称：<span>${ticketDto.hallname}</span></p>
            <p>日期：<span>${ticketDto.day}</span></p>
            <p>时间：<span>${ticketDto.time}</span></p>
            <p>类型：<span>${ticketDto.type}</span></p>
            <p>票价：<span>￥${ticketDto.price}/张</span></p>
            <p>座位：</p>
            <ul id="selected-seats"></ul>
            <p>票数：<span id="counter">0</span></p>
            <p>总计：<b>￥<span id="total">0</span></b></p>

            <button class="checkout-button" id="btn1">确定购买</button>

            <div id="legend"></div>
        </div>
        <div style="clear:both"></div>
    </div>

    <br/>
</div>
<%--<script type="text/javascript" src="static/js/my.js"></script>--%>
<script type='text/javascript' src="static/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="static/js/jquery.seat-charts.min.js"></script>
<script type="text/javascript">
    var price = 80; //票价
    $(document).ready(function() {
        var $cart = $('#selected-seats'), //座位区
            $counter = $('#counter'), //票数
            $total = $('#total'); //总计金额

        var sc = $('#seat-map').seatCharts({
            map:[
          <c:forEach items="${seatInfo}" var="seatInfo">
            ${seatInfo.seat}
          </c:forEach>
            ]
          ,
          seats: {
            r: {
              classes: 'first-class' //your custom CSS class
            }
          },
            naming : {
                top : false
            },
            legend : { //定义图例
                node : $('#legend'),
                items : [
                    [ 'a', 'available',   '可选座' ],
                    [ 'r', 'available',   '推荐座' ],
                    [ 'a', 'unavailable', '已售出']
                ]
            },
            click: function () { //点击事件
                if (this.status() == 'available') { //可选座
                    $('<li>'+(this.settings.row+1)+'排'+this.settings.label+'座</li>')
                        .attr('id', 'cart-item-'+this.settings.id)
                        .data('seatId', this.settings.id)
                        .appendTo($cart);

                    $counter.text(sc.find('selected').length+1);
                    $total.text(recalculateTotal(sc)+price);

                    return 'selected';
                } else if (this.status() == 'selected') { //已选中
                    //更新数量
                    $counter.text(sc.find('selected').length-1);
                    //更新总计
                    $total.text(recalculateTotal(sc)-price);

                    //删除已预订座位
                    $('#cart-item-'+this.settings.id).remove();
                    //可选座
                    return 'available';
                } else if (this.status() == 'unavailable') { //已售出
                    return 'unavailable';
                } else {
                    return this.style();
                }
            }
        });
        //已售出的座位
        // sc.get(['1_2', '4_4','4_5','6_6','6_7','8_5','8_6','8_7','8_8', '10_1', '10_2']).status('unavailable');
      sc.get(['1_2']).status('unavailable');

    });
    //计算总金额
    function recalculateTotal(sc) {
        var total = 0;
        sc.find('selected').each(function () {
            total += price;
        });

        return total;
    }

    $('#btn1').click(function () {
      alert("确定购买!2");
    });
</script>

<div id="footer">
    <%@include file="../footer.jsp"%>
</div>
</body>
</html>