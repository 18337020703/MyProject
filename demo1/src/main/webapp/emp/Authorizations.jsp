<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/29
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>授权管理</title>
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
<%--主题内容--%>
<div class="layui-tab" lay-filter="test">
    <ul class="layui-tab-title">
        <li class="layui-this" lay-id="11">设置管理员</li>
        <li lay-id="22">取消管理员</li>
    </ul>
<%--    两个模块--%>
    <div class="layui-tab-content">
<%--设置管理员--%>
        <div class="layui-tab-item layui-show">
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
                <button class="layui-btn" data-type="reload" id="table1">搜索</button>
            </div>
            <table class="layui-hide" id="idTest1" lay-filter="demo1"></table>
<%--            <table class="layui-table" lay-data="{ url:'/demo1/Dept/datalistAuthorise/', page:true, id:'idTest1'}" lay-filter="demo1">--%>
<%--                <thead>--%>
<%--                <tr>--%>
<%--                    <th lay-data="{field:'id'}">编号</th>--%>
<%--                    <th lay-data="{field:'name'}">账号</th>--%>
<%--                    <th lay-data="{field:'truename',width:120}">真实姓名</th>--%>
<%--                    <th lay-data="{field:'phone',width:120}">手机号</th>--%>
<%--                    <th lay-data="{field:'upload',width:120}">上传文件</th>--%>
<%--                    <th lay-data="{field:'deptid',width:120}">默认客户</th>--%>
<%--                    <th lay-data="{field:'paytype',width:120}">默认收款方式</th>--%>
<%--                    <th lay-data="{field:'workstate',width:120}">在职状态</th>--%>
<%--                    <th lay-data="{field:'empcreatedate',width:120}">创建时间</th>--%>
<%--                    <th lay-data="{fixed: 'right', width:155, align:'center', toolbar: '#barDemoAuthorise'}">操作</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--            </table>--%>

        </div>
<%--撤销管理员--%>
        <div class="layui-tab-item">
            <div style="margin-bottom: 5px;">

                <!-- 示例-970 -->
                <ins class="adsbygoogle" style="display:inline-block;
    width:970px;height:90px"
                     data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>

            </div>
            <div class="demoTable">
                搜索ID：
                <div class="layui-inline">
                    <input class="layui-input" name="name" id="demoReloadUser" autocomplete="off">
                </div>
                <button class="layui-btn" data-type="reload1" id="table2">搜索</button>
            </div>
            <table class="layui-hide" id="idTest2" lay-filter="demo2"></table>
<%--            <table class="layui-table" lay-data="{ url:'/demo1/user/findUser/', page:true, id:'idTest2'}" lay-filter="demo2">--%>
<%--                <thead>--%>
<%--                <tr>--%>
<%--                    <th lay-data="{field:'id'}">编号</th>--%>
<%--                    <th lay-data="{field:'name'}">账号</th>--%>
<%--                    <th lay-data="{field:'truename',width:120}">真实姓名</th>--%>
<%--                    <th lay-data="{field:'phone',width:120}">手机号</th>--%>
<%--                    <th lay-data="{field:'upload',width:120}">上传文件</th>--%>
<%--                    <th lay-data="{field:'deptid',width:120}">默认客户</th>--%>
<%--                    <th lay-data="{field:'paytype',width:120}">默认收款方式</th>--%>
<%--                    <th lay-data="{field:'workstate',width:120}">在职状态</th>--%>
<%--                    <th lay-data="{field:'empcreatedate',width:120}">创建时间</th>--%>
<%--                    <th lay-data="{fixed: 'right', width:155, align:'center', toolbar: '#barDemo'}">操作</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--            </table>--%>
        </div>
    </div>
</div>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
<%--数据表格1--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#idTest1'
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
                ,{fixed: 'right', width:155,title: '操作', align:'center', toolbar: '#barDemoAuthorise'}
            ]]
            ,page: true
        });
    });
</script>
<%--数据表格2--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#idTest2'
            //,toolbar:'#demo'
            ,url:'/demo1/User/findUser/'
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
<%--表格切换控制器--%>
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
<%--授权和取消授权--%>
<script type="text/html" id="barDemoAuthorise">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="authorise">授权</a>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="authoriseUser">取消授权</a>
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
                table.reload('idTest1', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        name:
                            demoReload.val()
                    }
                }, 'data');
            },
            reload1: function(){
                var demoReload = $('#demoReloadUser');
                console.log('11111',demoReload.val())
                //执行重载
                table.reload('idTest2', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        name:
                            demoReload.val()
                    }
                }, 'data');
            },

        };
        $('#table1').on('click', function(){
            var type = $(this).data('type');
            console.log('TYPE',type)
            active[type] ? active[type].call(this) : '';
        });
        $('#table2').on('click', function () {
            console.log('123478')
            var type = $(this).data('type');
            console.log("type"+type)
            active[type] ? active[type].call(this) : '';
        });
    });

</script>
<%--编辑删除JS--%>
<script>
    layui.use(['jquery', 'form', 'table', 'layer', 'laydate', 'layedit'], function () {
        var table = layui.table;
        var $ = layui.jquery;
        var layer = layui.layer;
        var laydate = layui.laydate;
        var layedit = layui.layedit;
        var form = layui.form;

        //监听工具条
        table.on('tool(demo1)', function (obj) {
            var data = obj.data;
            if (obj.event === 'authorise') {
                console.log("设置管理员")
                layer.confirm('你确定将[ ' + data.truename + ' ]设置为管理员吗?', function (index) {
                    console.log(data)
                    obj.del();
                    $.post("/demo1/User/addUser/", {id: data.id}, function (res) {
                        obj.del();
                        //if (res.code == 200) {
                            table.reload('idTest1', {
                                page: {
                                    curr: 1 //重第 页开始
                                }
                            });

                            table.reload('idTest2', {
                                    page: {
                                        curr: 1 //重第 页开始
                                    }
                                });
                        // }
                        layer.msg(res.msg);
                    });
                    layer.close(index);
                })

            }
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
        //监听工具条
        table.on('tool(demo2)', function(obj){
            var data = obj.data;
            if(obj.event === 'authoriseUser'){
                console.log("取消管理员")
                layer. confirm( '你确定将[ ' +data.truename+ ' ]移除管理员吗?',function(index) {
                    console.log(data)
                    obj.del();
                    $.post("/demo1/User/deleteUser/", {id:data.id}, function (res) {
                        obj.del();
                        if (res.code == 200) {
                            table.reload('idTest2', {
                                page: {
                                    curr: 1 //重第 页开始
                                }
                            } );
                            table.reload('idTest1', {
                                    page: {
                                        curr: 1 //重第 页开始
                                    }
                            });
                        }
                        layer.msg(res.msg);
                    });
                    layer.close(index);
                })

            }
            active = {
                reload: function () {
                    var demoReload = $('#demoReloadUser');
                    console.log('11111', demoReload.val())
                    //执行重载
                    table.reload('idTest2', {
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
</body>
</html>
