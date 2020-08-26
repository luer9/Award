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
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>
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
    <!--内容部分-->
    <div class="content-page">
        <!-- 内容部分开始 -->
        <div class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb-holder">
                            <h1 class="main-title float-left">审核情况</h1>
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item">Home</li>
                                <li class="breadcrumb-item active">查看审核情况</li>
                            </ol>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <!-- end row -->
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
                                    <table id="example2" class="table table-bordered table-hover display">
                                        <thead>
                                        <tr>
                                            <th>奖项名称</th>
                                            <th>奖项等级</th>
                                            <th>奖项日期</th>
                                            <th>奖项分类</th>
                                            <th>获奖学生id</th>
                                            <th>获奖学生姓名</th>
                                            <th>学院</th>
                                            <th>班级</th>
                                            <th>审核情况</th>
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
                        <h5>审核结果:</h5>
                        <p id="reason">

                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success"  id="btn_edit">修改</button>
                    </div>
                </div>
            </div>
        </div>
        <!--脚-->
        <footer class="footer">

            <jsp:include page="footer.jsp"></jsp:include>
        </footer>

    </div>
</div>
</body>
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

    <!-- END Java Script for this page -->
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
    <script>
        // START CODE FOR BASIC DATA TABLE
        var checkId;
        function seeNotes(CHECKID){
            console.log(CHECKID);
            checkId = CHECKID;
            showNotes(checkId);
            $("#feedbackModal").modal();
        }
        //显示notes
        function showNotes(checkId) {
            $.ajax({
                url: "<%=request.getContextPath()%>/award/showNotes",
                type: 'POST',
                dataType: 'JSON',
                data:{
                    checkId:checkId
                },
                success:function (value) {
                    if(value.code == 1){
                        $("#reason").text(value.data.notes);
                    }else {
                        alert("出现未知错误");
                    }
                },
                error: function () {
                    alert("error");
                }
            });
        }
        //修改不通过的备注
        function btn_OK(){
            var notes = $("#feedback").val();
            if(notes == null || notes == undefined) notes = "";
            alert("进来了~" + checkId +" " +notes);
            var data = {notes:notes, checkId:checkId};
            $.ajax({
                url:"<%=request.getContextPath()%>/award/editNotes",
                type: 'POST',
                dataType: 'JSON',
                data: data,
                success: function(value){
                    if(value.code == 1){
                        alert("修改成功");
                    }else  if(value.code == 404){
                        alert("修改失败");

                    }
                    window.location.reload();
                },
                error: function () {
                    alert("error");
                    window.location.reload();

                }

            });

        }

        $("#btn_edit").on("click", function(){
            $("#reason").remove();
            $(".modal-body").append("  备注：\n" +
                "<textarea required class=\"form-control\" id=\"feedback\"></textarea>");
            $('#btn_edit').innerText = "确认";
            $('#btn_edit').remove();
            $(".modal-footer").append("<button type=\"button\" class=\"btn btn-success\" data-dismiss=\"modal\" onclick=\"btn_OK()\">确认</button>");
        });

        $(document).ready(function () {
            $.ajax({
                url: "<%=request.getContextPath()%>/award/findCheckedAwardinfor",
                type: "POST",
                dataType: "JSON",
                success: function (apiResult) {
                    if (apiResult.code == 1) {
                        apiResult.data.forEach(function (value) {

                            console.log(value);
                            if(value.checkFlag == 1) {
                                $('#tbody').append(
                                    '<tr>' +
                                    '<td>' + value.awardName + '</td>' +
                                    '<td>' + (value.awardLevel + value.awardRate) + '</td>' +
                                    '<td>' + value.awardDate + '</td>' +
                                    '<td>' + value.awardType + '</td>' +
                                    '<td>' + value.awardStuId + '</td>' +
                                    '<td>' + value.stuName + '</td>' +
                                    '<td>' + value.stuInstitute + '</td>' +
                                    '<td>' + value.stuClass + '</td>' +
                                    '<td>' + '<button class="btn btn-outline-success" data-toggle="modal" onclick="seeNotes('+value.checkId+')" >通过</button>'
                                    + '</td>' +
                                    '</tr>'
                                )

                            } else if(value.checkFlag == 0) {
                                $('#tbody').append(
                                    '<tr>' +
                                    '<td>' + value.awardName + '</td>' +
                                    '<td>' + (value.awardLevel + value.awardRate) + '</td>' +
                                    '<td>' + value.awardDate + '</td>' +
                                    '<td>' + value.awardType + '</td>' +
                                    '<td>' + value.awardStuId + '</td>' +
                                    '<td>' + value.stuName + '</td>' +
                                    '<td>' + value.stuInstitute + '</td>' +
                                    '<td>' + value.stuClass + '</td>' +
                                    '<td>' + '<button class="btn btn-outline-danger" data-toggle="modal" onclick="seeNotes('+value.checkId+')" >未通过</button>'
                                    + '</td>' +
                                    '</tr>'
                                );

                            }
                        });
                        $('#example2').DataTable();
                    }
                },
                error: function () {
                    alert("what??")
                }
            });
        });
        // END CODE FOR BASIC DATA TABLE

    </script>
</html>
