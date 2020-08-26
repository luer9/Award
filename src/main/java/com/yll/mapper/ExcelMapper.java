package com.yll.mapper;/**
 * 项目名称：myAward
 * 类 名 称：ExcelMapper
 * 类 描 述：TODO
 * 创建时间：2020/3/19 14:42
 * 创 建 人：10265
 */

import com.yll.entity.ExportAwardinfor;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * @author yll
 * @description
 * @date 2020/3/19
 */
public interface ExcelMapper {

    @Select("select awardStuId,stuName,awardName,awardLevel,awardRate,awardType,awardClassify,awardDate,awardPeo,awardTeacherName,checkFlag,notes,awardLeader" +
            " from awardinfor,checkinfor,student where awardStuId = stuId and awardinfor.awardId = checkinfor.awardId and awardStuId = #{stuId} and checkFlag = 1")
    List<ExportAwardinfor> findExportAward(String stuId);
}
