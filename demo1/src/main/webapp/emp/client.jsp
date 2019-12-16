<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/29
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工表</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css"
          href="${path}/css/homepage.css"/>
    <style>
        .layui-table-box{
            overflow-y: hidden;
            /*width: 1150px;*/
            /*margin-top: -100px;*/
        }
        .demoTable{
            margin-top: -88px
        }
        .layui-layer-dialog{
            top: 200px!important;
        }
        .layui-layer-page{
            top: -10px!important;
        }
    </style>
</head>
<body>
<div style="margin-bottom: 5px;">

    <!-- 示例-970 -->
    <ins class="adsbygoogle" style="display:inline-block;
    width:970px;height:90px"
         data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>

</div>
<div class="demoTable">
    搜索姓名：
    <div class="layui-inline">
        <input class="layui-input" name="name" id="demoReload" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
    <button class="add"  id="addUser">+添加客户</button>
</div>
<%--弹出框之添加员工--%>
<div id="contes">
    <div style="width:500px;height:40px;">
        <span class="add-head">添加员工</span>
        <%--        ${path}/Emp/addOne--%>
        <form class="layui-form"  action="" method="post" lay-filter="dataFrm"
              id="dataFrm"
        <%--              id="sumbitAdd" onsubmit="return saveReport();"--%>
        >

            <div class="layui-form-item">
                <label class="layui-form-label">*客户名称</label>
                <div class="layui-input-block">
                    <input type="text" name="name" lay-verify="title" autocomplete="off" placeholder="请输入客户名称"
                           class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">*手机号</label>
                <div class="layui-input-block">
                    <input type="text" name="phone" lay-verify="title" autocomplete="off" placeholder="请输入手机号"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">*客户类型</label>
                <div class="layui-input-block">
                    <input type="radio" name="type" value="供应商" title="供应商" checked="">
                    <input type="radio" name="type" value="客户" title="客户">
                    <input type="radio" name="type" value="其他" title="其他">
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">*默认服务人员</label>
                    <div class="layui-input-block">
                        <select name="empid" lay-filter="aihao">
                            <option value=""></option>
                            <option value="1" selected="selected">王经理</option>
                            <option value="2">马云</option>
                            <option value="3">王思聪</option>
                            <option value="4">领英智能</option>
                            <option value="5">领英财务</option>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">*备注</label>
                    <div class="layui-input-block">
                        <input type="text" name="notes" lay-verify="title" autocomplete="off" placeholder="请输入备注"
                               class="layui-input">
                    </div>
                </div>

            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="button" class="layui-btn layui-btn-normal" onclick="cancle()">取消</button>
                    <button type="submit" class="layui-btn" id="doSubmits" lay-submit="" lay-filter="addClientSub">立即提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div id="edit">
    <div style="width:500px;height:40px;">
        <span class="add-head">添加员工</span>

        <form class="layui-form" action="" method="post"  id="editDataFrm" lay-filter="editDataFrm">
            <input type="hidden" name="id" id="hidden" value="">
            <div class="layui-form-item">
                <label class="layui-form-label">*客户名称</label>
                <div class="layui-input-block">
                    <input type="text" id="name" name="name" lay-verify="title" autocomplete="off" placeholder="请输入客户名称"
                           class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">*手机号</label>
                <div class="layui-input-block">
                    <input type="text" id="phone" name="phone" lay-verify="title" autocomplete="off" placeholder="请输入手机号"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">*客户类型</label>
                <div class="layui-input-block">
                    <input type="radio" name="type" value="供应商" title="供应商" checked="">
                    <input type="radio" name="type" value="客户" title="客户">
                    <input type="radio" name="type" value="其他" title="其他">
                </div>
            </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">*默认服务人员</label>
                    <div class="layui-input-block">
                        <select name="empid" lay-filter="aihao">
                            <option value=""></option>
                            <option value="1" selected="selected">王经理</option>
                            <option value="2">马云</option>
                            <option value="3">王思聪</option>
                            <option value="4">领英智能</option>
                            <option value="5">领英财务</option>
                        </select>
                    </div>
                </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="button" class="layui-btn layui-btn-normal" onclick="editcancle()">取消</button>
                    <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1" id="editSubmit">立即提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
<%--两个遮罩层--%>
<div id="all_light"></div>
<div id="alll_light"></div>
<%--弹出层中的弹出层--%>
<div id="pay">
    <span>添加收款方式</span>
    <div>
        <span>名称</span>
        <input id="paytypeVal" type="text" name="" placeholder="输入收款方式">
    </div>

    <button onclick="submitPay()">确定</button>


</div>
<table class="layui-hide" id="idTest" lay-filter="demo"></table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
<%--    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>--%>
</script>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
<%--数据表格--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#idTest'
            //,toolbar:'#demo'
            ,url:'/demo1/Dept/client/'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,skin:'line'
            ,page:{
                layout: ['limit', 'count', 'prev', 'page', 'next', 'skip']
            }
            ,cols: [[
                {field:'id', width:50, title: 'ID', sort: true}
                ,{field:'name', width:120, title: '姓名'}
                ,{field:'phone', width:150, title: '手机号码'}
                ,{field:'type', title: '客户类型', width:150}
                ,{field:'empid',width:150, title: '服务人员',templet:function(val) {
                        if (val.empid == 1) {
                            return "王经理";
                        } else if(val.empid==2) {
                            return "马云";
                        } else if(val.empid==3){
                            return "王思聪";
                        } else if(val.empid==4){
                            return "领英智能";
                        } else if(val.empid==5){
                            return "领英财务";
                        }
                    }}
                ,{field:'createdate', title: '创建时间',sort:true,align:"center",templet:function (d) {
                        return showTime(d.createdate);
                    }}
                ,{fixed: 'right', width:155,title: '操作', align:'center', toolbar: '#barDemo'}
            ]]
            ,page: true
        });
    });
</script>
<%--条件查询js--%>
<script>
    layui.use('table', function(){
        var table = layui.table;
        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload');
                console.log('11111',demoReload.val())
                //执行重载
                table.reload('idTest', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        name:
                            demoReload.val()
                    }
                }, 'data');
            }
        };
        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            console.log('22222',type)
            active[type] ? active[type].call(this) : '';
        });
    });

</script>
<%--编辑删除JS--%>
<script>
    //layui.use(['table','jquery',], function(){
    layui.use(['jquery', 'form', 'table', 'layer', 'laydate', 'layedit'], function () {
        var table = layui.table;
        var $ = layui.jquery;
        var layer = layui.layer;
        var laydate = layui.laydate;
        var layedit = layui.layedit;
        var form = layui.form;
        //监听表格复选框选择
        table.on('checkbox(demo)', function(obj){
            console.log(obj)
        });
        //监听工具条
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            }

            else if(obj.event === 'edit'){
                // document.getElementById('edit').style.display="block"
                //  document.getElementById('all_light').style.display="block"
                var a= JSON.stringify(data.name)
                $('.layui-form').find('#name').val(a.slice(1,a.length-1))
                var c= JSON.stringify(data.phone)
                $('.layui-form').find('#phone').val(c.slice(1,c.length-1))
                var d= JSON.stringify(data.id)
                $('.layui-form').find('#hidden').val(d.slice(1,d.length-1))
                openUpdateUserInfo(data);
            }
        });

        var mainIndex;
        var url;

        function openUpdateUserInfo(data) {
            console.log("编辑框打开了")
            mainIndex = layer.open({
                type: 1,
                content: $("#edit"),
                area: ['520px', '750px'],
                title: '修改公告',
                success: function () {
                    //$("#dataFrm")[0].reset();
                    //装载新的数据
                    form.val("dataFrm", data);
                    //layedit.setContent(editIndex,data.content);
                    url = "/demo1/Dept/editClient";
                }
            });
        }
        $("#editSubmit").click(function(){

            var data=$("#editDataFrm").serialize();
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


        active = {
            reload: function(){
                var demoReload = $('#demoReload');
                console.log('11111',demoReload.val())
                //执行重载
                table.reload('idTest', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        name:
                            demoReload.val()
                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

    });
</script>
<%--原生JS数据选取--%>
<script>

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

</script>
<%--添加员工JS--%>
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

        $("#addUser").click(function () {
            openAddLayer();
        });

        //打开添加的弹出层
        function openAddLayer() {
            mainIndex = layer.open({
                type: 1,
                content: $("#contes"),
                area: ['520px', '750px'],
                title: '添加客户',
                success: function () {
                    //$("#dataFrms")[0].reset();
                    //form.val("dataFrms", data);
                    //layedit.setContent(editIndex,"");
                    url = "/demo1/Dept/addClient";
                }
            });
        }
        //打开修改的弹出层
        $("#doSubmits").click(function(){

            var data=$("#dataFrm").serialize();
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
    });

</script>
<%--编辑员工JS--%>
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

        function openUpdateUserInfo(data) {
            mainIndex = layer.open({
                type: 1,
                content: $("#addOrUpdateDiv"),
                area: ['480px', '550px'],
                title: '修改公告',
                success: function () {
                    //$("#dataFrm")[0].reset();
                    //装载新的数据
                    form.val("dataFrm", data);
                    //layedit.setContent(editIndex,data.content);
                    url = "/demo1/Emp/edit";
                }
            });
        }
        $("#editSubmit").click(function(){

            var data=$("#editDataFrm").serialize();
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

    });
</script>
<%--时间格式转换--%>
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
<%--分页--%>
<script>
    layui.use('laypage',function () {
        var laypage = layui.laypage;
        laypage.render({
            elem: '#idTest'
            ,count: 7
            ,limit: 5
            ,curr:  1
        })
    })
</script>
</body>
</html>
