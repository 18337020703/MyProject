<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/29
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>日常审批</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css"
          href="${path}/css/homepage.css"/>
    <style type="text/css">
        #refuse{
            display: none;
        }
        #refuse2{
            display: none;
        }
        .layui-form .layui-inline{
            width: 125px;
            margin-left: 10px;
        }
        .layui-form{
            margin-top: 30px;
        }
    </style>
</head>
<body>
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">已通过</li>
        <li>待审批</li>
        <li>未通过</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <form class="layui-form" action="" method="post"  id="incomeDataFrm1" lay-filter="incomeDataFrm">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <select name="empid" id="empid1"  lay-verify="required" lay-search="">
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
                        <select name="client" id="client1" lay-verify="required" lay-search="">
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
                        <select name="state" id="state1" lay-verify="required" lay-search="">
                            <option value="0">支付时间</option>
                            <option value="1">支付时间</option>
                            <option value="2">提交时间</option>
                            <option value="3">审核时间</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text" name="" id="date1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>
                </div>
                -
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text" name="" id="date2" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-btn layui-btn-normal" id="select1" data-type="reload">查询</div>
            </form>
            <table class="layui-hide" id="idTest1" lay-filter="demo1"></table>
        </div>
        <div class="layui-tab-item">
            <form class="layui-form" action="" method="post"  id="incomeDataFrm2" lay-filter="incomeDataFrm">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <select name="empid" id="empid2" lay-verify="required" lay-search="">
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
                        <select name="client" id="client2" lay-verify="required" lay-search="">
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
                        <select name="state" id="state2" lay-verify="required" lay-search="">
                            <option value="0">支付时间</option>
                            <option value="1">支付时间</option>
                            <option value="2">提交时间</option>
                            <option value="3">审核时间</option>
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
                <div class="layui-btn layui-btn-normal" id="select2" data-type="reload">查询</div>
            </form>
            <table class="layui-hide" id="idTest2" lay-filter="demo2"></table>
        </div>
        <div class="layui-tab-item">
            <form class="layui-form" action="" method="post"  id="incomeDataFrm3" lay-filter="incomeDataFrm">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <select name="empid" id="empid3" lay-verify="required" lay-search="">
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
                        <select name="client" id="client3" lay-verify="required" lay-search="">
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
                        <select name="state3" lay-verify="required" lay-search="">
                            <option value="0">支付时间</option>
                            <option value="1">支付时间</option>
                            <option value="2">提交时间</option>
                            <option value="3">审核时间</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text" name="" id="date5" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>
                </div>
                -
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text" name="" id="date6" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-btn layui-btn-normal" id="select3" data-type="reload">查询</div>
            </form>
            <table class="layui-hide" id="idTest3" lay-filter="demo3"></table>
        </div>
    </div>
</div>
<%--//拒绝请求的页面--%>
<div id="refuse">
    <form class="layui-form" action="" method="post"  id="refuseDataFrm" lay-filter="refuseDataFrm">
        <input type="hidden" id="id1" name="id" value="">
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
<div id="refuse2">
    <form class="layui-form" action="" method="post"  id="refuseDataFrm2" lay-filter="refuseDataFrm2">
        <input type="hidden" id="id2" name="id" value="">
        <div class="layui-form-item">
            <label class="layui-form-label">*拒绝原因</label>
            <div class="layui-input-block">
                <input type="text" name="notes" id="notes2" lay-verify="title" autocomplete="off" placeholder="请输入拒绝原因"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo" id="refuseSubmit2">拒绝</button>
            </div>
        </div>
    </form>
</div>
<%--//通过的操作按钮--%>
<script type="text/html" id="barDemo1Approve">
    <a class="layui-btn layui-btn-xs" lay-event="note1">备注</a>
</script>
<script type="text/html" id="barDemo2Approve">
    <a class="layui-btn layui-btn-xs" onclick="jump()">查看</a>
</script>

<%--//待审批的操作按钮--%>
<script type="text/html" id="barDemo1">
    <a class="layui-btn layui-btn-xs" lay-event="note2">备注</a>
</script>
<script type="text/html" id="barDemo2">
    <a class="layui-btn layui-btn-xs" onclick="jump()">查看</a>
</script>

<%--//未通过的操作按钮--%>
<script type="text/html" id="barDemo1Refuse">
    <a class="layui-btn layui-btn-xs" lay-event="note3">备注</a>
</script>
<script type="text/html" id="barDemo2Refuse">
    <a class="layui-btn layui-btn-xs"  onclick="jump()">查看</a>

</script>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
<%--已通过的--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#idTest1'
            //,toolbar:'#demo1'
            ,url:'/demo1/Dept/findIncomesApprove/'
            ,cellMinWidth: 60 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,skin:'line'
            ,cols: [[
                {field:'id', width:50, title: '编号', sort: true}
                ,{field:'client', width:80, title: '客户'}
                ,{field:'money', width:60, title: '金额'}
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
                ,{field:'empid', title: '服务人员', width:80}
                ,{field:'createman', title: '创建人', width:70}
                ,{field:'modifier', title: '审批人', width:60}
                ,{fixed: 'right', width:85,title: '备注', align:'center', toolbar: '#barDemo1Approve'}
                ,{fixed: 'right', width:155,title: '操作', align:'center', toolbar: '#barDemo2Approve'}
            ]]
            ,page: true
        });
    });
</script>
<%--待审批的--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#idTest2'
            //,toolbar:'#demo2'
            ,url:'/demo1/Dept/findIncomes/'
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
                ,{field:'empid', title: '服务人员', width:100}
                ,{field:'createman', title: '创建人', width:80}
                ,{field:'modifier', title: '审批人', width:80}
                ,{fixed: 'right', width:85,title: '备注', align:'center', toolbar: '#barDemo1'}
                ,{fixed: 'right', width:255,title: '操作', align:'center', toolbar: '#barDemo2'}
            ]]
            ,page: true
        });
    });
</script>
<%--未通过的--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#idTest3'
            //,toolbar:'#demo3'
            ,url:'/demo1/Dept/findIncomesRefuse/'
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
                ,{field:'createman', title: '创建人', width:80}
                ,{field:'modifier', title: '审批人', width:80}
                ,{fixed: 'right', width:85,title: '备注', align:'center', toolbar: '#barDemo1Refuse'}
                ,{fixed: 'right', width:225,title: '操作', align:'center', toolbar: '#barDemo2Refuse'}
            ]]
            ,page: true
        });
    });
</script>
<%--选取操作属性--%>
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
        //监听工具条1
        table.on('tool(demo1)', function (obj) {
            var data = obj.data;
            if (obj.event === 'Refuse') {
                var d= JSON.stringify(data.id)
                $('.layui-form').find('#id1').val(d.slice(1,d.length-1))
                openUpdateUserInfo(data);

            } else if (obj.event === 'note1'){
                alert(data.notes)
            }
            function openUpdateUserInfo(data) {
                mainIndex = layer.open({
                    type: 1,
                    content: $("#refuse"),
                    area: ['300px', '200px'],
                    title: '拒绝申请',
                    success: function () {
                        form.val("refusedataFrm", data);
                        url = "/demo1/Dept/refuseIncomes";
                    }
                });
            }
            $("#refuseSubmit").click(function(){

                var data=$("#refuseDataFrm").serialize();
                $.post(url,data,function(res){
                    if(res.code==200){
                        table.reload('idTest1',{
                            page:{
                                curr:data.page
                            }
                        })
                    }
                    layer.msg(res.msg);
                    layer.close(mainIndex);
                })
            })

        });

        //监听工具条2
        table.on('tool(demo2)', function (obj) {
            var data = obj.data;

            if (obj.event === 'Approve'){
                layer. confirm( '确定通过吗?',function(index) {
                    obj.del();
                    $.post("/demo1/Dept/editIncomes/", {id: data.id}, function (res) {
                        obj.del();
                        if (res.code == 200) {
                            table.reload('idTest2', {
                                page: {
                                    curr: 1 //重第 页开始
                                }
                            });
                        }
                        layer.msg(res.msg);
                    });
                    layer.close(index);
                })
            } else if (obj.event === 'Refuse') {
                var d= JSON.stringify(data.id)
                $('.layui-form').find('#id2').val(d.slice(1,d.length-1))
                openUpdateUserInfoo(data);
            }
            else if (obj.event === 'note2'){
                alert(data.notes)
            }
            function openUpdateUserInfoo(data) {
                mainIndex = layer.open({
                    type: 1,
                    content: $("#refuse2"),
                    area: ['300px', '200px'],
                    title: '拒绝申请',
                    success: function () {
                        //装载新的数据
                        form.val("refusedataFrm2", data);
                        //layedit.setContent(editIndex,data.content);
                        url = "/demo1/Dept/refuseIncomes";
                    }
                });
            }
            $("#refuseSubmit2").click(function(){

                var data=$("#refuseDataFrm2").serialize();
                $.post(url,data,function(res){
                    if(res.code==200){
                        table.reload('idTest2',{
                            page:{
                                curr:data.page
                            }
                        })

                    }
                    layer.msg(res.msg);
                    layer.close(mainIndex);
                })

            })
        });

        //监听工具条3
        table.on('tool(demo3)', function (obj) {
            var data = obj.data;
            if (obj.event === 'Approve') {
                layer. confirm( '你确定要通过吗?',function(index) {
                    obj.del();
                    $.post("/demo1/Dept/editIncomes/", {id: data.id}, function (res) {
                        obj.del();
                        if (res.code == 200) {
                            table.reload('idTest3', {
                                page: {
                                    curr: 1 //重第 页开始
                                }
                            });
                        }
                        layer.msg(res.msg);
                    });
                    layer.close(index);
                })
            } else if (obj.event === 'note3'){
                alert(data.notes)
            }
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

        var time = year+"-"+month+"-"+day+"-"+minutes+":"+seconds;

        return time;

    }
</script>
<%--tab选择JS--%>
<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            ,tabDelete: function(othis){
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”
                othis.addClass('layui-btn-disabled');
            }
            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });
    });
</script>
<%--选取日期Js--%>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#date1'
        });
        laydate.render({
            elem: '#date2'
        });
        laydate.render({
            elem: '#date3'
        });
        laydate.render({
            elem: '#date4'
        });
        laydate.render({
            elem: '#date5'
        });
        laydate.render({
            elem: '#date6'
        });
    });
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
                var empid = $('#empid1');
                var client=$('#client1');
                console.log(empid.val())
                console.log(client.val())
                // var incometime=$('#incometime');
                var submittime=$('#date1');
                console.log(submittime.val())
                var approvetime=$('#date2');
                console.log(approvetime.val())
                var state=$('#state1')
                console.log('huo',empid.val(),client.val(),state.val(),submittime.val(),approvetime.val())
                console.log(state.val())
                console.log('2222222222222222222222');
                // 执行重载
                table.reload('idTest1', {
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

        $('#select1').on('click', function(){
            console.log("jinlaillllll")
            var type = $(this).data('type');
            console.log(type)
            console.log( $(this))
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
<%--条件查询2--%>
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
                var empid = $('#empid2');
                var client=$('#client2');
                console.log(empid.val())
                console.log(client.val())
                // var incometime=$('#incometime');
                var submittime=$('#date1');
                console.log(submittime.val())
                var approvetime=$('#date2');
                console.log(approvetime.val())
                var state=$('#state2')
                console.log('huo',empid.val(),client.val(),state.val(),submittime.val(),approvetime.val())
                console.log(state.val())
                console.log('2222222222222222222222');
                // 执行重载
                table.reload('idTest2', {
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

        $('#select2').on('click', function(){
            console.log("jinlaillllll")
            var type = $(this).data('type');
            console.log(type)
            console.log( $(this))
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
<%--条件查询3--%>
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
                var empid = $('#empid3');
                var client=$('#client3');
                console.log(empid.val())
                console.log(client.val())
                // var incometime=$('#incometime');
                var submittime=$('#date5');
                console.log(submittime.val())
                var approvetime=$('#date6');
                console.log(approvetime.val())
                var state=$('#state3')
                console.log('huo',empid.val(),client.val(),state.val(),submittime.val(),approvetime.val())
                console.log(state.val())
                console.log('2222222222222222222222');
                // 执行重载
                table.reload('idTest3', {
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

        $('#select3').on('click', function(){
            console.log("jinlaillllll")
            var type = $(this).data('type');
            console.log(type)
            console.log( $(this))
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
<%--jump--%>
<script>
    function jump() {
        window.location.href = "/demo1/Dept/jump";
    }
</script>
</body>
</html>


