package com.yll.controller;

import com.yll.entity.ApiResult;
import com.yll.entity.Student;
import com.yll.service.StudentService;
import com.yll.service.impl.StudentServiceImpl;
import com.yll.utils.ApiResultHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentServiceImpl studentService;

    @ResponseBody
    @RequestMapping("/updateStuPwd")
    public ApiResult updateStuPwd(@RequestParam("newPwd") String newpwd,@RequestParam("oldPwd") String oldpwd,
                                    HttpSession session
                                  ){
        Student student = (Student) session.getAttribute("loginUser");
        String oldPwd = (String)student.getStuPwd();
        if(oldPwd.equals(oldpwd)){
            student.setStuPwd(newpwd);
            int res = studentService.updateStuPwd(student);
            if(res == 1) {
                return ApiResultHandler.buildApiResult(1,"密码修改成功",student);
            }
        }else if(!oldPwd.equals(oldpwd)){
            return ApiResultHandler.buildApiResult(500,"与原密码不符，修改失败",student);
        }
        return ApiResultHandler.buildApiResult(400,"密码修改失败",null);
    }

    @ResponseBody
    @RequestMapping("/updateStuTel")
    public ApiResult updateStuTel(String tel,HttpSession session){
        Student student = (Student) session.getAttribute("loginUser");
        student.setStuTel(tel);
        int res = studentService.updateStuTel(student);
        if(res == 1){
            return ApiResultHandler.buildApiResult(1,"电话修改成功",student);
        }
        return ApiResultHandler.buildApiResult(400,"电话修改失败",null);
    }

    @ResponseBody
    @RequestMapping("/updateStuEmail")
    public ApiResult updateStuEmail(String email,HttpSession session){
        Student student = (Student) session.getAttribute("loginUser");
        student.setStuEmail(email);
        int res = studentService.updateStuEmail(student);
        if(res == 1){
            return ApiResultHandler.buildApiResult(1,"邮箱修改成功",student);
        }
        return ApiResultHandler.buildApiResult(400,"邮箱修改失败",null);
    }
}
