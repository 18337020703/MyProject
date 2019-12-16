<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/29
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>收支</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css"
          href="${path}/css/homepage.css"/>
    <style type="text/css">
        #refuse{
            display: none;
        }
        .layui-form .layui-inline{
            width: 125px;
            margin-left: 10px;
        }
        .layui-form{
            /*margin-top: 30px;*/
        }
        .layui-table-cell{
            font-size:10px;
        }
        .layui-table tr{
            background-color: #FFFFFF;
        }
        .addd{
            margin-left: 20px;
            display: block;
            margin-right: 0px;
            /*margin-top: 10px;*/
        }
        .head{
            display: flex;
            justify-content: start;
            align-items: center;
            padding: 20px;
        }

    </style>
</head>
<body>
<div class="head">
<form class="layui-form" action="" method="post"  id="incomeDataFrm" lay-filter="incomeDataFrm">
    <div class="layui-inline">
        <div class="layui-input-inline">
            <select name="empid" id="empid" lay-verify="required" lay-search="">
                <option value="">所有服务人员</option>
                <option value="王经理">王经理</option>
                <option value="波哥">波哥</option>
                <option value="马云">马云</option>
                <option value="王思聪">王思聪</option>
                <option value="领英智能">领英智能</option>
                <option value="领英科技">领英科技</option>
                <option value="王健林">王健林</option>
                <option value="李云龙">李云龙</option>
                <option value="王向斌">王向斌</option>
                <option value="赵公子">赵公子</option>
                <option value="杨超越">杨超越</option>
            </select>
        </div>
    </div>
        <div class="layui-inline">
            <div class="layui-input-inline">
                <select name="client" id="client" lay-verify="required" lay-search="">
                    <option value="">所有客户</option>
                    <option value="刘老板">刘老板</option>
                    <option value="王健林">王健林</option>
                    <option value="赵公子">赵公子</option>
                    <option value="牛爷爷">牛爷爷</option>
                    <option value="马云">马云</option>
                    <option value="王总">王总</option>
                    <option value="图图">图图</option>
                    <option value="张主任">张主任</option>
                    <option value="李科长">李科长</option>
                </select>
            </div>
    </div>
        <div class="layui-inline">
            <div class="layui-input-inline">
                <select name="state" id="state" lay-verify="required" lay-search="">
                    <option value="">选择时间</option>
                    <option value="1">支付时间</option>
                    <option value="2">提交时间</option>
                    <option value="3">审批时间</option>
                </select>
            </div>
        </div>
    <div class="layui-inline">
        <div class="layui-input-inline">
            <input type="text" name="submittime" id="date1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
        </div>
    </div>
    -
    <div class="layui-inline">
        <div class="layui-input-inline">
            <input type="text" name="approvetime" id="date2" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-btn layui-btn-normal" id="select" data-type="reload">搜索</div>

    <button class="layui-btn layui-btn-normal">导出为Excel</button>
</form>
<button class="layui-btn layui-btn-normal addd" onclick="jump()">+添加记录</button>

</div>
<%--拒绝请求页面--%>
<div id="refuse">
    <form class="layui-form" action="" method="post"  id="refuseDataFrm" lay-filter="refuseDataFrm">
        <input type="hidden" id="id" name="id" value="">
        <div class="layui-form-item">
            <label class="layui-form-label">*拒绝原因</label>
            <div class="layui-input-block">
                <input type="text" name="notes" id="notes" lay-verify="title" autocomplete="off" placeholder="请输入拒绝原因"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo" id="refuseSubmit">拒绝</button>
            </div>
        </div>
    </form>
</div>
<table class="layui-hide" id="idTest" lay-filter="demo"></table>
<%--操作按钮--%>
<script type="text/html" id="barDemo1">
    <a class="layui-btn layui-btn-xs" lay-event="note">备注</a>

</script>
<script type="text/html" id="barDemo2">
    <a class="layui-btn layui-btn-xs" lay-event="edit" onclick="jump()">查看</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">拒绝</a>
</script>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
<%--跳转--%>
<script>
    function jump() {
        window.location.href = "/demo1/Dept/jump";
    }
</script>
<%--条件查询--%>
<script>
    layui.use(['jquery', 'form', 'table', 'layer', 'laydate', 'layedit'], function () {
        var $ = layui.jquery;
        var form = layui.form;
        var table = layui.table;
        var layer = layui.layer;
        var laydate = layui.laydate;
        var layedit = layui.layedit;
        var mainIndex;
        var url;

        var $ = layui.$, active = {
            reload: function(){
                var empid = $('#empid');
                var client=$('#client');
                console.log(empid.val())
                console.log(client.val())
               // var incometime=$('#incometime');
                var submittime=$('#date1');
                console.log(submittime.val())
                var approvetime=$('#date2');
                console.log(approvetime.val())
                var state=$('#state')
                console.log('huo',empid.val(),client.val(),state.val(),submittime.val(),approvetime.val())
                console.log(state.val())
                console.log('2222222222222222222222');
                // 执行重载
                table.reload('idTest', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        empid:empid.val(),
                        client:client.val(),
                        state: state.val(),
                        submittime:submittime.val(),
                        approvetime:approvetime.val()
                    }
                }, 'data');
            }
        };

        $('#select').on('click', function(){
            console.log("jinlaillllll")
            var type = $(this).data('type');
            console.log(type)
            console.log( $(this))
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
<%--选取操作按钮--%>
<script>
    layui.use(['jquery', 'form', 'table', 'layer', 'laydate', 'layedit'], function () {
        var table = layui.table;
        var $ = layui.jquery;
        var layer = layui.layer;
        var laydate = layui.laydate;
        var layedit = layui.layedit;
        var form = layui.form;
        var mainIndex;
        var url;
        //监听工具条
        table.on('tool(demo)', function (obj) {
            var data = obj.data;
            if (obj.event === 'note'){
                console.log("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww")
                alert(data.notes);
            } else if(obj.event === 'edit'){
                openUpdateUserInfo(data);
            } else if (obj.event === 'del') {
                var d= JSON.stringify(data.id)
                $('.layui-form').find('#id').val(d.slice(1,d.length-1))
                openUpdateUserInfo(data);

            }
            function openUpdateUserInfo(data) {
                mainIndex = layer.open({
                    type: 1,
                    content: $("#refuse"),
                    area: ['300px', '200px'],
                    title: '拒绝申请',
                    success: function () {
                        //$("#dataFrm")[0].reset();
                        //装载新的数据
                        form.val("refusedataFrm", data);
                        //layedit.setContent(editIndex,data.content);
                        url = "/demo1/Dept/refuseIncomes";
                    }
                });
            }
            $("#refuseSubmit").click(function(){

                var data=$("#refuseDataFrm").serialize();
                $.post(url,data,function(res){
                    if(res.code==200){
                        table.reload('idTest',{
                            page:{
                                curr:data.page
                            }
                        })
                    }
                    layer.msg(res.msg);
                    layer.close(mainIndex);
                })
            })

            //条件查询的重载
            active = {
                reload: function () {
                    var demoReload = $('#demoReload');
                    console.log('11111', demoReload.val())
                    //执行重载
                    table.reload('idTest1', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        , where: {
                            name:
                                demoReload.val()
                        }
                    }, 'data');
                }
            };
        });

        });
</script>
<%--表格数据--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#idTest'
            //,toolbar:'#demo'
            ,url:'/demo1/Dept/findAllIncomesApprove/'
            ,cellMinWidth: 60 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,skin:'line'
            ,cols: [[
                {field:'id', width:50, title: '编号', sort: true}
                ,{field:'client', width:80, title: '客户'}
                ,{field:'money', width:80, title: '金额'}
                ,{field:'incomemethod', title: '收支类型', width:60}
                ,{field:'incometype', title: '收支方式', width:60}
                ,{field:'incometime', title: '支付时间',sort:true,align:"center",templet:function (d) {
                        return showTime(d.incometime);
                    }}
                ,{field:'submittime', title: '提交时间',sort:true,align:"center",templet:function (d) {
                        return showTime(d.submittime);
                    }}
                ,{field:'approvetime', title: '审批时间',sort:true,align:"center",templet:function (d) {
                        return showTime(d.approvetime);
                    }}
                ,{field:'empid', title: '服务人员', width:100}
                ,{field:'createman', title: '创建人', width:60}
                ,{field:'modifier', title: '审批人', width:60}
                ,{fixed: 'right', width:85,title: '备注', align:'center', toolbar: '#barDemo1'}
                ,{fixed: 'right', width:145,title: '操作', align:'center', toolbar: '#barDemo2'}
            ]]
            ,page: true
        });
    });
</script>
<%--格式化时间--%>
<script>
    function showTime(tempDate)

    {

        var d = new Date(tempDate);

        var year = d.getFullYear();

        var month = d.getMonth();

        month++;

        var day = d.getDate();

        var hours = d.getHours();

        var minutes = d.getMinutes();

        var seconds = d.getSeconds();

        month = month<10 ? "0"+month:month;

        day = day<10 ? "0"+day:day;

        hours = hours<10 ? "0"+hours:hours;

        minutes = minutes<10 ? "0"+minutes:minutes;

        seconds = seconds<10 ? "0"+seconds:seconds;

        var time = year+"-"+month+"-"+day+"-"+hours+"-"+minutes+":"+seconds;
        return time;

    }
</script>
<%--选取日期Js--%>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#date1'
        })
        laydate.render({
            elem: '#date2'
        })
    });
</script>
</body>
</html>
