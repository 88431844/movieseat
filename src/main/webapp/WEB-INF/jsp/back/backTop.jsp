<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="navbar" class="navbar navbar-default">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <!-- #section:basics/sidebar.mobile.toggle -->
        <%--<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">--%>
        <%--<span class="sr-only"></span>--%>
        <%--Toggle sidebar--%>
        <%--<span class="icon-bar"></span>--%>

        <%--<span class="icon-bar"></span>--%>

        <%--<span class="icon-bar"></span>--%>
        <%--</button>--%>

        <!-- /section:basics/sidebar.mobile.toggle -->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="#" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    后台管理
                </small>
            </a>

            <!-- /section:basics/navbar.layout.brand -->

            <!-- #section:basics/navbar.toggle -->

            <!-- /section:basics/navbar.toggle -->
        </div>

        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="grey">
                    <%--<a data-toggle="dropdown" class="dropdown-toggle" href="#">--%>
                    <%--<i class="ace-icon fa fa-tasks"></i>--%>
                    <%--<span class="badge badge-grey">4</span>--%>
                    <%--</a>--%>

                    <%--<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">--%>
                    <%--<li class="dropdown-header">--%>
                    <%--<i class="ace-icon fa fa-check"></i>--%>
                    <%--4 Tasks to complete--%>
                    <%--</li>--%>

                    <%--<li>--%>
                    <%--<a href="#">--%>
                    <%--<div class="clearfix">--%>
                    <%--<span class="pull-left">Software Update</span>--%>
                    <%--<span class="pull-right">65%</span>--%>
                    <%--</div>--%>

                    <%--<div class="progress progress-mini">--%>
                    <%--<div style="width:65%" class="progress-bar"></div>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>

                    <%--<li>--%>
                    <%--<a href="#">--%>
                    <%--<div class="clearfix">--%>
                    <%--<span class="pull-left">Hardware Upgrade</span>--%>
                    <%--<span class="pull-right">35%</span>--%>
                    <%--</div>--%>

                    <%--<div class="progress progress-mini">--%>
                    <%--<div style="width:35%" class="progress-bar progress-bar-danger"></div>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>

                    <%--<li>--%>
                    <%--<a href="#">--%>
                    <%--<div class="clearfix">--%>
                    <%--<span class="pull-left">Unit Testing</span>--%>
                    <%--<span class="pull-right">15%</span>--%>
                    <%--</div>--%>

                    <%--<div class="progress progress-mini">--%>
                    <%--<div style="width:15%" class="progress-bar progress-bar-warning"></div>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>

                    <%--<li>--%>
                    <%--<a href="#">--%>
                    <%--<div class="clearfix">--%>
                    <%--<span class="pull-left">Bug Fixes</span>--%>
                    <%--<span class="pull-right">90%</span>--%>
                    <%--</div>--%>

                    <%--<div class="progress progress-mini progress-striped active">--%>
                    <%--<div style="width:90%" class="progress-bar progress-bar-success"></div>--%>
                    <%--</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>

                    <%--<li class="dropdown-footer">--%>
                    <%--<a href="#">--%>
                    <%--See tasks with details--%>
                    <%--<i class="ace-icon fa fa-arrow-right"></i>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                </li>

                <%--<li class="purple">--%>
                <%--<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">--%>
                <%--<li class="dropdown-header">--%>
                <%--<i class="ace-icon fa fa-exclamation-triangle"></i>--%>
                <%--8 Notifications--%>
                <%--</li>--%>

                <%--<li>--%>
                <%--<a href="#">--%>
                <%--<div class="clearfix">--%>
                <%--<span class="pull-left">--%>
                <%--<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>--%>
                <%--New Comments--%>
                <%--</span>--%>
                <%--<span class="pull-right badge badge-info">+12</span>--%>
                <%--</div>--%>
                <%--</a>--%>
                <%--</li>--%>

                <%--<li>--%>
                <%--<a href="#">--%>
                <%--<i class="btn btn-xs btn-primary fa fa-user"></i>--%>
                <%--Bob just signed up as an editor ...--%>
                <%--</a>--%>
                <%--</li>--%>

                <%--<li>--%>
                <%--<a href="#">--%>
                <%--<div class="clearfix">--%>
                <%--<span class="pull-left">--%>
                <%--<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>--%>
                <%--New Orders--%>
                <%--</span>--%>
                <%--<span class="pull-right badge badge-success">+8</span>--%>
                <%--</div>--%>
                <%--</a>--%>
                <%--</li>--%>

                <%--<li>--%>
                <%--<a href="#">--%>
                <%--<div class="clearfix">--%>
                <%--<span class="pull-left">--%>
                <%--<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>--%>
                <%--Followers--%>
                <%--</span>--%>
                <%--<span class="pull-right badge badge-info">+11</span>--%>
                <%--</div>--%>
                <%--</a>--%>
                <%--</li>--%>

                <%--<li class="dropdown-footer">--%>
                <%--<a href="#">--%>
                <%--See all notifications--%>
                <%--<i class="ace-icon fa fa-arrow-right"></i>--%>
                <%--</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</li>--%>
                <!-- #section:basics/navbar.user_menu -->
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="static/assets/avatars/user.jpg" alt="Jason's Photo"/>
                        <span class="user-info">
									<small>欢迎</small>
                            <%
                                out.print(session.getAttribute("adminUserName"));
                            %>
								</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <%--<li>--%>
                        <%--<a href="#">--%>
                        <%--<i class="ace-icon fa fa-cog"></i>--%>
                        <%--Settings--%>
                        <%--</a>--%>
                        <%--</li>--%>

                        <%--<li>--%>
                        <%--<a href="profile.html">--%>
                        <%--<i class="ace-icon fa fa-user"></i>--%>
                        <%--Profile--%>
                        <%--</a>--%>
                        <%--</li>--%>

                        <%--<li class="divider"></li>--%>

                        <li>
                            <a href="admin/adminLogout">
                                <i class="ace-icon fa fa-power-off"></i>
                                登出
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