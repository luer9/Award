<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>用户信息</title>
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
		<style>
			table thead tr th{
				/* border: 1px solid #000000; */
				vertical-align: middle;
				text-align: center;  
			}
			table tbody tr td{
				/* border: 1px solid #000000; */
				vertical-align: middle !important;
				text-align: center;  
			}
			table tbody tr td:nth-of-type(1){
				font-weight: 800;
			}
		</style>
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
			<div class="content-page">

				<!-- Start content -->
				<div class="content">

					<div class="container-fluid">
						<div class="row">
							<div class="col-xl-12">
								<div class="breadcrumb-holder">
									<h1 class="main-title float-left">个人信息</h1>
									<ol class="breadcrumb float-right">
										<li class="breadcrumb-item">Home</li>
										<li class="breadcrumb-item active">个人信息</li>
									</ol>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<!-- end row -->


						<div class="row">
							<div class="col-md-6">
								<div class="card mb-3">
									<div class="card-header">
										<h3><i class="fa fa-user"></i> Profile details</h3>
									</div>
									<div class="card-body">
											<div class="row">
												<div class="col-lg-9 col-xl-9">
													<div class="row">
														<div class="col-lg-12">
															<div class="form-group">
																<label>账号名：</label>
																<label>admin</label>
															</div>
														</div>

														<div class="col-lg-12">
															<div class="form-group">
																<label>姓名：</label>
																<label>杨露露</label>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="form-group">
																<label>学院：</label>
																<label>软件学院</label>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="form-group">
																<label>电子邮件：</label>
																<label>13027507869@163.com</label>
																<li class="fa fa-edit bigfonts" data-toggle="modal" data-target="#modifyEmail"></li>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="form-group">
																<label>电话：</label>
																<label>13027507869</label>
																<li class="fa fa-edit bigfonts" data-toggle="modal" data-target="#modifyTel"></li>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-12">
															<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modifyModal">修改密码</button>
														</div>
													</div>
												</div>
											</div>
									</div>
								</div><!-- end card-->
							</div>
						</div>
					<!--modify pwd Modal -->
					<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
						<div class="modal-content">
						  <div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">修改密码</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
						  </div>
						  <div class="modal-body">
							  <div class="form-group">
							  	<label>原密码：</label>
							  	<input class="form-control" name="password" type="password" value="" />
							  </div>
							  <div class="form-group">
							  	<label>新密码：</label>
							  	<input class="form-control" name="password" type="password" value="" />
							  </div>
						  </div>
						  <div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
						  </div>
						</div>
					  </div>
					</div>
					<!--modify email Modal -->
					<div class="modal fade" id="modifyEmail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
						<div class="modal-content">
						  <div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">修改邮箱</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
						  </div>
						  <div class="modal-body">
							  <div class="form-group">
							  	<label>新电子邮箱：</label>
							  	<input class="form-control" name="email" type="email" value="" />
							  </div>
						  </div>
						  <div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
						  </div>
						</div>
					  </div>
					</div>
					
					<!--modify tel Modal -->
					<div class="modal fade" id="modifyTel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
						<div class="modal-content">
						  <div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">修改电话</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
						  </div>
						  <div class="modal-body">
							  <div class="form-group">
							  	<label>新电话：</label>
							  	<input class="form-control" name="tel" type="text" value="" />
							  </div>
						  </div>
						  <div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
						  </div>
						</div>
					  </div>
					</div>
					
					</div>
					<!-- END container-fluid -->
				</div>
				<!-- 内容部分结束 -->
			</div>
			<!-- 内容框架结束 -->
			<!--脚-->
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

		</script>

		<!-- END Java Script for this page -->

	</body>
</html>
