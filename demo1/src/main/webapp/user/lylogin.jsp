<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/26
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("path",request.getContextPath());
%>
<html>
<head>
    <title>领英日记账</title>
    <link rel="stylesheet" type="text/css"
          href="${path}/css/lycss.css" />
</head>
<body bgcolor="aqua">

<div class="main">
    <div class="title">
        <span>领英 SO.HO</span>
    </div>
    <form action="${path}/User/findOneByName" class="login-form" method="post" novalidate>
        <!--输入框-->
        <div class="input-content">
            <!--autoFocus-->
                <span>*账号:</span>
            <div>
                <input type="text" autocomplete="off" placeholder="用户名"
                       name="name" value="ceshi" required />
            </div>
            <span>*密码:</span>
            <div style="margin-top: 16px">
                <input type="password" autocomplete="off" placeholder="登录密码"
                       name="password" value="123456" required maxlength="32" />
            </div>
        </div>
<!--
        <div class="code">
            <span>请输入验证码 &nbsp;:&nbsp;&nbsp;&nbsp;</span><input type="text" name="codeValue" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
                alt="" src="img" onclick="this.src='img?'+Math.random()">
        </div>
-->
        <!--登入按钮-->
        <div style="text-align: center">
            <button type="submit" class="enter-btn">登录</button>
        </div>
    </form>
</div>
</body>
</html>
