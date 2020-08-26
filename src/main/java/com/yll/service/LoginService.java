package com.yll.service;

import com.yll.entity.Admin;
import com.yll.entity.Student;

public interface LoginService {
    Student studentLogin(String userId, String password);
    Admin adminLogin(String userId, String password);
}
