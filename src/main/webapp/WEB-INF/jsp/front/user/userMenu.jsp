<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sidebar" class="sidebar                  responsive">
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'fixed')
        } catch (e) {
        }
    </script>
    <script>
      function info() {
        alert("功能暂未开放，敬请期待！")
      }
    </script>
    <ul class="nav nav-list">

        <li class="">
            <a href="user/toUserCenter?userId=${sessionScope.get("userId")}">
                <i class="menu-icon fa fa-film"></i>
                <span class="menu-text"> 影单管理 </span>
            </a>

            <b class="arrow"></b>
        </li>



        <li class="">
            <a href="user/toUserCenter?userId=${sessionScope.get("userId")}" onclick="info()">
                <i class="menu-icon glyphicon glyphicon-book"></i>
                <span class="menu-text"> 积分管理 </span>
            </a>

            <b class="arrow"></b>
        </li>

        <li class="">
            <a href="user/toUserCenter?userId=${sessionScope.get("userId")}" onclick="info()">
                <i class="menu-icon glyphicon glyphicon-book"></i>
                <span class="menu-text"> 会员卡管理 </span>
            </a>

            <b class="arrow"></b>
        </li>

        <li class="">
            <a href="user/toUserCenter?userId=${sessionScope.get("userId")}" onclick="info()">
                <i class="menu-icon glyphicon glyphicon-book"></i>
                <span class="menu-text"> 订单管理 </span>
            </a>

            <b class="arrow"></b>
        </li>

    </ul><!-- /.nav-list -->
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'collapsed')
        } catch (e) {
        }
    </script>
</div>
