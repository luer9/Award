<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>提交获奖项</title>
		<meta name="description" content="Free Bootstrap 4 Admin Theme | Pike Admin">


		<!-- Favicon -->
		<link rel="shortcut icon" href="../static/images/favicon.ico">

		<!-- Switchery css -->
		<link href="../static/plugins/switchery/switchery.min.css" rel="stylesheet" />

		<!-- Bootstrap CSS -->
		<link href="../static/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

		<!-- Font Awesome CSS -->
		<link href="../static/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<!-- Custom CSS -->
		<link href="../static/css/style.css" rel="stylesheet" type="text/css" />

		<!-- Modernizr -->
		<script src="../static/js/modernizr.min.js"></script>

		<!-- jQuery -->
		<script src="../static/js/jquery.min.js"></script>

		<!-- Moment -->
		<script src="../static/js/moment.min.js"></script>

		<!-- BEGIN CSS for this page -->
		<link href="../static/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" />
		<link href="../static/plugins/jquery.filer/css/jquery.filer.css" rel="stylesheet" />
		<link href="../static/plugins/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" rel="stylesheet" />
		<!-- END CSS for this page -->

	</head>

	<body class="adminbody">

		<div id="main">
			<!-- 头部导航栏 -->
			<div class="headerbar">
				<jsp:include page="headerbar.jsp" ></jsp:include>
			</div>
			<!--侧部-->
			<div class="left main-sidebar">
				<jsp:include page="leftsidebar.jsp"></jsp:include>
			</div>

			<!--内容page开始-->
			<div class="content-page">

				<!-- 内容部分 -->
				<div class="content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-xl-12">
								<div class="breadcrumb-holder">
									<h1 class="main-title float-left">填写奖项信息</h1>
									<ol class="breadcrumb float-right">
										<li class="breadcrumb-item">Home</li>
										<li class="breadcrumb-item active">填写奖项信息</li>
									</ol>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<!-- end row -->


						<div class="row">
							<div class="col-xl-12">
								<h5>Attention</h5>
								<!--begin-->
								<div class="card mb-3">
									<div class="card-header">
										<h3><i class="fa fa-check-square-o"></i>注意事项</h3>
										请按照输入框下的文字提示如实填写，否则将被驳回。
									</div>
									<div class="card-body">
										<form method="post" id="form" enctype="multipart/form-data">
											<div class="form-group col-md-6">
												<label for="awardName">奖项名称</label>
												<input type="text" class="form-control" id="awardName" placeholder="请输入奖项名称" required autocomplete="off">
											</div>
											<div class="form-group col-md-6">
												<label for="awardLevel">奖项级别</label>
												<input type="text" class="form-control" id="awardLevel" placeholder="请输入获奖级别" required autocomplete="off">
												<small  class="form-text text-muted">（院级，校级，省级，国家级）</small>
											</div>
											<div class="form-group col-md-6">
												<label for="awardRate">奖项等级</label>
												<input type="text" class="form-control" id="awardRate" placeholder="请输入获奖等级" required autocomplete="off">
												<small class="form-text text-muted">（参与奖4，三等奖3，二等奖2，一等奖1，特等奖0）</small>
											</div>
											<div class="form-group col-md-6">
												<label for="awardOrganization">奖项组织者</label>
												<input type="text" class="form-control" id="awardOrganization" placeholder="此项不填大概率被驳回" autocomplete="off">
												<small  class="form-text text-muted">比赛组织者，发起人，发起单位</small>
											</div>
											<div class="form-group col-md-6">
												<label for="awardDate">获奖日期</label>
												<input type="text" class="form-control" id="awardDate" placeholder="请输入获奖日期" required autocomplete="off">
												<small  class="form-text text-muted">注意格式：XXXX.XX.XX</small>
											</div>
											<div class="form-group col-md-6">
												<label for="awardTeacherName">指导老师姓名</label>
												<input type="text" class="form-control" id="awardTeacherName" placeholder="请输入指导老师姓名" autocomplete="off">

											</div>
											<div class="form-group col-md-4">
												<label for="awardClassify">比赛分类</label>
												<select id="awardClassify" class="form-control">
													<option selected>学科竞赛</option>
													<option>专业技能类竞赛</option>
													<option>创新项目</option>
													<option>体美综合素质</option>
												</select>
											</div>
											<div class="form-group col-md-8">
												<div class="row" id="inputPeo">
													<label class="col-sm-2 col-form-label">比赛类型</label>
													<div class="col-sm-10">
														<div class="form-check">
															<label class="form-check-label">
																<input class="form-check-input" type="radio" name="gridRadios" id="onepeo" value="个人赛" checked>
																个人赛
															</label>
														</div>
														<div class="form-check">
															<label class="form-check-label">
																<input class="form-check-input" type="radio" name="gridRadios" id="morepeo" value="团体赛">
																团体赛
															</label>
														</div>
													</div>
												
												</div>
											</div>

											<div class="form-group col-md-6">
												<label for="filer_example2">证书照片</label>
												<input type="file" name="files[]" id="filer_example2" multiple="multiple" required>
												<small id="numberlHelp" class="form-text text-muted">Maximum 3 files, all files together must have maximal
													10MB and the extensions must be matched in the array ['jpg', 'png', 'gif'].</small>

											</div>
											<button type="button" class="btn btn-primary" style="margin-left: 10px;" id="btn_submit">提交</button>
										</form>
									</div>
								</div><!-- end card-->
							</div>
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
		<script src="../static/plugins/jquery.filer/js/jquery.filer.min.js"></script>
		<script>
			$(document).ready(function() {

				'use-strict';

				//Example 2
				$('#filer_example2').filer({
					limit: 3,
					maxSize: 10,
					extensions: ['jpg', 'jpeg', 'png', 'gif', 'psd'],
					changeInput: true,
					showThumbs: true,
					addMore: true
				});
				
				
			});
			/**
			 * 控制输出团体赛人数
			 * */
			$(function(){
				$("input[type='radio']").on("click",function(){
					if($("input[id='morepeo']:checked").val() == "团体赛"){
						$("#inputPeo").append("<div class='col-md-4' id='collectPeo'><label for='awardPeo'>团体赛人数<input type='number' class='form-control' min='1' id='awardPeo' autocomplete='off'></label><label for='awardLeader'>是否是负责人(0/1)：<input type='text' class='form-control' id='awardLeader' autocomplete='off'></label></div>");
						$("input[id='morepeo']").attr("disabled",true);
					}else if($("input[id='onepeo']:checked").val() == "个人赛"){
						$("input[id='morepeo']").attr("disabled",false);
						$("#collectPeo").remove();
					}
				});
			});

			$("#btn_submit").on("click",function(){
				var formData = new FormData();
				// var temFile = document.getElementById("filer_example2");
				// var fileObj = temFile.files[0];
				// formData.append('awardPic',fileObj);
                formData.append('awardPic',$('#filer_example2')[0].files[0]);
				formData.append('awardName',$('#awardName').val());
                formData.append('awardLevel',$('#awardLevel').val());
                formData.append('awardRate',$('#awardRate').val());
                formData.append('awardClassify',$('#awardClassify').val());
                formData.append('awardOrganization',$('#awardOrganization').val());
                formData.append('awardDate',$('#awardDate').val());
                formData.append('awardType',$('input:radio:checked').val());
                formData.append('awardPeo',$('#awardPeo').val());
                formData.append('awardTeacherName',$('#awardTeacherName').val());
                formData.append('awardLeader',$('#awardLeader').val());
                console.log(formData);
				$.ajax({
					url:'<%=request.getContextPath()%>/award/saveAward',
					type: "post",
					cache: false, //上传文件不需要缓存
					async: true,
					data: formData,
					processData: false, // 此处是关键：告诉jQuery不要去处理发送的数据
					contentType: false, // 此处是关键：告诉jQuery不要去设置Content-Type请求头
					success: function (apiResult) {
						//处理成功后动作，比如调转window.location.href ='/list'
						if(apiResult.code == 200){
							alert("提交成功！");
							// InsertCheckinfor(apiResult.data.awardId);
						}else{
							alert("提交失败！");
						}
						// console.log(apiResult.data.awardId);

						window.location.reload();
					},
					error : function(apiResult) {
						alert(apiResult.message);
					}
				});
			});
		</script>
		<!-- END Java Script for this page -->
		<!-- END Java Script for this page -->

	</body>
</html>
