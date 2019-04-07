<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="navbar" class="navbar navbar-default">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">

        <!-- /section:basics/sidebar.mobile.toggle -->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a  class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    用户中心
                </small>
            </a>

            <!-- /section:basics/navbar.layout.brand -->

            <!-- #section:basics/navbar.toggle -->

            <!-- /section:basics/navbar.toggle -->
        </div>

        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <!-- #section:basics/navbar.user_menu -->
                <li class="green">
                    <a data-toggle="dropdown" href="admin/adminLogin" class="dropdown-toggle">
                        <span class="user-info">
									<small>欢迎</small>
                            <%
                                out.print(session.getAttribute("nickName"));
                            %>
								</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

                        <li>
                            <a href="movie/wall">
                                <i class="ace-icon fa fa-power-off"></i>
                                返回电影墙
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>
        <!-- /section:basics/navbar.dropdown -->
    </div><!-- /.navbar-container -->
</div>