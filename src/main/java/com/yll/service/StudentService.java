package com.yll.service;

import com.yll.entity.Student;
import org.apache.ibatis.annotations.Update;

public interface StudentService {
    //根据id查找学生
    Student findById(String stuId);

    //更新学生密码
    int updateStuPwd(Student student);

    //更新学生电话
    int updateStuTel(Student student);

    //更新学生邮箱
    int updateStuEmail(Student student);
}
