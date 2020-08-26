<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>

<%

	String path = request.getContextPath(); //  path = "/travel"

	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; // basePath="http://localhost:8080/travel/"
%>

<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>登陆</title>
  <link rel="stylesheet" href="static/css/loginStyle.css">
	<style>
		.choose{
			display: inline-block;
			text-align: center;
			/* float: left; */
		}
		input[type=radio]{
			width: 20px !important;
		}
	</style>
</head>
<body>
	<div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>登录</h1>
			</div>

			<div name="choose">
				<input type="radio" value="admin" name="author"> 管理员
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" value="stu" name="author"> 学生
			</div>

			<br>

			<div class="login-form">


				<div class="control-group">
				<input type="text" class="login-field" name="userId"  placeholder="账号" id="login_id"/>
				<label class="login-field-icon fui-user" for="login_id"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" name="password" placeholder="密码" id="login_pass">
				<label class="login-field-icon fui-lock" for="login_pass"></label>
				</div>

				<button type="submit" class="btn btn-primary btn-large btn-block" id="login_btn">login</button>
				<!-- <a class="login-link" href="#">Lost your password?</a> -->
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="static/js/jquery.min.js" ></script>
<script>
	// document.getElementById("otherJsp").style.display = "none";
	$('#login_btn').on("click",function(){
		var username = document.getElementById("login_id").value;
		var password = document.getElementById("login_pass").value;
		var author = $('input[name=author]:checked').val();
		console.log(username +  ' ' + password);
		if(username == ''){
			alert("账号不能为空");
			return;
		}
		if(password == ''){
			alert("密码不能为空");
			return;
		}
		if(author == ''){
			alert("请选择登录身份");
			return;
		}
		//参数
		var data = {
			userId: username,
			password: password,
			author: author
		};
		console.log(data);
		console.log(JSON.stringify(data));
		$.ajax({
			url:"login/Login",
			type:'POST',
			dataType:'JSON',
			data: data,
			success:function (data) {
				console.log(data);
				// alert("sssss");
				if(data.code == 400) {
					alert("用户名或密码错误!");
				}
				if(data.code == 1){
					alert("登录成功！");
					window.location.href ="<%=request.getContextPath()%>/student/studentMain.jsp";
				}
				if(data.code == 2){
					alert("登录成功！");
					window.location.href ="<%=request.getContextPath()%>/admin/adminMain.jsp";
				}
			},
			error: function () {
				alert("error");
				return false;
			}
		});
		return false;
	});
</script>
</html>
