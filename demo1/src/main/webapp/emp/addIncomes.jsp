<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/3
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加财务收支</title>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.4/css/layui.css" media="all">
<%--    <link rel="stylesheet" type="text/css"--%>
<%--          href="${path}/css/homepage.css"/>--%>
    <style type="text/css">
        input.layui-input {
            width: 250px;
        }
        .layui-select-title i {
            top: 18px !important;
            right: 203px !important;
            margin-top: 0 !important;
        }
        .upload{
            width: 550px;
            height: 600px;
            border-radius: 3%;
            background-color: #FFFFFF;
            margin-left: 20px;
            margin-top: 20px;
        }
        .submit{
            width: 550px;
            height: 600px;
            border-radius: 3%;
            background-color: #FFFFFF;
            margin-left: 20px;
            margin-top: 20px;
        }
        .body{
            display: flex;
            background-color: #eff0f1;
        }.tijiao{
            width: 100px;
            height: 35px;
            background-color: #009E94;
            border: #009E94;
            color: #FFFFFF;
                     margin-left: 206px;
            margin-top: 50px;
                 }
        .but{
            display: block;
            width: 106px;
            height: 35px;
            background-color: #009E94;
            border: #009E94;
            color: #FFFFFF;
            margin-left: 206px;
            margin-top: 50px;
            font-size: 26px;
        }
.img{
    width: 200px;
    height: 35px;
    background-color: #009E94;
    border: #009E94;
    color: #FFFFFF;
    margin-left: 160px;
    margin-top: 30px;
}
    </style>
</head>
<body class="body">



<div class="upload">

   <form method="post" action="${pageContext.request.contextPath}/Dept/upload" enctype="multipart/form-data">
       <span class="but">上传图片</span> <input type="file" class="img" name="img">
                <input type="submit" class="tijiao" value="提交">
   </form>

</div>
<div class="submit">
    <span class="add-head">收款</span>

    <form class="layui-form" action="" method="post"  id="incomeDataFrm" lay-filter="incomeDataFrm" enctype="multipart/form-data">
<%--       <input type="hidden" name="id" value="6">--%>
    <input type="hidden" name="createman"  value="${emp.truename}">
    <input type="hidden" name="modifier" id="hidden" value="领英">
    <input type="hidden" name="state" value="1">
    <div class="layui-form-item">
        <label class="layui-form-label">*客户名称</label>
        <div class="layui-input-block">
            <select name="client" lay-filter="aihao">
                <option value=""></option>
                <option value="王经理" selected="selected">王经理</option>
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
            <label class="layui-form-label">支付时间</label>
            <div class="layui-input-inline">
                <input type="text" name="incometime" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">*收入类型</label>
            <div class="layui-input-block">
                <input type="radio" name="incometype" value="收入" title="收入" checked="">
                <input type="radio" name="incometype" value="支出" title="支出">

            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">*金额</label>
            <div class="layui-input-block">
                <input type="text" id="phone" name="money" lay-verify="title" autocomplete="off" placeholder="请输入金额"
                       class="layui-input">
            </div>
        </div>



        <div class="layui-form-item">
            <label class="layui-form-label">*默认服务人员</label>
            <div class="layui-input-block">
                <select name="empid" lay-filter="aihao">
                    <option value=""></option>
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

    <div class="layui-form-item">
        <label class="layui-form-label">*收款方式</label>
        <div class="layui-input-block">
            <select name="incomemethod" lay-filter="aihao">
                <option value=""></option>
                <option value="现金" selected="selected">现金</option>
                <option value="扫码">扫码</option>
                <option value="刷卡">刷卡</option>
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
<%--        <div >--%>
<%--            <input id="img" type="test" name="path" value="">--%>
<%--        </div>--%>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1" id="addSubmit">立即提交</button>
            </div>
        </div>

    </form>
</div>
<script src="https://heerey525.github.io/layui-v2.4.3/layui/layui.js" charset="utf-8"></script>
<%--添加收支--%>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        // form.verify({
        //     title: function(value){
        //         if(value.length < 5){
        //             return '标题至少得5个字符啊';
        //         }
        //     }
        //     ,pass: [
        //         /^[\S]{6,12}$/
        //         ,'密码必须6到12位，且不能出现空格'
        //     ]
        //     ,content: function(value){
        //         layedit.sync(editIndex);
        //     }
        // });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function(){
            form.val('example', {
                "username": "贤心" // "name": "value"
                ,"password": "123456"
                ,"interest": 1
                ,"like[write]": true //复选框选中状态
                ,"close": true //开关状态
                ,"sex": "女"
                ,"desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function(){
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });
</script>
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



        //打开修改的弹出层
        $("#addSubmit").click(function(){
            console.log("收支")
           var url = "/demo1/Dept/income/";
            var data=$("#incomeDataFrm").serialize();
            $.post(url,data,function(res){
                // $('#id12').attr("src",res.path)
                if(res.code==200){
                    // table.reload('idTest',{
                    //     page:{
                    //         curr:data.page
                    //     }
                    // })
                    layer.msg(res.msg)
                }
                layer.msg(res.msg);
                layer.close(mainIndex);
            })
        })
    });
</script>
<%--文件上传--%>
<script>
    layui.use('upload', function() {
        var $ = layui.jquery
            , upload = layui.upload;

        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1'
            , url: '/upload/'
            , before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            , done: function (res) {
                //如果上传失败
                if (res.code > 0) {
                    return layer.msg('上传失败');
                }
                //上传成功
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
        });
    });
</script>
</body>
</html>
