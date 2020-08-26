package com.yll.entity;/**
 * 项目名称：myAward
 * 类 名 称：AwardNotes
 * 类 描 述：TODO
 * 创建时间：2020/4/25 12:46
 * 创 建 人：10265
 */

/**
 * @author yll
 * @description 备注类
 * @date 2020/4/25
 */
public class AwardNotes {
    private String notes;

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public String toString() {
        return "AwardNotes{" +
                "notes='" + notes + '\'' +
                '}';
    }
}
