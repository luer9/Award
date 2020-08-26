package com.yll.entity;/**
 * 项目名称：myAward
 * 类 名 称：AwardInfor
 * 类 描 述：TODO
 * 创建时间：2020/4/23 21:22
 * 创 建 人：10265
 */

/**
 * @author yll
 * @description 奖项的所有信息包括获奖学生姓名以及审核状态
 * @date 2020/4/23
 */
public class AwardInfor {
    private Integer awardId; //奖项id
    private String awardStuId;//学生id
    private String awardName; //奖项姓名
    private String awardLevel; //A B C
    private String awardClassify;//比赛分类 （学科竞赛，专业技能竞赛，创新项目，综合素质（德智体美））
    private String awardRate;// 0 1 2 3 4
    private String awardOrganization; //组织
    private String awardDate;//日期
    private String awardType;//类型 团体个人
    private Integer awardPeo; //团队人数
    private String awardPic; //照片
    private String awardTeacherName; //导师
    private Integer awardLeader;// 是否为负责人 队长之类的,一些竞赛会加分  1是 0 不是
    private Integer checkId; //评审 id 唯一
    private Integer checkFlag; //评审情况
    private String notes; //评审备注
    private String stuName; //学生姓名
    private String stuMajor;  // 专业
    private String stuInstitute; //学院
    private String stuClass;//班级
    private String stuEmail; //邮箱
    private String stuTel; //电话
    private String stuSex;//性别

    public Integer getAwardId() {
        return awardId;
    }

    public void setAwardId(Integer awardId) {
        this.awardId = awardId;
    }

    public String getAwardStuId() {
        return awardStuId;
    }

    public void setAwardStuId(String awardStuId) {
        this.awardStuId = awardStuId;
    }

    public String getAwardName() {
        return awardName;
    }

    public void setAwardName(String awardName) {
        this.awardName = awardName;
    }

    public String getAwardLevel() {
        return awardLevel;
    }

    public void setAwardLevel(String awardLevel) {
        this.awardLevel = awardLevel;
    }

    public String getAwardClassify() {
        return awardClassify;
    }

    public void setAwardClassify(String awardClassify) {
        this.awardClassify = awardClassify;
    }

    public String getAwardRate() {
        return awardRate;
    }

    public void setAwardRate(String awardRate) {
        this.awardRate = awardRate;
    }

    public String getAwardOrganization() {
        return awardOrganization;
    }

    public void setAwardOrganization(String awardOrganization) {
        this.awardOrganization = awardOrganization;
    }

    public String getAwardDate() {
        return awardDate;
    }

    public void setAwardDate(String awardDate) {
        this.awardDate = awardDate;
    }

    public String getAwardType() {
        return awardType;
    }

    public void setAwardType(String awardType) {
        this.awardType = awardType;
    }

    public Integer getAwardPeo() {
        return awardPeo;
    }

    public void setAwardPeo(Integer awardPeo) {
        this.awardPeo = awardPeo;
    }

    public String getAwardPic() {
        return awardPic;
    }

    public void setAwardPic(String awardPic) {
        this.awardPic = awardPic;
    }

    public String getAwardTeacherName() {
        return awardTeacherName;
    }

    public void setAwardTeacherName(String awardTeacherName) {
        this.awardTeacherName = awardTeacherName;
    }

    public Integer getAwardLeader() {
        return awardLeader;
    }

    public void setAwardLeader(Integer awardLeader) {
        this.awardLeader = awardLeader;
    }

    public Integer getCheckFlag() {
        return checkFlag;
    }

    public void setCheckFlag(Integer checkFlag) {
        this.checkFlag = checkFlag;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
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

    public Integer getCheckId() {
        return checkId;
    }

    public void setCheckId(Integer checkId) {
        this.checkId = checkId;
    }

    @Override
    public String toString() {
        return "AwardInfor{" +
                "awardId=" + awardId +
                ", awardStuId='" + awardStuId + '\'' +
                ", awardName='" + awardName + '\'' +
                ", awardLevel='" + awardLevel + '\'' +
                ", awardClassify='" + awardClassify + '\'' +
                ", awardRate='" + awardRate + '\'' +
                ", awardOrganization='" + awardOrganization + '\'' +
                ", awardDate='" + awardDate + '\'' +
                ", awardType='" + awardType + '\'' +
                ", awardPeo=" + awardPeo +
                ", awardPic='" + awardPic + '\'' +
                ", awardTeacherName='" + awardTeacherName + '\'' +
                ", awardLeader=" + awardLeader +
                ", checkId=" + checkId +
                ", checkFlag=" + checkFlag +
                ", notes='" + notes + '\'' +
                ", stuName='" + stuName + '\'' +
                ", stuMajor='" + stuMajor + '\'' +
                ", stuInstitute='" + stuInstitute + '\'' +
                ", stuClass='" + stuClass + '\'' +
                ", stuEmail='" + stuEmail + '\'' +
                ", stuTel='" + stuTel + '\'' +
                ", stuSex='" + stuSex + '\'' +
                '}';
    }
}
