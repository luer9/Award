package com.yll.entity;/**
 * 项目名称：myAward
 * 类 名 称：Admin
 * 类 描 述：TODO
 * 创建时间：2020/3/28 23:43
 * 创 建 人：10265
 */

/**
 * @author yll
 * @description 管理员类
 * @date 2020/3/28
 */
public class Admin {
    String adminUser;
    String adminPwd;
    String adminName;
    String adminInstitude;
    String adminTel;
    String adminEmail;

    public String getAdminUser() {
        return adminUser;
    }

    public void setAdminUser(String adminUser) {
        this.adminUser = adminUser;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminInstitude() {
        return adminInstitude;
    }

    public void setAdminInstitude(String adminInstitude) {
        this.adminInstitude = adminInstitude;
    }

    public String getAdminTel() {
        return adminTel;
    }

    public void setAdminTel(String adminTel) {
        this.adminTel = adminTel;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminUser='" + adminUser + '\'' +
                ", adminPwd='" + adminPwd + '\'' +
                ", adminName='" + adminName + '\'' +
                ", adminInstitude='" + adminInstitude + '\'' +
                ", adminTel='" + adminTel + '\'' +
                ", adminEmail='" + adminEmail + '\'' +
                '}';
    }
}
