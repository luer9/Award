package com.yll.controller;
import com.yll.entity.Admin;
import com.yll.entity.ApiResult;
import com.yll.entity.Student;
import com.yll.service.impl.LoginServiceImpl;
import com.yll.utils.ApiResultHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private LoginServiceImpl loginService;

    @ResponseBody
    @RequestMapping(value = "/Login")
    public ApiResult studentLogin(String userId, String password,String author,
                                  HttpSession httpSession){
        System.out.println(userId + " " + password + " " + author);
        if(author.equals("stu")){
            System.out.println("---->");
            Student student = loginService.studentLogin(userId,password);
            System.out.println("student" + student);
            if(student != null){
                httpSession.setAttribute("loginUser",student);
                return ApiResultHandler.buildApiResult(1, "login successfully", student);
            }
        }
        else if(author.equals("admin")){
            System.out.println("=====>");
            Admin admin = loginService.adminLogin(userId, password);
            System.out.println("admin" + admin);
            if(admin != null){
                httpSession.setAttribute("loginUser",admin);
                return ApiResultHandler.buildApiResult(2, "login successfully", admin);
            }
        }
        return ApiResultHandler.buildApiResult(400, "login failed", null);
    }

}
