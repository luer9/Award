<%@ page import="com.yll.entity.AwardCheck" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>审核情况</title>
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
    <style>
        table thead tr th {
            /* border: 1px solid #000000; */
            vertical-align: middle;
            text-align: center;
        }

        table tbody tr td {
            /* border: 1px solid #000000; */
            vertical-align: middle !important;
            text-align: center;
        }

        table tbody tr td:nth-of-type(1) {
            font-weight: 800;
        }
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
    <!--内容-->
    <div class="content-page">

        <!-- Start content -->
        <div class="content">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-holder">
                            <h1 class="main-title float-left">查看审核情况</h1>
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item">Home</li>
                                <li class="breadcrumb-item active">查看审核情况</li>
                            </ol>
                            <div class="clearfix"></div>
                        </div>
                        <button type="button" class="btn btn-primary pull-right" style="margin-bottom: 20px;"
                                data-toggle="tooltip" data-placement="top" title="仅可导出已通过审核的奖项" id="btn_file1">
                            <li class="fa fa-file"></li>
                        </button>
                    </div>

                </div>
                <!-- end row -->


                <div class="row">
                    <div class="col-md-12">
                        <div class="card mb-3">
                            <div class="card-body">
                                <table class="table table-responsive-xl table-hover">
                                    <thead>
                                    <tr>
                                        <th>奖项名称</th>
                                        <th>等级</th>
                                        <th>获奖日期</th>
                                        <th>比赛类型</th>
                                        <th>指导老师</th>
                                        <th>比赛分类</th>
                                        <th>审核情况</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">

                                    </tbody>
                                </table>

                            </div>
                        </div><!-- end card-->
                    </div>
                </div>
            </div>
            <!-- END container-fluid -->
            <!--反馈 Modal -->
            <div class="modal fade" id="feedbackModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">反馈情况</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <h5>未通过审核原因:</h5>
                            <p id="reason">

                            </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">收到</button>
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
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
        $('[data-toggle="popover"]').popover()
    })

</script>

<script>


    $.ajax({
        url: "<%=request.getContextPath()%>/award/findAwardCheck",
        type: "POST",
        dataType: "JSON",
        success: function (apiResult) {
            if (apiResult.code == 1) {
                apiResult.data.forEach(function(value){
                	console.log(value);
                    $('#reason').text(value.notes);
                	// var awardLevel = value.awardLevel;
                    if(value.checkFlag == 1) {
                        $('#tbody').append(
                            '<tr>' +
                            '<td>' + value.awardName + '</td>' +
                            '<td>' + (value.awardLevel+value.awardRate) + '</td>' +
                            '<td>' + value.awardDate + '</td>' +
                            '<td>' + value.awardType + '</td>' +
                            '<td>' + value.awardTeacherName + '</td>' +
                            '<td>' + value.awardClassify + '</td>' +
                            '<td>' +'<button class="btn btn-outline-success" disabled="disabled">通过</button>'
                        + '</td>' +
                        '</tr>'
                        )
                    }else if(value.checkFlag == 0){


                        $('#tbody').append(
                            '<tr>' +
                            '<td>' + value.awardName + '</td>' +
                            '<td>' + (value.awardLevel+value.awardRate) + '</td>' +
                            '<td>' + value.awardDate + '</td>' +
                            '<td>' + value.awardType + '</td>' +
                            '<td>' + value.awardTeacherName + '</td>' +
                            '<td>' + value.awardClassify + '</td>' +
                            '<td>' +'<button class="btn btn-outline-danger" data-toggle="modal" data-target="#feedbackModal">未通过</button>'
                            + '</td>' +
                            '</tr>'
                        )

                    }else {
                        $('#tbody').append(
                            '<tr>' +
                            '<td>' + value.awardName + '</td>' +
                            '<td>' + (value.awardLevel+value.awardRate) + '</td>' +
                            '<td>' + value.awardDate + '</td>' +
                            '<td>' + value.awardType + '</td>' +
                            '<td>' + value.awardTeacherName + '</td>' +
                            '<td>' + value.awardClassify + '</td>' +
                            '<td>' +'<button class="btn btn-outline-primary" disabled="disabled">待审核</button>'
                            + '</td>' +
                            '</tr>'
                        )
                    }

                })
            }
        },
        error: function () {
            alert("what??")
        }
    });

    $('#btn_file1').on('click',function(){
        window.location.href="<%=request.getContextPath()%>/excel/exportAward";
    });

</script>
<!-- END Java Script for this page -->

</body>
</html>
