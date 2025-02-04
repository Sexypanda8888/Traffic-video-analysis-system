<%--
  Created by IntelliJ IDEA.
  User: 12550
  Date: 2021/11/23
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../js/bstable/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../js/bstable/css/bootstrap-table.css" rel="stylesheet" type="text/css">
    <link href="../css/table.css" rel="stylesheet" type="text/css" />
    <link href="../css/news.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #ecf0f5;font-family: 微软雅黑;color: #475059;min-width: 1000px;overflow: auto">
<div class="news_main">
    <div class="l_left news_left">
        <h6>日志栏目</h6>
        <ul class="log_nav">
            <li class="log_active">登录日志</li>
            <li>操作日志</li>
            <li>异常日志</li>
        </ul>
    </div>
    <div class="l_left news_right">
        <h6>日志管理</h6>

        <div class="notice_check">
            <div class="btn-group l_left" style="margin-right: 4px">
                <button type="button" class="btn btn-default change" style="height: 30px;line-height: 30px;padding: 0 12px !important;font-size: 12px">选择条件</button>
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="height: 30px;line-height: 30px">
                    <span class="caret"></span>
                    <span class="sr-only"></span>
                </button>
                <ul class="dropdown-menu">
                    <li>标题</li>
                    <li>IP地址</li>
                    <li>操作类型</li>
                    <li>操作时间</li>
                </ul>
            </div>
            <div class="l_left">
                <input type="text" class="find_input">

            </div>
            <button class="check_btn">查询</button>
            <div class="notice_nav r_right">
                <!--<a class="btn btn-default" onclick="addLog()"><span class="glyphicon glyphicon-plus"></span>新增</a>-->
                <a class="btn btn-default" onclick="delLog()"><span class="glyphicon glyphicon-remove"></span>删除</a>
                <!--<a class="btn btn-default" onclick="addLog()"><span class="glyphicon glyphicon-pencil"></span>编辑</a>-->
            </div>
            <div class="clear"></div>
        </div>
        <ul class="news_table">
            <li>
                <table id="table" class="table_style" style="margin: 0 auto" ></table>
            </li>
            <li style="display: none">
                <table id="table1" class="table_style" style="margin: 0 auto" ></table>
            </li>
            <li style="display: none">
                <table id="table2" class="table_style" style="margin: 0 auto" ></table>
            </li>
        </ul>

    </div>
    <div class="clear"></div>

</div>
<script src="../js/jquery.js" ></script>
<script src="../js/date/js/laydate.js"></script>
<script src="../js/bstable/js/bootstrap.min.js"></script>
<script src="../js/bstable/js/bootstrap-table.js"></script>
<script src="../js/bstable/js/bootstrap-table-zh-CN.min.js"></script>
<script src="../js/layer_v2.1/layer/layer.js"></script>
<script>
    $(function(){
        table();
        nav();
        change();
    });
    function change(){
        $(".dropdown-menu>li").click(function(){
            $(".change").html($(this).html())
        })
    }
    function nav(){
        $(".log_nav li").each(function(index){
            $(this).click(function(){
                $(".log_nav li").removeClass("log_active");
                $(this).addClass("log_active");
                $(".news_table>li").eq(index).show().siblings("li").stop().hide();
            })

        })
    }
    function table(){
        $('#table').bootstrapTable({
            method: "get",
            striped: true,
            singleSelect: false,
            url: "json/log.json",
            dataType: "json",
            pagination: true, //分页
            pageSize: 10,
            pageNumber: 1,
            search: false, //显示搜索框
            contentType: "application/x-www-form-urlencoded",
            queryParams: null,
            columns: [
                {
                    checkbox: "true",
                    field: 'check',
                    align: 'center',
                    valign: 'middle'
                }
                ,
                {
                    title: "编号",
                    field: 'id',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    title: '标题',
                    field: 'title',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    title: '操作用户',
                    field: 'person',
                    align: 'center',
                    valign: 'middle'
                },

                {
                    title: 'IP地址',
                    field: 'type',
                    align: 'center'
                },
                {
                    title: '操作时间',
                    field: 'date',
                    align: 'center'
                },
                {
                    title: '操作类型',
                    field: 'oper',
                    align: 'center'
                },
                {
                    title: '执行结果',
                    field: 'result',
                    align: 'center',
                    formatter: function (cellval, row) {
                        if (cellval =='失败'){
                            return '<div  style="color:red">'+cellval+'</div>';
                        } else  if (cellval =='成功'){
                            return '<div  style="color:green">'+cellval+'</div>';
                        }else {
                            return cellval;
                        }}
                }
            ]
        });
        $('#table1').bootstrapTable({
            method: "get",
            striped: true,
            singleSelect: false,
            url: "json/log.json",
            dataType: "json",
            pagination: true, //分页
            pageSize: 10,
            pageNumber: 1,
            search: false, //显示搜索框
            contentType: "application/x-www-form-urlencoded",
            queryParams: null,
            columns: [
                {
                    checkbox: "true",
                    field: 'check',
                    align: 'center',
                    valign: 'middle'
                }
                ,
                {
                    title: "编号",
                    field: 'id',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    title: '标题',
                    field: 'title',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    title: '操作用户',
                    field: 'person',
                    align: 'center',
                    valign: 'middle'
                },

                {
                    title: 'IP地址',
                    field: 'type',
                    align: 'center'
                },
                {
                    title: '操作时间',
                    field: 'date',
                    align: 'center'
                },
                {
                    title: '操作类型',
                    field: 'oper',
                    align: 'center'
                },
                {
                    title: '执行结果',
                    field: 'result',
                    align: 'center',
                    formatter: function (cellval, row) {
                        if (cellval =='失败'){
                            return '<div  style="color:red">'+cellval+'</div>';
                        } else  if (cellval =='成功'){
                            return '<div  style="color:green">'+cellval+'</div>';
                        }else {
                            return cellval;
                        }}
                }
            ]
        });
        $('#table2').bootstrapTable({
            method: "get",
            striped: true,
            singleSelect: false,
            url: "json/log.json",
            dataType: "json",
            pagination: true, //分页
            pageSize: 10,
            pageNumber: 1,
            search: false, //显示搜索框
            contentType: "application/x-www-form-urlencoded",
            queryParams: null,
            columns: [
                {
                    checkbox: "true",
                    field: 'check',
                    align: 'center',
                    valign: 'middle'
                }
                ,
                {
                    title: "编号",
                    field: 'id',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    title: '标题',
                    field: 'title',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    title: '操作用户',
                    field: 'person',
                    align: 'center',
                    valign: 'middle'
                },

                {
                    title: 'IP地址',
                    field: 'type',
                    align: 'center'
                },
                {
                    title: '操作时间',
                    field: 'date',
                    align: 'center'
                },
                {
                    title: '操作类型',
                    field: 'oper',
                    align: 'center'
                },
                {
                    title: '执行结果',
                    field: 'result',
                    align: 'center',
                    formatter: function (cellval, row) {
                        if (cellval =='失败'){
                            return '<div  style="color:red">'+cellval+'</div>';
                        } else  if (cellval =='成功'){
                            return '<div  style="color:green">'+cellval+'</div>';
                        }else {
                            return cellval;
                        }}
                }
            ]
        });
    }
    function delLog(){
        layer.open({
            type: 2,
            title: '清空登录日志',
            shade: 0.5,
            skin: 'layui-layer-rim',
            area: ['362px', '200px'],
            shadeClose: true,
            closeBtn: 1,
            content: 'log_tail.html'
        })
    }
    function addLog(){
        layer.open({
            type: 2,
            title: '添加日志',
            shade: 0.5,
            skin: 'layui-layer-rim',
            area: ['920px', '580px'],
            shadeClose: true,
            closeBtn: 1,
            content: 'log_add.html'
        })
    }
</script>
</body>
</html>
