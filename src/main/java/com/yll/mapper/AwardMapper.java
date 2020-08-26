package com.yll.mapper;

import com.yll.entity.Award;
import com.yll.entity.AwardCheck;
import com.yll.entity.AwardInfor;
import com.yll.entity.AwardNotes;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

/**
 * 项目名称：myAward
 * 类 名 称：AwardMapper
 * 类 描 述：TODO
 * 创建时间：2020/2/24 14:52
 * 创 建 人：10265
 */
public interface AwardMapper {

    /**
     * 查找id为stuId的学生获奖情况
     * */
    @Select("select * from awardinfor where awardStuId = #{stuId}")
    List<Award> findAllAwardByStuId(String stuId);

    @Select("select * from awardinfor where awardId = #{awardId}")
    Award findAwardById(Integer awardId);

    /**
     *  查找学生奖项的评审情况
     *  加分情况根据 awardLevel 和 awardRate 来 搞
     */
    @Select("select awardinfor.awardId,awardStuId,awardName,awardLevel,awardRate,awardType,awardClassify,awardDate,awardPeo,awardTeacherName,checkFlag,notes,awardLeader" +
            " from awardinfor,checkinfor where awardinfor.awardId = checkinfor.awardId and awardStuId = #{stuId}")
    List<AwardCheck> findAwardCheck(String stuId);

    /**
     * 更新奖项信息
     * */
    @Update("update awardinfor set awardName = #{awardName},awardLevel = #{awardLevel}," +
            "awardRate = #{awardRate},awardDate = #{awardDate},awardType = #{awardType}," +
            "awardPeo = #{awardPeo},awardClassify = #{awardClassify},awardOrganization = #{awardOrganization}," +
            "awardTeacherName = #{awardTeacherName}  where awardId = #{awardId}")
    int updateAward(Award award);


    @Delete("delete from awardinfor where awardId = #{id}")
    int delAward(Integer id);

    /**
     * insert
     * */
    @Insert("insert  awardinfor(awardStuId,awardName,awardLevel,awardClassify,awardRate,awardOrganization,awardDate,awardType,awardPeo,awardPic,awardTeacherName,awardLeader) " +
            "values(#{awardStuId},#{awardName},#{awardLevel},#{awardClassify},#{awardRate},#{awardOrganization},#{awardDate},#{awardType},#{awardPeo},#{awardPic},#{awardTeacherName},#{awardLeader})")
    int insertAward(Award award);


    /**
     *  查找学生奖项的评审通过
     *  加分情况根据 awardLevel 和 awardRate 来 搞
     */
//    @Results
//    @Select("select awardinfor.awardId,awardStuId,awardName,awardLevel,awardRate,awardType,awardClassify,awardDate,awardPeo,awardTeacherName,checkFlag,notes,awardLeader" +
//            " from awardinfor,checkinfor where awardinfor.awardId = checkinfor.awardId and awardStuId = #{stuId} and checkFlag = 1")
//    List<Map<String,Object>> findAwardCheckPass(String stuId);

    /**
     * 查找奖项的所有信息 包括获奖学生 信息 以及 评审状况
     * */
    @Select("SELECT awardinfor.awardId,awardStuId,awardName,awardLevel,awardClassify,awardRate,awardOrganization,awardDate,awardType,awardPeo,awardTeacherName,awardLeader," +
            " checkId,checkFlag,notes,stuName,stuMajor,stuInstitute,stuClass,stuEmail,stuTel,stuSex " +
            " FROM awardinfor, checkinfor, student " +
            " where checkinfor.awardId = awardinfor.awardId and awardinfor.awardStuId = student.stuId")
    List<AwardInfor> findAwardInfor();

    /**
     * 查找待审核或没有审核通过的奖项的所有信息 包括获奖学生 信息 以及 评审状况
     * */
    @Select("SELECT awardinfor.awardId,awardStuId,awardName,awardLevel,awardClassify,awardRate,awardOrganization,awardDate,awardType,awardPeo,awardTeacherName,awardLeader," +
            " checkId,checkFlag,notes,stuName,stuMajor,stuInstitute,stuClass,stuEmail,stuTel,stuSex " +
            " FROM awardinfor, checkinfor, student " +
            " where checkinfor.awardId = awardinfor.awardId and awardinfor.awardStuId = student.stuId and checkFlag != 1")
    List<AwardInfor> findCheckAwardInfor();

    /**
     * 查找审核过的奖项的所有信息 包括获奖学生 信息 以及 评审状况
     * */
    @Select("SELECT awardinfor.awardId,awardStuId,awardName,awardLevel,awardClassify,awardRate,awardOrganization,awardDate,awardType,awardPeo,awardTeacherName,awardLeader," +
            " checkId,checkFlag,notes,stuName,stuMajor,stuInstitute,stuClass,stuEmail,stuTel,stuSex " +
            " FROM awardinfor, checkinfor, student " +
            " where checkinfor.awardId = awardinfor.awardId and awardinfor.awardStuId = student.stuId and checkFlag != -1")
    List<AwardInfor> findCheckedAwardInfor();

    /**
     * 根据审核编号,奖项id,学生id查看奖项信息
     * */
    @Select("SELECT awardinfor.awardId,awardStuId,awardName,awardLevel,awardClassify,awardRate,awardOrganization,awardDate,awardType,awardPeo,awardTeacherName,awardLeader,\n" +
            "             checkId,checkFlag,notes,stuName,stuMajor,stuInstitute,stuClass,stuEmail,stuTel,stuSex\n" +
            "             FROM awardinfor, checkinfor, student \n" +
            "             where checkinfor.awardId = awardinfor.awardId and awardinfor.awardStuId = student.stuId \n" +
            "             and checkId = ${checkId} and student.stuId = ${stuId} and awardinfor.awardId = ${awardId}")
    AwardInfor findAwardInforById(@Param("checkId")Integer checkId,@Param("stuId") String stuId,@Param("awardId") Integer awardId);


    @Update("update checkinfor set notes = #{notes}, checkFlag = 1 where checkId = #{checkId}")
    int passAward(@Param("checkId")Integer checkId, @Param("notes") String notes);


    @Update("update checkinfor set notes = #{notes}, checkFlag = 0 where checkId = #{checkId}")
    int noPassAward(@Param("checkId")Integer checkId, @Param("notes") String notes);


    @Update("update checkinfor set notes = #{notes} where checkId = #{checkId}")
    int editNotes(@Param("checkId") Integer checkId,@Param("notes")String notes);


    @Select("select notes from checkinfor where checkId = #{checkId}")
    AwardNotes showNotes(Integer checkId);
}
