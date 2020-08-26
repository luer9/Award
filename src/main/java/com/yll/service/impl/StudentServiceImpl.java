package com.yll.service.impl;

import com.yll.entity.Student;
import com.yll.mapper.StudentMapper;
import com.yll.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentMapper studentMapper;

    @Override
    public Student findById(String stuId) {
        return studentMapper.findById(stuId);
    }

    @Override
    public int updateStuPwd(Student student) {
        return studentMapper.updateStuPwd(student);
    }

    @Override
    public int updateStuTel(Student student) {
        return studentMapper.updateStuTel(student);
    }

    @Override
    public int updateStuEmail(Student student) {
        return studentMapper.updateStuEmail(student);
    }
}
