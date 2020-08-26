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
    <link href="../static/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet"/>
    <style>
        #external-events .fc-event {
            margin: 10px 0;
            cursor: pointer;
        }

        #calendar {
            width: 100%;
        }

        .fc-event {
            font-size: 1em;
            border-radius: 2px;
            border: none;
            padding: 5px;
        }

        .fc-day-grid-event .fc-content {
            color: #fff;
        }

        .fc-button {
            background: #eaeaea;
            border: none;
            color: #666b6f;
            margin: 0 3px !important;
            padding: 5px 12px !important;
            text-transform: capitalize;
            height: auto !important;
            box-shadow: none !important;
            border-radius: 3px !important;
        }

        .fc-state-down, .fc-state-active, .fc-state-disabled {
            background-color: #009ffc !important;
            color: #ffffff !important;
            text-shadow: none !important;
        }

        .fc-toolbar h2 {
            font-size: 20px;
            font-weight: 600;
            line-height: 28px;
            text-transform: uppercase;
        }

        .fc th.fc-widget-header {
            background: #e6e6e6;
            font-size: 13px;
            text-transform: uppercase;
            line-height: 18px;
            padding: 10px 0px;
        }

        .fc-unthemed th, .fc-unthemed td, .fc-unthemed thead, .fc-unthemed tbody, .fc-unthemed .fc-divider, .fc-unthemed .fc-row, .fc-unthemed .fc-popover {
            border-color: #eff1f3;
        }

    </style>
    <!-- END CSS for this page -->

</head>
<%--奖项审核界面--%>
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
                            <h1 class="main-title float-left">审核奖项信息</h1>
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item">Home</li>
                                <li class="breadcrumb-item active">奖项信息</li>
                            </ol>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <!-- end row -->


                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="card mb-3">
                            <div class="card-header">
                                <h3><i class="fa fa-check-square-o"></i> 奖项详细信息如下</h3>
                                <hr/>
								<label>学号: </label>
								<label id="stuId"></label>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<label>姓名: </label>
								<label id="stuName"></label>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<label>学院:</label>
								<label id="stuInstitute"></label>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<label>专业:</label>
								<label id="stuMajor"></label>
								&nbsp;&nbsp;&nbsp;&nbsp;

							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-lg-9 col-xl-9">
										<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
													<label>奖项姓名：</label>
													<label id="awardName"></label>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="form-group">
													<label>奖项等级：</label>
													<label id="awardLevelRate"></label>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="form-group">
													<label>比赛分类：</label>
													<label id="awardClassify"></label>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="form-group">
													<label>比赛类型：</label>
													<label id="awardType"></label>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="form-group">
													<label>团队人数：</label>
													<label id="awardPeo"></label>
												</div>
											</div>

											<div class="col-lg-12">
												<div class="form-group">
													<label>指导老师：</label>
													<label id="awardTeacherName"></label>
												</div>
											</div>

											<div class="col-lg-12">
												<div class="form-group">
													<label>比赛组织者：</label>
													<label id="awardOrganization"></label>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="form-group">
													<label>是否是负责人：</label>
													<label id="awardLeader"></label>
												</div>
											</div>
										</div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end card-->


                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <h4><i class="fa fa-check-square-o"></i> 证书照片如下</h4>
                        <div style="width: 100%; height: 90%; text-align: center;">
                            <br>
                            <img src="../static/plugins/bootstrap-sweetalert/thumbs-up.jpg">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#passModal">审核
                        </button>

                    </div>
                </div>
                <!-- END container-fluid -->
            </div>
            <!-- 内容部分结束 -->
        </div>
        <!-- 内容框架结束 -->

        <!--脚-->
        <footer class="footer">

            <jsp:include page="footer.jsp"></jsp:include>
        </footer>

        <!-- passModal -->
        <div class="modal fade" id="passModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">是否通过？</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        备注：
                        <textarea required class="form-control" id="feedback"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="Nopass()">不通过</button>
                        <button type="button" class="btn btn-primary" onclick="pass()">通过</button>
                    </div>
                </div>
            </div>
        </div>
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
    <script src="../static/js/jquery-ui.min.js"></script>
    <script>
		var checkId;
		var stuId;
		var awardId;
		$(function () {
			var url = window.location.href;
			var index = url.indexOf("flag");
			//说明由allAward页面跳转而来
			if (index != -1) {
				//参数准备
				checkId = GetQueryValue1("CHECKCODE");
				stuId = GetQueryValue1("SID");
				awardId = GetQueryValue1("AID");
				alert(checkId + ' ' + stuId + ' ' + awardId);
				var data = {
					checkId: checkId,
					stuId: stuId,
					awardId: awardId
				};
				$.ajax({
					url: "<%=request.getContextPath()%>/award/findAwardInforById",
					type: 'POST',
					dataType: 'JSON',
					data: data,
					success: function (value) {
						console.log(value.data);
						for(let key in value.data){
							if(value.data[key] == null || value.data[key] == undefined){
								value.data[key] = "";
							}
						}
						$("#stuId").text(value.data.awardStuId + "");
						$("#stuName").text(value.data.stuName+ "");
						$("#stuInstitute").text(value.data.stuInstitute+ "");
						$("#stuMajor").text(value.data.stuMajor+ "");
						$("#awardName").text(value.data.awardName);
						$("#awardLevelRate").text(value.data.awardLevel + "" + value.data.awardRate);
						$("#awardClassify").text(value.data.awardClassify+ "");
						$("#awardType").text(value.data.awardType+ "");
						$("#awardPeo").text(value.data.awardPeo+ "");
						$("#awardTeacherName").text(value.data.awardTeacherName+ "");
						$("#awardOrganization").text(value.data.awardOrganization+ "");
						$("#awardLeader").text(value.data.awardLeader == '1' ? '是' : '不是');
						// $("#awardPic").text();
					},
					error: function () {
						alert("error");
					}
				});
			}
		});

		//通过正则获取到参数值
		function GetQueryValue1(queryName) {
			var reg = new RegExp("(^|&)" + queryName + "=([^&]*)(&|$)", "i");
			var r = window.location.search.substr(1).match(reg);
			if (r != null) {
				return decodeURI(r[2]);
			} else {
				return null;
			}
		}
		function  pass() {
			var notes = $("#feedback").val();
            console.log(notes);
			$.ajax({
				url: "<%=request.getContextPath()%>/award/passAward",
				type: 'POST',
				dataType: 'JSON',
				data: {notes: notes, checkId:checkId},
				success: function (value) {
					if(value.code == 1) {
						alert("审核通过");
                        window.location.href = "awardRes.jsp";
					}else if(value.code == 404){
                        alert("发生错误，审核未通过");
                    }
				},
				error: function () {
					alert("error");
				}
			});
		}
		function Nopass(){
            var notes = $("#feedback").val();
            console.log(notes);
            $.ajax({
                url: "<%=request.getContextPath()%>/award/noPassAward",
                type: 'POST',
                dataType: 'JSON',
                data: {notes: notes, checkId:checkId},
                success: function (value) {
                    if(value.code == 1) {
                        alert("审核不通过");
                        window.location.href = "awardRes.jsp";
                    }else if(value.code == 404){
                        alert("发生错误，审核未通过");
                    }
                },
                error: function () {
                    alert("error");
                }
            });
        }

    </script>
    <!-- END Java Script for this page -->

</body>
</html>
