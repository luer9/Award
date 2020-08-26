<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>首页</title>
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
    <!-- BEGIN CSS for this page -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>
    <!-- END CSS for this page -->

</head>
<%--所有奖项页面包括未审核已审核的--%>
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
    <!--内容部分-->
    <div class="content-page">
        <!-- 内容部分开始 -->
        <div class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-holder">
                            <h1 class="main-title float-left">奖项信息</h1>
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item">Home</li>
                                <li class="breadcrumb-item active">奖项信息</li>
                            </ol>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <div class="card mb-3">
                            <!-- 	<div class="card-header">
                                    <h3><i class="fa fa-table"></i> Basic data table</h3>
                                    DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, based upon the foundations of progressive enhancement, and will add advanced interaction controls to any HTML table: pagination, instant search and multi-column ordering. <a target="_blank" href="https://datatables.net/">(more details)</a>
                                </div>
                                     -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example1" class="table table-bordered table-hover display">
                                        <thead>
                                        <tr>
                                            <th>奖项名称</th>
                                            <th>奖项等级</th>
                                            <th>奖项日期</th>
                                            <th>获奖学生id</th>
                                            <th>获奖学生姓名</th>
                                            <th>学院</th>
                                            <th>班级</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div><!-- end card-->
                    </div>

                </div>
                <!-- END container-fluid -->
            </div>
            <!-- 内容部分结束 -->
        </div>
        <!-- 内容框架结束 -->


    </div>
    <!--脚-->
    <footer class="footer">

        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
</div>
</body>
<script>

</script>
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
<script src="../static/js/jquery-ui.min.js"></script>
<!-- BEGIN Java Script for this page -->
<script src="../static/js/jquery-ui.min.js"></script>

<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
<script>
    // START CODE FOR BASIC DATA TABLE
    $(document).ready(function () {

        $.ajax({
            url: "<%=request.getContextPath()%>/award/findAllAward",
            type: "POST",
            dataType: "JSON",
            success: function (apiResult) {
                if (apiResult.code == 1) {
                    apiResult.data.forEach(function (value) {
                        console.log(value);
                        $('#tbody').append(
                            '<tr>' +
                            '<td>' + value.awardName + '</td>' +
                            '<td>' + (value.awardLevel + value.awardRate) + '</td>' +
                            '<td>' + value.awardDate + '</td>' +
                            '<td>' + value.awardStuId + '</td>' +
                            '<td>' + value.stuName + '</td>' +
                            '<td>' + value.stuInstitute + '</td>' +
                            '<td>' + value.stuClass + '</td>' +
                            '<td>' +  '<button class="btn btn-primary" onclick="seeAwardInfor('+value.checkId+','+value.awardStuId+','+value.awardId+')">查看</button> '
                            + '</td>' +
                            '</tr>'
                        );
                    });
                    $('#example1').DataTable();
                }
            },
            error: function () {
                alert("what??")
            }
        });

    });
    function seeAwardInfor(checkId,stuId,awardId){
        alert(checkId + " " + stuId + " " + awardId);
        window.location.href = "Awardinfo.jsp?flag=true&CHECKCODE="+checkId+"&SID="+stuId+"&AID="+awardId;
    }
    // END CODE FOR BASIC DATA TABLE

</script>

<!-- END Java Script for this page -->

</html>
