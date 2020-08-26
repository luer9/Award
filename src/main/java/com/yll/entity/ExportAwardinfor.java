package com.yll.entity;/**
 * 项目名称：myAward
 * 类 名 称：ExportAwardinfor
 * 类 描 述：TODO
 * 创建时间：2020/3/19 15:14
 * 创 建 人：10265
 */

/**
 * @author yll
 * @description 需要导出奖项的信息
 * @date 2020/3/19
 */
public class ExportAwardinfor {

//    private Integer awardId; // 奖项id
    private String awardStuId; //获奖学生id
    private String stuName; // 获奖学生姓名
    private String awardName; //奖项名字
    private String awardLevel; //A B C
    private String awardRate;// 0 1 2 3 4
    private String awardType; //类型 个人 团体
    private Integer awardPeo; //人数
    private String awardDate; //获奖日期
    private String awardClassify;//比赛分类 （学科竞赛，专业技能竞赛，创新项目，综合素质（德智体美））
    private String awardTeacherName; //指导老师
    private Integer checkFlag; //评审情况
    private String notes; //评审备注
    private Integer awardLeader; // 是否为负责人 队长之类的,一些竞赛会加分  1是 0 不是
//
//    public Integer getAwardId() {
//        return awardId;
//    }
//
//    public void setAwardId(Integer awardId) {
//        this.awardId = awardId;
//    }

    public String getAwardStuId() {
        return awardStuId;
    }

    public void setAwardStuId(String awardStuId) {
        this.awardStuId = awardStuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
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

    public String getAwardRate() {
        return awardRate;
    }

    public void setAwardRate(String awardRate) {
        this.awardRate = awardRate;
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

    public String getAwardDate() {
        return awardDate;
    }

    public void setAwardDate(String awardDate) {
        this.awardDate = awardDate;
    }

    public String getAwardClassify() {
        return awardClassify;
    }

    public void setAwardClassify(String awardClassify) {
        this.awardClassify = awardClassify;
    }

    public String getAwardTeacherName() {
        return awardTeacherName;
    }

    public void setAwardTeacherName(String awardTeacherName) {
        this.awardTeacherName = awardTeacherName;
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

    public Integer getAwardLeader() {
        return awardLeader;
    }

    public void setAwardLeader(Integer awardLeader) {
        this.awardLeader = awardLeader;
    }

    @Override
    public String toString() {
        return "ExportAwardinfor{" +
                "awardStuId='" + awardStuId + '\'' +
                ", stuName='" + stuName + '\'' +
                ", awardName='" + awardName + '\'' +
                ", awardLevel='" + awardLevel + '\'' +
                ", awardRate='" + awardRate + '\'' +
                ", awardType='" + awardType + '\'' +
                ", awardPeo=" + awardPeo +
                ", awardDate='" + awardDate + '\'' +
                ", awardClassify='" + awardClassify + '\'' +
                ", awardTeacherName='" + awardTeacherName + '\'' +
                ", checkFlag=" + checkFlag +
                ", notes='" + notes + '\'' +
                ", awardLeader=" + awardLeader +
                '}';
    }
}
