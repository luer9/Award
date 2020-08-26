package com.yll.service.impl;

import com.yll.entity.Admin;
import com.yll.entity.Student;
import com.yll.mapper.LoginMapper;
import com.yll.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;

    @Override
    public Student studentLogin(String userId, String password) {
        return loginMapper.studentLogin(userId,password);
    }

    @Override
    public Admin adminLogin(String userId, String password) {
        return loginMapper.adminLogin(userId, password);
    }

}
