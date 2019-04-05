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
    <%--<link rel="stylesheet" type="text/css" href="static/css/main.css" />--%>
    <style type="text/css">
        .demo {
            width: 100%;
            margin: 40px auto 0 auto;
            min-height: 450px;
        }

        @media screen and (max-width: 560px) {
            .demo {
                width: 540px
            }
        }

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

        div.seatCharts-container {
            border-right: 1px dotted #adadad;
            width: 70%;
            padding: 20px;
            float: right;
        }
        div.seatCharts-legend {padding-left: 0px;position: absolute;bottom: 16px;}
        ul.seatCharts-legendList {padding-left: 0px;}
        .seatCharts-legendItem{float:left; width:90px;margin-top: 10px;line-height: 2;}
        span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;}
        .checkout-button {display: block;width:80px; height:24px; line-height:20px;margin: 10px auto;border:1px solid #999;font-size: 14px; cursor:pointer}
        #selected-seats {max-height: 150px;overflow-y: auto;overflow-x: none;width: 200px;}
        #selected-seats li{float:left; width:72px; height:26px; line-height:26px; border:1px solid #d3d3d3; background:#f7f7f7; margin:6px; font-size:14px; font-weight:bold; text-align:center}

        html,body,div,span,h1,h2,h3,h4,h5,h6,p,pre,a,code,em,img,small,strong,sub,sup,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label{margin:0;padding:0;border:0;outline:0;font-size:100%;vertical-align:baseline;background:transparent}
        a{color:#007bc4/*#424242*/; text-decoration:none;outline: none;}
        a:hover{text-decoration:underline}
        a:focus {outline:none; -moz-outline:none;}
        ol,ul{list-style:none}
        table{border-collapse:collapse;border-spacing:0}
        html{background:url(static/images/bg.png)}
        body{height:100%; font:14px/18px "Microsoft Yahei", Tahoma, Helvetica, Arial, Verdana, "\5b8b\4f53", sans-serif; color:#51555C; background: url(../images/body_bg.gif) repeat-x}
        img{border:none}


        #header{width:980px; height:90px; margin:0px auto; position:relative;}
        #logo{width:240px; height:90px; background:url(static/images/logo.png) 0 15px no-repeat}
        #logo h1{text-indent:-999em}
        #logo h1 a{display:block; width:240px; height:90px}


        #main{width:980px; min-height:600px; margin:30px auto 0 auto; border:1px solid #d3d3d3; background:#fff; -moz-border-radius:5px;-khtml-border-radius: 5px;-webkit-border-radius: 5px; border-radius:5px;}
        h2.top_title{margin:4px 20px; padding-top:15px; padding-left:20px; padding-bottom:10px; border-bottom:1px solid #d3d3d3; font-size:18px; color:#a84c10; background:url(../images/arrL.gif) no-repeat 2px 16px}

        #footer{height:60px;}
        #footer p{ padding:10px 2px; line-height:24px; text-align:center}
        #footer p a:hover{color:#51555C}
        #stat{display:none}

        .google_ad{width:728px; height:90px; margin:50px auto}
        .ad_76090,.ad_demo{width:760px; height:90px; margin:40px auto}
        .demo_topad{position:absolute; top:15px; right:0px; width:472px; height:60px;}


        @media screen and (min-width: 320px) and (max-width : 480px) {
            html{-webkit-text-size-adjust: none;}
            #header{width:100%}
            .logo{width:60px; height:60px; margin: 10px auto; background:url(../images/logo.png) no-repeat 0 10px;text-indent:-999em;}
            .logo a{display:block; width:60px; height:60px}
            #main{width:100%; margin:10px auto;  -moz-border-radius:0px;-khtml-border-radius: 0px;-webkit-border-radius: 0px; border-radius:0px;}
            .demo_topad{display:none}
            .google_ad{width:100%; margin:40px auto; text-align:center}
            .ad_76090,.ad_demo{width:100%; height:auto; margin:40px auto;text-align:center}
            .demo{width:98%; margin:10px auto}
        }


    </style>
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="static/assets/css/bootstrap.min.css" />
    <%--<link rel="stylesheet" href="static/assets/css/font-awesome.min.css" />--%>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="static/assets/css/jquery-ui.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="static/assets/css/ace-fonts.css" />

    <!-- ace styles -->
    <%--<link rel="stylesheet" href="static/assets/css/ace.min.css"  />--%>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="static/assets/css/ace-part2.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="static/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="static/assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="static/assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="static/assets/js/ace-extra.min.js"></script>
    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="static/assets/js/html5shiv.min.js"></script>
    <script src="static/assets/js/respond.min.js"></script>
    <![endif]-->
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
            <p><span id="legend"></span></p>
            <br><br><br><br><br><br>
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

            <div class="col-sm-6">

                <p><a href="#" id="id-btn-dialog2" class="btn btn-info btn-sm">确定购买</a></p>
                <p><a href="movie/detail?id=${ticketDto.movieid}" id="back" class="btn btn-primary btn-sm">返回电影详情</a></p>
                <%--<div id="" class="hide">--%>
                    <%--<p>--%>
                        <%--This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.--%>
                    <%--</p>--%>

                    <%--<div class="hr hr-12 hr-double"></div>--%>

                    <%--<p>--%>
                        <%--Currently using--%>
                        <%--<b>36% of your storage space</b>.--%>
                    <%--</p>--%>
                <%--</div><!-- #dialog-message -->--%>

                <div id="dialog-confirm" class="hide">
                    <div class="alert alert-info bigger-110">
                        <center>请扫描下面二维码，完成支付！</center>

                        <center><span><img src="static/img/scan.png"></span></center>
                    </div>

                    <div class="space-6"></div>

                    <p class="bigger-110 bolder center grey">
                        <i class="ace-icon fa fa-hand-o-right blue bigger-120"></i>
                    </p>
                </div><!-- #dialog-confirm -->
            </div><!-- ./span -->

        </div>
        <div style="clear:both"></div>
    </div>

    <br/>
</div>
<%--<script type="text/javascript" src="static/js/my.js"></script>--%>
<script type='text/javascript' src="static/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="static/js/jquery.seat-charts.min.js"></script>
<script type="text/javascript">
  var selectSeat = "";
  var price = ${ticketDto.price}; //票价
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
          selectSeat += this.settings.row+1 +"_"+this.settings.label + ",";

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
    sc.get(['1_2','1_1']).status('unavailable');

  });
  //计算总金额
  function recalculateTotal(sc) {
    var total = 0;
    sc.find('selected').each(function () {
      total += price;
    });

    return total;
  }

</script>

<div id="footer">
    <%@include file="../footer.jsp"%>
</div>
<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
  window.jQuery || document.write("<script src='static/assets/js/jquery.min.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='static/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
  if('ontouchstart' in document.documentElement) document.write("<script src='static/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="static/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="static/assets/js/jquery-ui.min.js"></script>
<script src="static/assets/js/jquery.ui.touch-punch.min.js"></script>

<!-- ace scripts -->
<script src="static/assets/js/ace-elements.min.js"></script>
<script src="static/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
  jQuery(function($) {

    $( "#datepicker" ).datepicker({
      showOtherMonths: true,
      selectOtherMonths: false,
      //isRTL:true,


      /*
      changeMonth: true,
      changeYear: true,

      showButtonPanel: true,
      beforeShow: function() {
          //change button colors
          var datepicker = $(this).datepicker( "widget" );
          setTimeout(function(){
              var buttons = datepicker.find('.ui-datepicker-buttonpane')
              .find('button');
              buttons.eq(0).addClass('btn btn-xs');
              buttons.eq(1).addClass('btn btn-xs btn-success');
              buttons.wrapInner('<span class="bigger-110" />');
          }, 0);
      }
*/
    });


    //override dialog's title function to allow for HTML titles
    $.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
      _title: function(title) {
        var $title = this.options.title || '&nbsp;'
        if( ("title_html" in this.options) && this.options.title_html == true )
          title.html($title);
        else title.text($title);
      }
    }));

    $( "#id-btn-dialog1" ).on('click', function(e) {
      e.preventDefault();

      var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
        modal: true,
        title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='ace-icon fa fa-check'></i> jQuery UI Dialog</h4></div>",
        title_html: true,
        buttons: [
          {
            text: "Cancel",
            "class" : "btn btn-xs",
            click: function() {
              $( this ).dialog( "close" );
            }
          },
          {
            text: "OK",
            "class" : "btn btn-primary btn-xs",
            click: function() {
              $( this ).dialog( "close" );
            }
          }
        ]
      });

      /**
       dialog.data( "uiDialog" )._title = function(title) {
						title.html( this.options.title );
					};
       **/
    });


    $( "#id-btn-dialog2" ).on('click', function(e) {
      e.preventDefault();

      var count = $('#counter').text();
      if (0 == count){
        alert("请先选择座位！");
        $( this ).dialog( "close" );
      }


      $( "#dialog-confirm" ).removeClass('hide').dialog({
        resizable: false,
        modal: true,
        title: "<div class='widget-header'><h4 class='smaller'><i class='ace-icon fa fa-exclamation-triangle red'></i> </h4></div>",
        title_html: true,
        buttons: [
          {
            html: "<i class='ace-icon fa fa-trash-o bigger-110'></i>支付完成",
            "class" : "btn btn-danger btn-xs",
            click: function() {

              var ticketId = ${ticketDto.id};
              var userId = "${sessionScope.userId}";
              alert("selectSeat : " + selectSeat + "ticketId=" + ticketId + " userId: " + userId);

              $( this ).dialog( "close" );

              window.location.href = "movie/wall";
            }
          }
          ,
          {
            html: "<i class='ace-icon fa fa-times bigger-110'></i>取消支付",
            "class" : "btn btn-xs",
            click: function() {
              $( this ).dialog( "close" );
            }
          }
        ]
      });
    });



    //autocomplete
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });

    //custom autocomplete (category selection)
    $.widget( "custom.catcomplete", $.ui.autocomplete, {
      _renderMenu: function( ul, items ) {
        var that = this,
            currentCategory = "";
        $.each( items, function( index, item ) {
          if ( item.category != currentCategory ) {
            ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
            currentCategory = item.category;
          }
          that._renderItemData( ul, item );
        });
      }
    });

    var data = [
      { label: "anders", category: "" },
      { label: "andreas", category: "" },
      { label: "antal", category: "" },
      { label: "annhhx10", category: "Products" },
      { label: "annk K12", category: "Products" },
      { label: "annttop C13", category: "Products" },
      { label: "anders andersson", category: "People" },
      { label: "andreas andersson", category: "People" },
      { label: "andreas johnson", category: "People" }
    ];
    $( "#search" ).catcomplete({
      delay: 0,
      source: data
    });


    //tooltips
    $( "#show-option" ).tooltip({
      show: {
        effect: "slideDown",
        delay: 250
      }
    });

    $( "#hide-option" ).tooltip({
      hide: {
        effect: "explode",
        delay: 250
      }
    });

    $( "#open-event" ).tooltip({
      show: null,
      position: {
        my: "left top",
        at: "left bottom"
      },
      open: function( event, ui ) {
        ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
      }
    });


    //Menu
    $( "#menu" ).menu();


    //spinner
    var spinner = $( "#spinner" ).spinner({
      create: function( event, ui ) {
        //add custom classes and icons
        $(this)
        .next().addClass('btn btn-success').html('<i class="ace-icon fa fa-plus"></i>')
        .next().addClass('btn btn-danger').html('<i class="ace-icon fa fa-minus"></i>')

        //larger buttons on touch devices
        if('touchstart' in document.documentElement)
          $(this).closest('.ui-spinner').addClass('ui-spinner-touch');
      }
    });

    //slider example
    $( "#slider" ).slider({
      range: true,
      min: 0,
      max: 500,
      values: [ 75, 300 ]
    });



    //jquery accordion
    $( "#accordion" ).accordion({
      collapsible: true ,
      heightStyle: "content",
      animate: 250,
      header: ".accordion-header"
    }).sortable({
      axis: "y",
      handle: ".accordion-header",
      stop: function( event, ui ) {
        // IE doesn't register the blur when sorting
        // so trigger focusout handlers to remove .ui-state-focus
        ui.item.children( ".accordion-header" ).triggerHandler( "focusout" );
      }
    });
    //jquery tabs
    $( "#tabs" ).tabs();


    //progressbar
    $( "#progressbar" ).progressbar({
      value: 37,
      create: function( event, ui ) {
        $(this).addClass('progress progress-striped active')
        .children(0).addClass('progress-bar progress-bar-success');
      }
    });


  });
</script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="static/assets/css/ace.onpage-help.css" />
<link rel="stylesheet" href="static/docs/assets/js/themes/sunburst.css" />

<script type="text/javascript"> ace.vars['base'] = '..'; </script>
<script src="static/assets/js/ace/elements.onpage-help.js"></script>
<script src="static/assets/js/ace/ace.onpage-help.js"></script>
<script src="static/docs/assets/js/rainbow.js"></script>
<script src="static/docs/assets/js/language/generic.js"></script>
<script src="static/docs/assets/js/language/html.js"></script>
<script src="static/docs/assets/js/language/css.js"></script>
<script src="static/docs/assets/js/language/javascript.js"></script>
</body>
</html>