package com.yll.entity;/**
 * 项目名称：myAward
 * 类 名 称：Award
 * 类 描 述：TODO
 * 创建时间：2020/2/24 14:37
 * 创 建 人：10265
 */


/**
 * @author yll
 * @description 奖项信息
 * @date 2020/2/24
 */
public class Award {
    private Integer awardId;
    private String awardStuId;
    private String awardName;
    private String awardLevel; //A B C
    private String awardClassify;//比赛分类 （学科竞赛，专业技能竞赛，创新项目，综合素质（德智体美））
    private String awardRate;// 0 1 2 3 4

    private String awardOrganization;
    private String awardDate;
    private String awardType;
    private Integer awardPeo;
    private String awardPic;
    private String awardTeacherName;
    private Integer awardLeader;

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

    public String getAwardRate() {
        return awardRate;
    }

    public void setAwardRate(String awardRate) {
        this.awardRate = awardRate;
    }

    public String getAwardClassify() {
        return awardClassify;
    }

    public void setAwardClassify(String awardClassify) {
        this.awardClassify = awardClassify;
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

    @Override
    public String toString() {
        return "Award{" +
                "awardId=" + awardId +
                ", awardStuId='" + awardStuId + '\'' +
                ", awardName='" + awardName + '\'' +
                ", awardLevel='" + awardLevel + '\'' +
                ", awardRate='" + awardRate + '\'' +
                ", awardClassify='" + awardClassify + '\'' +
                ", awardOrganization='" + awardOrganization + '\'' +
                ", awardDate='" + awardDate + '\'' +
                ", awardType='" + awardType + '\'' +
                ", awardPeo=" + awardPeo +
                ", awardPic='" + awardPic + '\'' +
                ", awardTeacherName='" + awardTeacherName + '\'' +
                ", awardLeader=" + awardLeader +
                '}';
    }
}
