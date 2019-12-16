<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/5
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css"
          href="${path}/css/homepage.css"/>
    <style>
        #contes{
            margin-top: 80px;
            margin-left: 300px;
        }
        input.layui-input {
            width: 250px;
            border-radius: 5%;
        }
        .layui-select-title i {
            top: 18px !important;
            right: 203px !important;
            margin-top: 0 !important;
        }
    </style>
</head>
<body>
<div id="contes">
    <div style="width:500px;height:40px;">
        <span class="add-head">修改密码</span>
        <%--        ${path}/Emp/addOne--%>
        <form class="layui-form"  action="" method="post" lay-filter="dataFrm"
              id="dataFrm">
        <input type="hidden" name="paytype" value="${emp.password}">
            <input type="hidden" name="id" value="${emp.id}">
            <div class="layui-form-item">
                <label class="layui-form-label">*密码</label>
                <div class="layui-input-block">
                    <input type="text" name="truename" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">*密码</label>
                <div class="layui-input-block">
                    <input type="text" name="phone" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">*密码</label>
                <div class="layui-input-block">
                    <input type="text" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <div type="submit" class="layui-btn" id="doSubmits" lay-submit="" lay-filter="addClientSub">立即提交</div>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
<%--选取数据--%>
<script>
    layui.use(['jquery', 'form', 'table', 'layer', 'laydate', 'layedit'], function () {
        var $ = layui.jquery;
        var form = layui.form;
        var table = layui.table;
        var layer = layui.layer;
        var laydate = layui.laydate;
        var layedit = layui.layedit;
        var url= "/demo1/User/editPassword";

        $("#doSubmits").click(function(){

            var data=$("#dataFrm").serialize();
            $.post(url,data,function(res){
                if(res.code==200){
                  alert("修改成功")
                    layer.msg(res.msg);
                }else {
                    alert("修改失败")
                }

            })
        })
    })
</script>
</body>
</html>
