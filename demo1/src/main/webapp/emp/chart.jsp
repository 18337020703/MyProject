<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/29
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css"
          href="${path}/css/homepage.css"/>
    <style type="text/css">
       #main{
           /*float: right;*/
           margin-top: -255px;
           margin-left: 300px;
       }
        #main1{
            margin-top: -400px;
            margin-left: 660px;
        }
        #pie{
            margin-top: 0px;
        }
        /*.layui-table-view {*/
        /*    margin-top: -200px;*/
        /*}*/
       .layui-table-box{
           margin-top: -150px;
       }
       .layui-form .layui-inline{
           width: 125px;
           margin-left: 10px;
       }
       .layui-form{
           margin-top: 30px;
       }
        .font{
            font-size: 30px;
            font-family: '微软雅黑','Helvetica Neue',Helvetica,Arial,sans-serif;
            color: #171919;
        }
        .layui-col-md6{
            width: 340px;
            height: 110px;
            margin-left: 30px;
            margin-top: 10px;
        }
        .layui-card{
            width: 340px;
            height: 110px;
            border-radius: 2%;
        }
        .layui-card-header{
            border: #dcdcdc 1px solid ;
            /*border-bottom: 1px #dad9d6;*/
        }
       .layui-card-body{
           border: #dcdcdc 1px solid ;
          border-top: 0px;
           height: 45px;
       }
       .layui-table-cell{
           font-size:10px;
       }
    </style>
</head>
<body>
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
                <option value="">支付时间</option>
                <option value="1">支付时间</option>
                <option value="2">提交时间</option>
                <option value="3">审批时间</option>
            </select>
        </div>
    </div>
    <div class="layui-inline">
        <div class="layui-input-inline">
            <input type="text" name="" id="date3" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
        </div>
    </div>
    -
    <div class="layui-inline">
        <div class="layui-input-inline">
            <input type="text" name="" id="date4" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-btn layui-btn-normal" id="select" data-type="reload">查询</div>
</form>
<div style="padding: 20px; background-color: #FFFFFF; margin-top: 20px">
    <div class="layui-row layui-col-space15">

        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">收入</div>
                <div class="layui-card-body">
                    <span class="font">￥</span> <span id="sum" class="font"></span>
                </div>
            </div>
        </div>

        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">支出</div>
                <div class="layui-card-body">
                    <span class="font">￥</span>  <span id="paysum" class="font"></span>
                </div>
            </div>
        </div>

        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">利润</div>
                <div class="layui-card-body">
                    <span class="font">￥</span><span id="lirun" class="font"></span>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">营业利润额</div>
                <div class="layui-card-body">
                <span id="lirunbi" class="font"></span><span class="font">%</span>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">环比增长率</div>
                <div class="layui-card-body">
                    0
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">同比增长率</div>
                <div class="layui-card-body">
                        0
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="note">备注</a>
</script>
<div id="pie" style="width: 300px;height:360px;"> </div>
<div id="main" style="width: 600px;height:400px;"></div>
<div id="main1" style="width: 600px;height:400px;"></div>
<table class="layui-hide" id="idTest" lay-filter="demo"></table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="note">备注</a>
</script>
<script src="https://cdn.jsdelivr.net/npm/echarts@4.5.0/dist/echarts.js"></script>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
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
<%--数据表格--%>
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
                ,{field:'money', width:60, title: '金额'}
                ,{field:'incomemethod', title: '收支类型', width:100,align:"center"}
                ,{field:'incometype', title: '收支方式', width:100}
                ,{field:'incometime', title: '支付时间',width:120,sort:true,align:"center",templet:function (d) {
                        return showTime(d.incometime);
                    }}
                ,{field:'submittime', title: '提交时间',sort:true,align:"center",templet:function (d) {
                        return showTime(d.submittime);
                    }}
                ,{field:'approvetime', title: '审批时间',sort:true,align:"center",templet:function (d) {
                        return showTime(d.approvetime);
                    }}
                ,{field:'empid', title: '服务人员', width:80}
                ,{field:'createman', title: '创建人', width:80}
                ,{field:'modifier', title: '审批人', width:80}
                ,{fixed: 'right', width:85,title: '备注', align:'center', toolbar: '#barDemo'}
            ]]
            ,page: true
        });
    });
</script>
<%--选取数据--%>
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

        //监听工具条2
        table.on('tool(demo)', function (obj) {
            var data = obj.data;
           if (obj.event === 'note'){
                alert(data.notes)
            }
        });

    });
</script>
<%--坐标图1--%>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    // 指定图表的配置项和数据
    var option = {
        xAxis: {
            type: 'category',
            data: ['2019-9', '2019-10', '2019-11'],
            color:'#1e9fff',
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            data: [0,1000, 1888,8000],
            type: 'line',
            color: '#58b772',
        }],
        grid:{
            x:30,
            y:30,
            x2:300,
            y2:160,
            borderWidth:1
        }
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<%--坐标图2--%>
<script type="text/javascript">

    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main1'));

    // 指定图表的配置项和数据
    var option = {
        xAxis: {
            type: 'category',
            data: ['2019-9', '2019-10', '2019-11']
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            data: [1000,1888,5000],
            type: 'line',
            color: '#58b772',
        }],
        grid:{
            x:30,
            y:30,
            x2:300,
            y2:160,
            borderWidth:1
        }
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<%--<script type="text/css" src="${path}/js/jquery-1.8.3.min.js"></script>--%>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<%--饼状图--%>
<script>
    // 基于准备好的dom，初始化echarts实例
    var myChartPie = echarts.init(document.getElementById('pie'));
    option = {
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['直接访问','收入','支出']
        },
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius : '65%',
                center: ['50%', '60%'],
                 data:
                (function () {
                    var income=[];
                    $.ajax(
                        {
                        type: "POST",
                        url: "/demo1/Dept/sum" ,
                        dataType : 'json',
                        async:false,
                        success: function (data) {
                        var data = data.data;
                        console.log(data.data)
                            income.push({"value": data,"name":'收入',itemStyle:{color:'#33d6c2'}});
                    }
                });
                    $.ajax(
                        {
                            type: "POST",
                            url: "/demo1/Dept/paySum" ,
                            dataType : 'json',
                            async:false,
                            success: function (data) {
                                var pay = data.data;
                                console.log(data.data)
                                income.push({"value": pay,"name":'支出',itemStyle:{color:'#2fc16c'}});
                            }
                        });
                    return income;
                    })(),

                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChartPie.setOption(option);
</script>

<%--查询总收入--%>
<script>
    layui.use('jquery',function () {
        // alert("2qqeqw");
        var $ = layui.jquery;
        $.ajax({
            url: "/demo1/Dept/sum/",
            type: "POST",
            data:"{}",
           // async:true,
            dataType: "json",
            success: function(data) {

                console.log("请求成功",JSON.stringify(data))
                console.log("data为1"+data.data);
                $('#sum').text(data.data)
            }
        });

        $.ajax({
            url: "/demo1/Dept/paySum/",
            type: "POST",
            data:"{}",
            // async:true,
            dataType: "json",
            success: function(data) {

                console.log("请求成功",JSON.stringify(data))
                console.log("data为22"+data.data);
                $('#paysum').text(data.data)
            }
        });

        $.ajax({
            url: "/demo1/Dept/lirun/",
            type: "POST",
            data:"{}",
            // async:true,
            dataType: "json",
            success: function(data) {

                console.log("请求成功",JSON.stringify(data))
                console.log("data为33"+data.data);
                $('#lirun').text(data.data)
            }
        });

        $.ajax({
            url: "/demo1/Dept/lirunbi/",
            type: "POST",
            data:"{}",
            // async:true,
            dataType: "json",
            success: function(data) {

                console.log("请求成功",JSON.stringify(data))
                console.log("data为"+data.data);
                var a = JSON.stringify(data.data)
                $('#lirunbi').text(a.slice(2,4)+"."+a.slice(4,6))
            }
        });

    })
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
                var submittime=$('#date3');
                console.log(submittime.val())
                var approvetime=$('#date4');
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
<%--选取日期Js--%>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#date3'
        })
        laydate.render({
            elem: '#date4'
        })
    });
</script>
</body>
</html>
