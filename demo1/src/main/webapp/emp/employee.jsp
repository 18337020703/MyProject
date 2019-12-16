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
        #layui-layer2{
            top: 90px!important;

        }
        .layui-layer-content{
            overflow:hidden;
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
    搜索ID：
    <div class="layui-inline">
        <input class="layui-input" name="name" id="demoReload" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
    <button class="add"  id="addUser">+添加员工</button>
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
                <input type="hidden" name="workstate" value="3">
            <div class="layui-form-item">
                <label class="layui-form-label">*账号</label>
                <div class="layui-input-block">
                    <input type="text" name="name" lay-verify="title" autocomplete="off" placeholder="请输入账号"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">*密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">*真实姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="truename" lay-verify="title" autocomplete="off" placeholder="请输入真实姓名"
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
                <label class="layui-form-label">*是否上传文件</label>
                <div class="layui-input-block">
                    <input type="radio" name="upload" value="1" title="是" checked="">
                    <input type="radio" name="upload" value="0" title="否">
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">*默认收款方式</label>
                    <div class="layui-input-block">
                        <select name="paytype" lay-filter="aihao">
                            <option value=""></option>
                            <option value="现金" selected="selected">现金</option>
                            <option value="扫码">扫码</option>
                            <option value="刷卡">刷卡</option>
                            <option id="fuzhi" value=""><p id="fuzhi2"></p></option>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn layui-btn-normal" id="addpay" >+添加收款方式</button>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">*默认客户</label>
                    <div class="layui-input-block">
                        <select name="deptid" lay-filter="aihao">
                            <option value=""></option>
                            <option value="1" selected="selected">刘老板</option>
                            <option value="2">王健林</option>
                            <option value="3">赵公子</option>
                            <option value="4">马化腾</option>
                            <option value="5">马云</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="button" class="layui-btn layui-btn-normal" id="cancle" >取消</button>
                    <button type="submit" class="layui-btn" id="doSubmits" lay-submit="" lay-filter="addClientSub">立即提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div id="edit">
    <div style="width:500px;height:40px;">
        <span class="add-head">编辑员工</span>

        <form class="layui-form" action="" method="post"  id="editDataFrm" lay-filter="editDataFrm">
            <input type="hidden" name="id" id="hidden" value="">
            <input type="hidden" name="workstate" value="3">
            <div class="layui-form-item">
                <label class="layui-form-label">*账号</label>
                <div class="layui-input-block">
                    <input type="text" name="name" id="name" lay-verify="title" autocomplete="off" placeholder="账号"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">*密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password" id="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">*真实姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="truename" id="truename" lay-verify="title" autocomplete="off" placeholder="请输入真实姓名"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">*手机号</label>
                <div class="layui-input-block">
                    <input type="text" name="phone" id="phone" lay-verify="title" autocomplete="off" placeholder="请输入手机号"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">*是否上传文件</label>
                <div class="layui-input-block">
                    <input type="radio" name="upload" value="1" title="是" checked="">
                    <input type="radio" name="upload" value="0" title="否">
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">*默认收款方式</label>
                    <div class="layui-input-block">
                        <select name="paytype" id="paytype" lay-filter="aihao">
                            <option value=""></option>
                            <option value="现金" selected="selected">现金</option>
                            <option value="扫码">扫码</option>
                            <option value="刷卡">刷卡</option>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn layui-btn-normal" id="addpayEdit" onclick="addpaytype()">+添加收款方式</button>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">*默认客户</label>
                    <div class="layui-input-block">
                        <select name="deptid" id="deptid" lay-filter="aihao">
                            <option value=""></option>
                            <option value="1" selected="selected">刘老板</option>
                            <option value="2">王健林</option>
                            <option value="3">赵公子</option>
                            <option value="4">马云</option>
                            <option value="5">马化腾</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="button" class="layui-btn layui-btn-normal" id="cancleEdit" >取消</button>
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

    <button  id="submitPay">确定</button>


</div>
<table class="layui-hide" id="idTest" lay-filter="demo"></table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">离职</a>
</script>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
<%--表格数据--%>
<script>
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#idTest'
            //,toolbar:'#demo'
            ,url:'/demo1/Dept/datalistAuthorise/'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,skin:'line'
            ,cols: [[
                {field:'id', width:50, title: 'ID', sort: true}
                ,{field:'name', width:80, title: '账号'}
                ,{field:'truename', width:110, title: '真实姓名', sort: true}
                ,{field:'phone', width:120, title: '手机号码'}
                ,{field:'upload', title: '上传文件', width:60,templet:function(val) {
            if (val.upload == 1) {
                return "是";
            } else {
                return "否";
            }
        }} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                ,{field:'deptid',width:120, title: '默认客户',templet:function(val) {
                        if (val.deptid == 1) {
                            return "刘老板";
                        } else if(val.deptid==2) {
                            return "王健林";
                        } else if(val.deptid==3){
                            return "赵公子";
                        } else if(val.deptid==4){
                            return "马云";
                        } else if(val.deptid==5){
                            return "马化腾";
                        }
                    }}
                ,{field:'paytype', title: '付款方式', align:"center",width:90}
                ,{field:'empcreatedate', title: '创建时间',sort:true,align:"center",templet:function (d) {
                        return showTime(d.empcreatedate);
                    }}
                ,{field:'workstate', width:90, align:"center",title: '入职状态',templet:function(val) {
                        if (val.workstate == 3) {
                            return "在职";
                        } else {
                            return "管理员";
                        }
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
            } else if(obj.event === 'del'){

                    layer. confirm( '你确定要删除员工[ ' +data.truename+ ' ]吗?',function(index) {
                        console.log(data.name)
                        obj.del();
                        $.post("/demo1/Emp/deleteOne/", {id: data.id}, function (res) {
                                obj.del();
                            if (res.code == 200) {
                                table.reload('idTest', {
                                    page: {
                                       curr: 1 //重第 页开始
                                    }
                                });
                           }
                            layer.msg(res.msg);
                        });
                        layer.close(index);
                    })

            } else if(obj.event === 'edit'){
               // document.getElementById('edit').style.display="block"
               //  document.getElementById('all_light').style.display="block"
                var a= JSON.stringify(data.name)
                $('.layui-form').find('#name').val(a.slice(1,a.length-1))
                var b= JSON.stringify(data.truename)
                $('.layui-form').find('#truename').val(b.slice(1,b.length-1))
                var c= JSON.stringify(data.phone)
                $('.layui-form').find('#phone').val(c.slice(1,c.length-1))
                var d= JSON.stringify(data.id)
                $('.layui-form').find('#hidden').val(d.slice(1,d.length-1))
                var e=JSON.stringify(data.password)
                $('.layui-form').find('#password').val(e.slice(1,e.length-1))
                openUpdateUserInfo(data);
            }
        });

        var mainIndex;
        var url;

        function openUpdateUserInfo(data) {
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
        var mainIndex1;
        var url;

        //添加收款方式
        $('#addpay').click(function () {
            openpay();
        })
        function openpay(){
            mainIndex1 = layer.open({
                type: 1,
                content: $("#pay"),
                area: ['350px', '220px'],
                title: '添加收款方式'
        });}
        $("#submitPay").click(function(){
            var paytypeVal = $('#paytypeVal')
            $('.layui-form').find('#fuzhi').val(paytypeVal)
            $('.layui-form').find('#fuzhi2').text(paytypeVal)
            close();
        })
        function close(){
            layer.close(mainIndex1);
        }

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
                    url = "/demo1/Emp/addOne";
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
        $("#cancle").click(function(){
            cancle1();
        })
        function cancle1(){
            layer.close(mainIndex);
        }
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
        var mainIndex2;
        var mainIndex1;
        var url;
        //添加收款方式
        $('#addpayEdit').click(function () {
            openpay1();
        })
        function openpay1(){
            mainIndex1 = layer.open({
                type: 1,
                content: $("#pay"),
                area: ['350px', '220px'],
                title: '添加收款方式'
            });}
        $("#submitPay").click(function(){
            var paytypeVal = $('#paytypeVal')
            $('.layui-form').find('#fuzhi').val(paytypeVal)
            $('.layui-form').find('#fuzhi2').text(paytypeVal)
            close3();
        })
        function close3(){
            layer.close(mainIndex1);
        }

        function openUpdateUserInfo(data) {
        mainIndex2 = layer.open({
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
                layer.close(mainIndex2);
            })
        })
        $("#cancleEdit").click(function(){
            cancle9();
            console.log("ccccccccccccccccccccccccccccccc")
        })
        function cancle9(){
            layer.close(mainIndex2);
        }
    });
</script>
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
        // var time = year+"-"+month+"-"+day+"-"+hours+"-"+minutes;

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
<%--方法--%>
<script>
    // function addpaytype() {
    //     document.getElementById('pay').style.display = 'block';
    //     document.getElementById('alll_light').style.display = 'block';
    // }
    // function submitPay() {
    //     document.getElementById('pay').style.display = 'none';
    //     document.getElementById('alll_light').style.display = 'none';
    // }
</script>
</body>
</html>
