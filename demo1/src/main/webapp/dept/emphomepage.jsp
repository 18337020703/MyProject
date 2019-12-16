<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/8
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>领英记账</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css"
          href="${path}/css/homepage.css"/>
    <style type="text/css">

        .layui-form {
            width: 1500px !important;
            height: 800px !important;
        }

        #contes dl.layui-anim {
            min-width: 250px;
        }

        #edit dl.layui-anim {
            min-width: 250px;
        }

        .layui-select-title i {
            top: 18px !important;
            right: 135px !important;
            margin-top: 0 !important;
        }

        .layui-table-cell {
            width: 77px;
        }

        .layui-logo {
            font-size: 250px;
            color: red;
        }

        .layui-table-cell .layui-btn {
            margin-left: 12px;
        }

        .logo {
            font-size: 28px;
            color: white;
            margin-left: 80px;
            padding-top: 13px;
        }

        .layui-bg-black {
            background-color: #FFFFFF !important;
        }

        .layui-nav {
            background-color: #FFFFFF;
            border-right: #e8e6e6 1px solid;
            height: 600px;
        }

        .layui-nav-tree .layui-nav-item a {
            color: #5d5d5d;
            font-family: '微软雅黑', 'Helvetica Neue', Helvetica, Arial, sans-serif;
            font-size: 15px;
            text-align: center;
        }

        .layui-nav-tree .layui-nav-item {
            height: 56px;
        }

        .layui-nav-tree .layui-nav-item a:hover {
            background-color: #b2f3ff;
            opacity: 0.5;
            color: rgba(23, 18, 41, 0.96);
        }

        .layui-layout-admin .layui-header {
            background-color: #2596a0;
        }

        input.layui-input {
            width: 250px;
        }

        label.layui-form-label {
            width: 100px;
        }

        .layui-btn {
            margin-left: 68px;
            background-color: rgb(0, 193, 209);
        }
        .iframe{
            border: 0px;
        }
        .exit{
            float: right;
            background-color: #2596a0;
            border: #2596a0;
            font-size: 16px;
            font-family: '微软雅黑','Helvetica Neue',Helvetica,Arial,sans-serif;
            width: 50px;
            height: 20px;
            color: #ffffff;
            margin-top: -30px;
        }
        .name{
            display: block;
            color: #FFFFFF;
            font-family: '微软雅黑','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-size: 16px;
            margin-top: -30px;
            float: right;
            margin-right: 70px;
        }
    </style>
</head>
<body class="layui-layout-body">
<%--顶部导航栏--%>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="logo">领英</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <span class="name">欢迎您&nbsp:&nbsp&nbsp${emp.truename}</span><button class="exit" onclick="jump2()">退出</button>
    </div>
    <%--左侧导航栏--%>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
                <li class="layui-nav-item"><a href="javascript:;" data-url="chart.jsp" data-id='1' data-text="后台菜单">图标统计</a></li>
                <li class="layui-nav-item"><a href="javascript:;" data-url="empIncome.jsp" data-id='1' data-text="后台菜单">日常收支</a></li>
                <li class="layui-nav-item"><a href="javascript:;" data-url="empSubmit.jsp" data-id='1' data-text="后台菜单">我的提交</a></li>
                <li class="layui-nav-item"><a href="javascript:;" data-url="client.jsp" data-id='1' data-text="后台菜单">客户管理</a></li>
                <li class="layui-nav-item"><a href="javascript:;" data-url="client.jsp" data-id='1' data-text="后台菜单">设置</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="password.jsp" data-id='1' data-text="修改密码">修改密码</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <%-- 主体内容--%>
    <div class="layui-body" style="height: 100%">
        <iframe src="../emp/chart.jsp" width="100%" height="100%" name="iframe" scrolling="auto" class="iframe" framborder="0"></iframe>
    </div>
    <%--JS文件--%>
    <script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js"></script>
    <script>
        //JavaScript代码区域
        layui.use(['layer', 'form', 'element', 'jquery'],function () {
            console.log(111)
            var element = layui.element;
            var $ = layui.jquery;
            console.log(element)
            element.on('nav(leftNav)', function(elem){
                var navA = $(elem);
                console.log(navA.attr('href'))
                var id = navA.attr('data-id');
                var url = navA.attr('data-url');
                var text = navA.attr('data-text');
                console.log(id,url,text)
                $('.layui-body').find('iframe').attr('src','../emp/' + url)
                if(!url){
                    return;
                }

            });
        });
    </script>
    <%--数据表格编辑删除js--%>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </script>
    <script>
    </script>
    <%--元素选取--%>
    <script type="text/javascript">
        function wxb() {
            document.getElementById('contes').style.display = 'block';
            document.getElementById('all_light').style.display = 'block';
        }

        function addpaytype() {
            document.getElementById('pay').style.display = 'block';
            document.getElementById('alll_light').style.display = 'block';

        }

        function submitPay() {
            document.getElementById('pay').style.display = 'none';
            document.getElementById('alll_light').style.display = 'none';
        }

        function cancle() {
            document.getElementById('contes').style.display = 'none';
            document.getElementById('all_light').style.display = 'none';
        }

        function edit() {
            document.getElementById('edit').style.display = 'block';
            document.getElementById('all_light').style.display = 'block';
        }

        function editcancle() {
            document.getElementById('edit').style.display = 'none';
            document.getElementById('all_light').style.display = 'none';
        }

        function leave() {
            alert("该员工是否离职？")
        }
    </script>
    <script>
        function jump2() {
            window.location.href = "/demo1/Dept/jump2";
        }
    </script>
</body>
</html>

