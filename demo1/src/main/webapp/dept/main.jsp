<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/26
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path",request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>领英日记账</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css"  media="all">
    <link rel="stylesheet" type="text/css"
          href="${path}/css/lycss.css" />
</head>
<body>
<form>
    <input type="text" name="name" placeholder="账号搜索">
    <button type="submit" class="layui-icon-search">搜索</button>
    <button type="button" class="layui-btn">添加员工</button>
</form>
<table class="layui-hide" id="test"></table>


<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>


<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
             elem: '#test'
            ,url:'/demo1/Dept/datalist/'  //数据接口
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,cols: [[
                {field:'id', title: 'ID', sort: true}
                ,{field:'name', title: '账号'} //width 支持：数字、百分比和不填写。你还可以通过 minWidth 参数局部定义当前单元格的最小宽度，layui 2.2.1 新增
                ,{field:'truename', title: '真实姓名', sort: true}
                ,{field:'phone', title: '电话'}
                ,{field:'empcreatedate', title: '创建时间'}
                ,{field: 'deptid', title: '默认客户' ,templet:function(val) {
                        if (val.status == 1) {
                            return "老王";
                        } else {
                            return "老刘";
                        }
                    }}
                ,{field:'paytype', title: '支付方式'} //单元格内容水平居中
                , {field: 'workstate', title: '在职状态' ,templet:function(val) {
                        if (val.status == 1) {
                            return "在职";
                        } else {
                            return "离职";
                        }
                    }}
            ]]
        });
    });
</script>
</body>
</html>
