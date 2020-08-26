<%@ page import="com.yll.entity.Student" %>

<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    Student student = (Student)request.getSession().getAttribute("loginUser");
//	System.out.println(student);
%>
<!-- 头部导航栏 -->

    <!-- LOGO -->
    <div class="headerbar-left">
        <a href="studentMain.jsp" class="logo"><img alt="logo" src="../static/images/logo.png" /> <span>Admin</span></a>
    </div>

    <nav class="navbar-custom">

        <ul class="list-inline float-right mb-0">

            <li class="list-inline-item dropdown notif">
                <a class="nav-link dropdown-toggle arrow-none" data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
                   aria-expanded="false">
                    <i class="fa fa-fw fa-question-circle"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-arrow-success dropdown-lg">
                    <!-- item-->
                    <div class="dropdown-item noti-title">
                        <h5><small>Help and Support</small></h5>
                    </div>

                    <!-- item-->
                    <a target="_blank" href="#" class="dropdown-item notify-item">
                        <p class="notify-details ml-0">
                            <b>有什么问题请查阅用户使用手册</b>
                            <span>Contact Us</span>
                        </p>
                    </a>

                </div>
            </li>



            <li class="list-inline-item dropdown notif">
                <a class="nav-link dropdown-toggle nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
                   aria-expanded="false">
                    <img src="../static/images/avatars/henulogo.jpg" alt="Profile image" class="avatar-rounded">
                </a>
                <div class="dropdown-menu dropdown-menu-right profile-dropdown">
                    <!-- item-->
                    <div class="dropdown-item noti-title">
                        <h5 class="text-overflow"><small>Hello, <%=student.getStuName()%> 同学</small> </h5>
                    </div>

                    <!-- item-->
                    <a href="userProfile.jsp" class="dropdown-item notify-item">
                        <i class="fa fa-user"></i> <span>用户信息</span>
                    </a>

                    <!-- item-->
                    <a href="../index.jsp" class="dropdown-item notify-item">
                        <i class="fa fa-power-off"></i> <span>退出</span>
                    </a>
                </div>
            </li>

        </ul>

        <ul class="list-inline menu-left mb-0">
            <li class="float-left">
                <button class="button-menu-mobile open-left">
                    <i class="fa fa-fw fa-bars"></i>
                </button>
            </li>
        </ul>

    </nav>


<!-- End Navigation -->
