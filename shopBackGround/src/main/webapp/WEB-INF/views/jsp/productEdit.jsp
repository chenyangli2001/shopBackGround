<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2020/7/17
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品修改页面</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <script src="${pageContext.request.contextPath}/static/back/js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/back/js/respond.min.js"></script>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/back/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">
    <!-- 页面头部 -->
    <header class="main-header">
        <!-- Logo -->
        <a href="all-admin-index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>数据</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>数据</b>后台管理</span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有4个邮件</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/static/back/img/user2-160x160.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                系统消息
                                                <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
                                            </h4>
                                            <p>欢迎登录系统?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/static/back/img/user3-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                团队消息
                                                <small><i class="fa fa-clock-o"></i> 2 小时前</small>
                                            </h4>
                                            <p>你有新的任务了</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/static/back/img/user4-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/static/back/img/user3-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/static/back/img/user4-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Reviewers
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- Notifications: style can be found in dropdown.less -->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有10个新消息</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-warning text-yellow"></i> Very long description here that
                                            may not
                                            fit into the page and may cause design problems
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 5 new members joined
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user text-red"></i> You changed your username
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks: style can be found in dropdown.less -->
                    <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有9个新任务</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Create a nice theme
                                                <small class="pull-right">40%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-green" style="width: 40%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">40% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Some task I need to do
                                                <small class="pull-right">60%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-red" style="width: 60%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Make beautiful transitions
                                                <small class="pull-right">80%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-yellow" style="width: 80%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">80% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${pageContext.request.contextPath}/static/back/img/user2-160x160.jpg"
                                 class="user-image" alt="User Image">
                            <span class="hidden-xs">张猿猿</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="${pageContext.request.contextPath}/static/back/img/user2-160x160.jpg"
                                     class="img-circle" alt="User Image">
                                <p>
                                    张猿猿 - 数据管理员
                                    <small>最后登录 11:20AM</small>
                                </p>
                            </li>
                            <!-- Menu Body
                    <li class="user-body">
                        <div class="row">
                            <div class="col-xs-4 text-center">
                                <a href="#">Followers</a>
                            </div>
                            <div class="col-xs-4 text-center">
                                <a href="#">Sales</a>
                            </div>
                            <div class="col-xs-4 text-center">
                                <a href="#">Friends</a>
                            </div>
                        </div>
                    </li>-->
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">修改密码</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${pageContext.request.contextPath}/static/back/img/user2-160x160.jpg" class="img-circle"
                         alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>张猿猿</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <!-- search form -->
            <!--<form action="#" method="get" class="sidebar-form">
        <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="搜索...">
            <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
            </button>
          </span>
        </div>
    </form>-->
            <!-- /.search form -->


            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">菜单</li>

                <li id="admin-index"><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> <span>首页</span></a>
                </li>

                <!-- 菜单 -->


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder"></i> <span>后台通用页面</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="admin-login">
                            <a href="all-admin-login.html">
                                <i class="fa fa-circle-o"></i> 登录
                            </a>
                        </li>

                        <li id="admin-register">
                            <a href="all-admin-register.html">
                                <i class="fa fa-circle-o"></i> 注册
                            </a>
                        </li>

                        <li id="admin-404">
                            <a href="all-admin-404.html">
                                <i class="fa fa-circle-o"></i> 404页
                            </a>
                        </li>

                        <li id="admin-500">
                            <a href="all-admin-500.html">
                                <i class="fa fa-circle-o"></i> 500页
                            </a>
                        </li>

                        <li id="admin-blank">
                            <a href="all-admin-blank.html">
                                <i class="fa fa-circle-o"></i> 空白页
                            </a>
                        </li>

                        <li id="admin-datalist">
                            <a href="all-admin-datalist.html">
                                <i class="fa fa-circle-o"></i> 数据列表页
                            </a>
                        </li>

                        <li id="admin-dataform">
                            <a href="all-admin-dataform.html">
                                <i class="fa fa-circle-o"></i> 表单页
                            </a>
                        </li>

                        <li id="admin-profile">
                            <a href="all-admin-profile.html">
                                <i class="fa fa-circle-o"></i> 个人中心
                            </a>
                        </li>

                        <li id="admin-invoice">
                            <a href="all-admin-invoice.html">
                                <i class="fa fa-circle-o"></i> 发票
                            </a>
                        </li>

                        <li id="admin-invoice-print">
                            <a href="all-admin-invoice-print.html">
                                <i class="fa fa-circle-o"></i> 发票打印
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-pie-chart"></i> <span>图表Charts</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="charts-chartjs">
                            <a href="all-charts-chartjs.html">
                                <i class="fa fa-circle-o"></i> ChartJS
                            </a>
                        </li>

                        <li id="charts-morris">
                            <a href="all-charts-morris.html">
                                <i class="fa fa-circle-o"></i> Morris Charts
                            </a>
                        </li>

                        <li id="charts-flot">
                            <a href="all-charts-flot.html">
                                <i class="fa fa-circle-o"></i> Flot Charts
                            </a>
                        </li>

                        <li id="charts-inline">
                            <a href="all-charts-inline.html">
                                <i class="fa fa-circle-o"></i> Inline Charts
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-laptop"></i> <span>UI界面元素</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="elements-general">
                            <a href="all-elements-general.html">
                                <i class="fa fa-circle-o"></i> 标准 General
                            </a>
                        </li>

                        <li id="elements-icons">
                            <a href="all-elements-icons.html">
                                <i class="fa fa-circle-o"></i> 图标 Icons
                            </a>
                        </li>

                        <li id="elements-buttons">
                            <a href="all-elements-buttons.html">
                                <i class="fa fa-circle-o"></i> 按钮 Buttons
                            </a>
                        </li>

                        <li id="elements-sliders">
                            <a href="all-elements-sliders.html">
                                <i class="fa fa-circle-o"></i> 滑块 Sliders
                            </a>
                        </li>

                        <li id="elements-timeline">
                            <a href="all-elements-timeline.html">
                                <i class="fa fa-circle-o"></i> 时间线 Timeline
                            </a>
                        </li>

                        <li id="elements-modals">
                            <a href="all-elements-modals.html">
                                <i class="fa fa-circle-o"></i> 对话框样式 Modals
                            </a>
                        </li>

                        <li id="elements-widgets">
                            <a href="all-elements-widgets.html">
                                <i class="fa fa-circle-o"></i> 窗体小部件 widgets
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-edit"></i> <span>表单 Forms</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="form-general">
                            <a href="all-form-general.html">
                                <i class="fa fa-circle-o"></i> 基础表单元素
                            </a>
                        </li>

                        <li id="form-advanced">
                            <a href="all-form-advanced.html">
                                <i class="fa fa-circle-o"></i> 高级表单元素
                            </a>
                        </li>

                        <li id="form-editors">
                            <a href="all-form-editors.html">
                                <i class="fa fa-circle-o"></i> 编辑器
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-table"></i> <span>表格 tables</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="tables-simple">
                            <a href="all-tables-simple.html">
                                <i class="fa fa-circle-o"></i> 简单表格
                            </a>
                        </li>

                        <li id="tables-data">
                            <a href="all-tables-data.html">
                                <i class="fa fa-circle-o"></i> 数据表格
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cube"></i> <span>样例-订单管理</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="order-manage">
                            <a href="all-order-manage-list.html">
                                <i class="fa fa-circle-o"></i> 全部订单
                            </a>
                        </li>

                        <li id="order-cancel">
                            <a href="all-order-cancel-list.html">
                                <i class="fa fa-circle-o"></i> 退款
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-book"></i> <span>样例-游记管理</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="travellog-manage">
                            <a href="all-travellog-manage-list.html">
                                <i class="fa fa-circle-o"></i> 游记列表
                            </a>
                        </li>

                        <li id="travellog-review">
                            <a href="all-travellog-review-list.html">
                                <i class="fa fa-circle-o"></i> 游记点评
                            </a>
                        </li>

                        <li id="travellog-setting">
                            <a href="all-travellog-setting-edit.html">
                                <i class="fa fa-circle-o"></i> 游记设置
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cogs"></i> <span>样例-系统管理</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">

                        <li id="system-setting">
                            <a href="all-system-setting-edit.html">
                                <i class="fa fa-circle-o"></i> 系统设置
                            </a>
                        </li>

                    </ul>
                </li>


                <!-- 菜单 /-->

                <li id="admin-documentation"><a href="documentation.html" target="_blank"><i class="fa fa-book"></i>
                    <span>AdminLTE汉化文档</span></a></li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                订单管理
                <small>订单表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="all-order-manage-list.html">订单管理</a></li>
                <li class="active">订单表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!--订单信息-->
            <div class="panel panel-default">
                <div class="panel-heading">商品信息</div>
                <div class="row data-type">

                    <div class="col-md-2 title">商品编号</div>
                    <div class="col-md-4 data">
                        <input id="id"  type="text" class="form-control" disabled="disabled" value="${id}">
                        <span></span>
                    </div>

                    <div class="col-md-2 title">商品名称</div>
                    <div class="col-md-4 data">
                        <input id="pname" type="text" class="form-control" placeholder="商品名称不能为空！">
                    </div>

                    <div class="col-md-2 title">商品市场价</div>
                    <div class="col-md-4 data">
                        <input id="marketprice" type="text" class="form-control" placeholder="商品市场价不能为空！">
                    </div>

                    <div class="col-md-2 title">商品商城价</div>
                    <div class="col-md-4 data">
                        <input id="shopprice" type="text" class="form-control" placeholder="商品商城价不能为空！">
                    </div>

                    <div class="col-md-2 title">商品热度</div>
                    <div class="col-md-4 data" style="border-bottom:1px solid #d4d4d4">
                        <input name="hot" type="radio" value="1" checked>热门
                        <input name="hot" type="radio" value="0">非热门
                    </div>

                    <div class="col-md-2 title">商品类型</div>
                    <div class="col-md-4 data" style="border-bottom:1px solid #d4d4d4">
                        <select id="type" class="form-control select2" style="width: 100%;">
                            <option>asdfsaf</option>
                        </select>
                    </div>

                    <div class="col-md-2 title" style="height: 180px;line-height: 180px">商品图示</div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <div>
                                <img id="img" height="150px"></div>
                            <input type="file" id="imgFile" style="display: inline-block;width: 200px">
                            <span class="help-block" style="font-size: 12px;"></span>
                        </div>
                    </div>

                    <div class="col-md-2 title" style="height: 180px;line-height: 180px">商品介绍</div>
                    <div class="col-md-4">
                        <textarea id="info" class="form-control" rows="5"></textarea>
                        <span class="help-block"></span>
                    </div>

                </div>
            </div>
            <!--订单信息/-->

            <!--工具栏-->
            <div class="box-tools text-center">
                <button id="submit" type="button" class="btn bg-maroon">保存</button>
                <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
            </div>
            <!--工具栏/-->

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2019-2020 <a href="http://www.baidu.com">研究院研发部</a>.</strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>


<script src="${pageContext.request.contextPath}/static/back/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/morris/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/daterangepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/fastclick/fastclick.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/adminLTE/js/app.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/treeTable/jquery.treetable.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/select2/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/chartjs/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/flot/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/static/back/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/productEdit.js"></script>
<script type="text/javascript">
    $(function () {
        var id = $("#id").val();
        var typeList = $("#type")
        typeList.empty();
        $.ajax({
            url: "${pageContext.request.contextPath}/getCate",
            type: "GET",
            success: function (result) {
                $.each(result, function () {
                    var type = $("<option></option>").append(this.cname).attr("value", this.cid);
                    type.appendTo(typeList);
                })
            },
            "error": function () {
                alert("获取该商品类型列表失败!");
            }
        });
        $.ajax({
            url: "${pageContext.request.contextPath}/getProById",
            data: "id=" + id,
            type: "GET",
            success: function (result) {
                $("#pname").val(result.pname);
                $("#marketprice").val(result.marketPrice);
                $("#shopprice").val(result.shopPrice);
                $("input[name=hot]").val(result.isHot);
                $("#type").val(result.cid);
                $("#img").attr("src", "${pageContext.request.contextPath}/static/" + result.pimage);
                $("#info").text(result.pdesc);
            },
            "error": function () {
                alert("获取该商品信息失败!");
            }
        });
    })

    $("#imgFile").change(function () {
        var rd = new FileReader();  //创建文件读取对象
        var file = $(this)[0].files[0];
        // 确认选择的文件是图片
        if (file.type.indexOf("image") == 0) {
            rd.readAsDataURL(file);  //读取类型为base64
            rd.onload = function (e) {
                $("#img").attr("src", this.result);
            }
            setSpan(this, "success", "");
            $("#submit").attr("disabled", false)
        } else {
            $("#img").attr("src", "");
            setSpan(this, "error", "请选择 .jpg .png .gif格式类型!");
            $("#submit").attr("disabled", true)
        }
    })

    $("#pname").change(function () {
        var pname = $("#pname").val()
        if (pname != "") {
            setSpan(this, "success", "");
            $("#submit").attr("disabled", false)
        } else {
            setSpan(this, "error", "");
            $("#submit").attr("disabled", true)
        }
    })

    $("#marketprice").change(function () {
        var marketprice = $("#marketprice").val()
        var regmar = /^([1-9][0-9]*)$/;
        if (marketprice != "") {
            if (regmar.test(marketprice)) {
                setSpan(this, "success", "");
                $("#submit").attr("disabled", false)
            } else {
                setSpan(this, "error", "");
                $("#submit").attr("disabled", true)
            }
        } else {
            setSpan(this, "error", "");
            $("#submit").attr("disabled", true)
        }
    })

    $("#shopprice").change(function () {
        var shopprice = $(this).val()
        var regshop = /^([1-9][0-9]*)$/;
        if (shopprice != "") {
            if (regshop.test(shopprice)) {
                setSpan(this, "success", "");
                $("#submit").attr("disabled", false)
            } else {
                setSpan(this, "error", "");
                $("#submit").attr("disabled", true)
            }
        } else {
            setSpan(this, "error", "");
            $("#submit").attr("disabled", true)
        }
    })

    $("#info").change(function () {
        var info = $(this).val()
        if (info != "") {
            setSpan(this, "success", "");
            $("#submit").attr("disabled", false)
        } else {
            setSpan(this, "error", "商品简介不能为空！");
            $("#submit").attr("disabled", true)
        }
    })

    function setSpan(ele, status, text) {
        $(ele).parent().removeClass("has-success has-error");
        if (status == "success") {
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(text);
        } else {
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(text);
        }
    }

    <%--$("#submit").click(function () {--%>
    <%--    var product = {};--%>
    <%--    product.pid = $("#id").val();--%>
    <%--    product.pname = $("#pname").val();--%>
    <%--    product.marketPrice = $("#marketprice").val();--%>
    <%--    product.shopPrice = $("#shopprice").val();--%>
    <%--    product.isHot = $("input[name=hot]").val();--%>
    <%--    product.cid = $("#type").val();--%>
    <%--    product.pdesc = $("#info").val();--%>
    <%--    var file = $("#imgFile")[0].files[0];--%>
    <%--    var submit_data = new FormData();--%>
    <%--    submit_data.append("product", JSON.stringify(product));--%>
    <%--    submit_data.append("file", file);--%>
    <%--    $.ajax({--%>
    <%--        url: "${pageContext.request.contextPath}/updatepro",--%>
    <%--        type: 'POST',--%>
    <%--        data: "product=" + product,--%>
    <%--        success: function (result) {--%>
    <%--            alert("成功！")--%>
    <%--        },--%>
    <%--        "error": function () {--%>
    <%--            alert("失败!");--%>
    <%--        }--%>
    <%--    });--%>
    <%--})--%>

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {
        // 激活导航位置
        setSidebarActive("order-manage");
    });
</script>
<form id="formPro">
    <input type="hidden" id="formPid" name="pid">
    <input type="hidden" id="formPname" name="pname">
    <input type="hidden" id="formMarketPrice" name="marketPrice">
    <input type="hidden" id="formShopPrice" name="shopPrice">
    <input type="hidden" id="formPimage" name="pimage">
    <input type="hidden" id="formIsHot" name="isHot">
    <input type="hidden" id="formPdesc" name="pdesc">
    <input type="hidden" id="formCid" name="cid">
</form>
</body>

</html>
