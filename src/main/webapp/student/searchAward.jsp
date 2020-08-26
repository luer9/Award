<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>查看奖项信息</title>
    <meta name="description" content="Free Bootstrap 4 Admin Theme | Pike Admin">


    <!-- Favicon -->
    <link rel="shortcut icon" href="../static/images/favicon.ico">

    <!-- Switchery css -->
    <link href="../static/plugins/switchery/switchery.min.css" rel="stylesheet"/>

    <!-- Bootstrap CSS -->
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- Font Awesome CSS -->
    <link href="../static/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom CSS -->
    <link href="../static/css/style.css" rel="stylesheet" type="text/css"/>

    <!-- Modernizr -->
    <script src="../static/js/modernizr.min.js"></script>

    <!-- jQuery -->
    <script src="../static/js/jquery.min.js"></script>

    <!-- Moment -->
    <script src="../static/js/moment.min.js"></script>

    <!-- BEGIN CSS for this page -->
    <!--传文件-->
    <link href="../static/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet"/>
    <link href="../static/plugins/jquery.filer/css/jquery.filer.css" rel="stylesheet"/>
    <link href="../static/plugins/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" rel="stylesheet"/>
    <!--传文件css-->

    <!--数据表格-->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>

    <!--图片-->
    <link rel="stylesheet" href="../static/css/viewer.min.css" type="text/css">
    <style>
        td.details-control {
            background: url('../static/plugins/datatables/img/details_open.png') no-repeat center center;
            cursor: pointer;
        }

        tr.shown td.details-control {
            background: url('../static/plugins/datatables/img/details_close.png') no-repeat center center;
        }


        /*图片*/
        #imgdiv{
            width: 980px;
            height: 30px;
            margin:0 auto;
            background: #ccc;
        }

        /*a {*/
        /*    display: inline-block;*/
        /*    width: 100px;*/
        /*    height: 30px;*/
        /*    color: #000;*/
        /*    line-height: 30px;*/
        /*    text-decoration: none;*/

        /*}*/
        /*a:hover{*/
        /*    display: inline-block;*/
        /*    color: #000;*/
        /*    text-decoration: none;*/
        /*}*/

    </style>
    <!-- END CSS for this page -->

</head>

<body class="adminbody">

<div id="main">

    <!-- 头部导航栏 -->
    <div class="headerbar">
        <jsp:include page="headerbar.jsp"></jsp:include>
    </div>
    <!--侧部-->
    <div class="left main-sidebar">
        <jsp:include page="leftsidebar.jsp"></jsp:include>
    </div>
    <div class="content-page">

        <!-- Start content -->
        <div class="content">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-holder">
                            <h1 class="main-title float-left">查看奖项信息</h1>
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item">Home</li>
                                <li class="breadcrumb-item active">查看奖项信息</li>
                            </ol>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <!-- end row -->


                <div class="row">
                    <div class="col-md-12">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example2" class="table table-bordered table-hover display col-md-12">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th>奖项名称</th>
                                            <th>级别</th>

                                            <th>等级</th>
                                            <th>获奖日期</th>
                                            <th>比赛类型</th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>

                            </div>
                        </div><!-- end card-->
                    </div>
                </div>
            </div>
            <!-- END container-fluid -->
        </div>
        <!--修改 Modal -->
        <div class="modal fade" id="modifyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">修改奖项信息</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--内容部分-->
                        <form id="editForm" class="subscribe-form">
                            <div class="form-group">
                                <label>奖项编号：</label>
                                <input class="form-control" name="awardId" type="text" value="" disabled/>
                            </div>
                            <div class="form-group">
                                <label>奖项名称：</label>
                                <input class="form-control" name="awardName" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>级别：</label>
                                <input class="form-control" name="awardLevel" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>等级：</label>
                                <input class="form-control" name="awardRate" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>获奖日期：</label>
                                <input class="form-control" name="awardDate" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>比赛分类</label>
                                <input class="form-control" name="awardClassify" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>比赛类型(个人赛/团体赛)：</label>
                                <input class="form-control" name="awardType" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>团队人数：</label>
                                <input class="form-control" name="awardPeo" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>比赛组织者：</label>
                                <input class="form-control" name="awardOrganization" type="text" value=""/>
                            </div>
                            <div class="form-group">
                                <label>指导教师：</label>
                                <input class="form-control" name="awardTeacherName" type="text" value=""/>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="btn_save">保存</button>
                    </div>
                </div>
            </div>
        </div>
        <!--删除 modal-->
        <div class="modal fade" id="delModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">删除</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal" id="btn_del">确定</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 内容部分结束 -->
</div>
<!-- 内容框架结束 -->
<!--脚-->
<footer class="footer">

    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</div>
<!-- END main -->

<script src="../static/js/popper.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>

<script src="../static/js/detect.js"></script>
<script src="../static/js/fastclick.js"></script>
<script src="../static/js/jquery.blockUI.js"></script>
<script src="../static/js/jquery.nicescroll.js"></script>

<!-- App js -->
<script src="../static/js/pikeadmin.js"></script>

<!-- BEGIN Java Script for this page -->
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
<!--传文件-->
<script src="../static/plugins/jquery.filer/js/jquery.filer.min.js"></script>
<script>
    var awardId;


    $(function () {

        'use-strict';

        //Example 2
        $('#filer_example2').filer({
            limit: 3,
            maxSize: 3,
            extensions: ['jpg', 'jpeg', 'png', 'gif', 'psd'],
            changeInput: true,
            showThumbs: true,
            addMore: true
        });


    });
    $.ajax({
        url: "<%=request.getContextPath()%>/award/findAwardByStuId",
        type: "POST",
        dataType: "JSON",
        success: function (apiResult) {
            if (apiResult.code == 1) {
                alert("获取数据成功");
            }
        },
        error: function () {
            alert("失败了呢");
        }
    });
    var table;
    function getData(){

        table = $('#example2').DataTable({
            "ajax": "../static/data/data.txt",
            retrieve: true,
            //允许重建
            "destroy": true,
            "columns": [{
                "className": 'details-control',
                "orderable": false,
                "data": null,
                "defaultContent": ''
            },
                {
                    "data": 'awardName'
                },
                {
                    "data": 'awardLevel'
                },
                {
                    "data": 'awardRate'
                },
                {
                    "data": 'awardDate'
                },
                {
                    "data": 'awardType'
                }
            ],
            "order": [
                [1, 'asc']
            ],

        });

    }


    $(function () {

        getData();
        // Add event listener for opening and closing details
        $('#example2 tbody').on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = table.row(tr);

            //传出id  st
            awardId = row.data().awardId;
            console.log(awardId);
            btn_edit(awardId);

            if (row.child.isShown()) {
                // This row is already open - close it
                row.child.hide();
                tr.removeClass('shown');
            } else {
                // Open this row
                row.child(format(row.data())).show();

                tr.addClass('shown');
            }
        });

        function btn_edit(id) {
            $.ajax({
                url: '<%=request.getContextPath()%>/award/awardEdit/' + id,
                type: 'get',
                success: function (apiResult) {
                    console.log(apiResult.data);
                    $('input[name=awardId]').val(apiResult.data.awardId);
                    $('input[name=awardName]').val(apiResult.data.awardName);
                    $('input[name=awardLevel]').val(apiResult.data.awardLevel);
                    $('input[name=awardRate]').val(apiResult.data.awardRate);
                    $('input[name=awardDate]').val(apiResult.data.awardDate);
                    $('input[name=awardType]').val(apiResult.data.awardType);
                    $('input[name=awardPeo]').val(apiResult.data.awardPeo);
                    $('input[name=awardClassify]').val(apiResult.data.awardClassify);
                    $('input[name=awardOrganization]').val(apiResult.data.awardOrganization);
                    $('input[name=awardTeacherName]').val(apiResult.data.awardTeacherName);


                }
            });
        }

        $('#btn_save').on("click", function () {
            console.log("进来了");
            $.ajax({
                url: '<%=request.getContextPath()%>/award/award_saveEdit',
                type: 'post',
                data: JSON.stringify({
                    'awardId':$('input[name=awardId]').val(),
                    'awardName':$('input[name=awardName]').val(),
                    'awardLevel':$('input[name=awardLevel]').val(),
                    'awardRate':$('input[name=awardRate]').val(),
                    'awardDate':$('input[name=awardDate]').val(),
                    'awardType':$('input[name=awardType]').val(),
                    'awardPeo':$('input[name=awardPeo]').val(),
                    'awardClassify':$('input[name=awardClassify]').val(),
                    'awardOrganization':$('input[name=awardOrganization]').val(),
                    'awardTeacherName':$('input[name=awardTeacherName]').val()
                }),
                contentType:"application/json;charset=utf-8",
                success: function (apiResult) {
                    if (apiResult.code == 200) {
                        alert("修改成功");

                        window.location.href="<%=request.getContextPath()%>/award/findAwardByStuId";
                        getData();
                        window.location.reload();
                    } else {
                        alert("修改失败");
                    }
                }
            });
        });

        $('#btn_del').on("click",function(){
            $.ajax({
                url: '<%=request.getContextPath()%>/award/award_del',
                type: 'post',
                data: JSON.stringify({
                    'awardId':$('input[name=awardId]').val(),
                }),
                contentType:"application/json;charset=utf-8",
                success: function (apiResult) {
                    if (apiResult.code == 200) {
                        alert("删除成功");

                        window.location.href="<%=request.getContextPath()%>/award/findAwardByStuId";
                        getData();
                        window.location.reload();

                    } else {
                        alert("删除失败");
                    }
                }
            });
        });

        // START CODE FOR Child rows (show extra / detailed information) DATA TABLE
        function format(d) {
            var picPath = ".."+d.awardPic;
            alert(picPath);
            // `d` is the original data object for the row
            return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
                '<tr>' +
                '<td style="width:100px">团队人数:</td>' +
                '<td style="width:150px">' + d.awardPeo + '</td>' +
                '</tr>' +
                '<tr>' +
                '<td style="width:100px">比赛分类:</td>' +
                '<td style="width:150px">' + d.awardClassify + '</td>' +
                '</tr>' +
                '<tr>' +
                '<td style="width:100px">比赛组织者:</td>' +
                '<td style="width:150px">' + d.awardOrganization + '</td>' +
                '</tr>' +
                '<tr>' +
                '<td style="width:100px">导师姓名:</td>' +
                '<td style="width:150px">' + d.awardTeacherName + '</td>' +
                '</tr>' +
                '<tr>' +
                '<td style="width:100px">证书照片:</td>' +
                '<td style="width:150px">' + '<a href="">d.awardPic</a>' + '</td>' +
                '</tr>' +
                '</table>' +
                '<br>' +
                '<div style="text-align:center">' +
                '<button class="btn btn-primary" data-toggle="modal" data-target="#modifyModal" >修改</button>' +
                '<button class="btn btn-danger" data-toggle="modal" data-target="#delModal" style="margin-left:10px" >删除</button>' +
                '</div>';
        }

    });
    // END CODE FOR Child rows (show extra / detailed information) DATA TABLE

</script>

<!--处理图片-->

<script src="../static/js/viewer.min.js"></script>
<!-- 写一个js -->
<script type="text/javascript">
    //点击a标签触发
    $("a").click(function(){
        //先获取 这个a 的 text 属性
        var img_name = $(this).text();
        //获取图片名称前缀
        var imgname = img_name.split(".")[0];
        //拼装完整的img 的路径
        var imgnameall =  "../"+img_name;
        if($("#"+imgname).length > 0){
            // img元素已经存在，不需要再页面添加img元素了
            var viewer = new Viewer(document.getElementById('imgdiv'), {
                    //重新装载一次，在之后添加的图片也可以使用
                    show: function (){
                        viewer.update();
                    },
                    hiden: function() {
                        viewer.destroy();
                    }
                }
            );
            $("#"+imgname).trigger("click");
        }else{
            // 调用写好的js
            $("#imgdiv").append('<img  id="'+imgname+'" src="'+imgnameall+'" style="display:none;" />');
            //修改样式，展示图片
            //$("#"+imgname).css("display","block");
            //为新添加的元素添加一个click事件
            var viewer = new Viewer(document.getElementById('imgdiv'), {
                    //重新装载一次，在之后添加的图片也可以使用
                    //显示的时候 重新装载viewer
                    show: function (){
                        viewer.update();
                    },
                    //点击关闭按钮，将viewer销毁
                    hiden: function() {
                        viewer.destroy();
                    }
                }
            );
            $("#"+imgname).trigger("click");
            //$("#"+imgname).css("display","none");
        }
    });
</script>

<!-- END Java Script for this page -->

</body>
</html>
