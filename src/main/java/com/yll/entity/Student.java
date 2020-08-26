package com.yll.entity;

public class Student {

    private String stuId;
    private String stuName;
    private String stuPwd;
    private String stuMajor;  // 专业
    private String stuInstitute; //学院
    private String stuClass;
    private String stuEmail;
    private String stuTel;
    private String stuSex;

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuPwd() {
        return stuPwd;
    }

    public void setStuPwd(String stuPwd) {
        this.stuPwd = stuPwd;
    }

    public String getStuMajor() {
        return stuMajor;
    }

    public void setStuMajor(String stuMajor) {
        this.stuMajor = stuMajor;
    }

    public String getStuInstitute() {
        return stuInstitute;
    }

    public void setStuInstitute(String stuInstitute) {
        this.stuInstitute = stuInstitute;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    public String getStuTel() {
        return stuTel;
    }

    public void setStuTel(String stuTel) {
        this.stuTel = stuTel;
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex;
    }

    @Override
    public String toString() {
        return "Award{" +
                "stuId=" + stuId +
                ", stuName='" + stuName + '\'' +
                ", stuPwd='" + stuPwd + '\'' +
                ", stuMajor='" + stuMajor + '\'' +
                ", stuInstitute='" + stuInstitute + '\'' +
                ", stuClass='" + stuClass + '\'' +
                ", stuEmail='" + stuEmail + '\'' +
                ", stuTel='" + stuTel + '\'' +
                ", stuSex='" + stuSex + '\'' +
                '}';
    }
}
