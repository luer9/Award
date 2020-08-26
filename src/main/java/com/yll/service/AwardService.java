package com.yll.service;

import com.yll.entity.Award;
import com.yll.entity.AwardCheck;
import com.yll.entity.AwardInfor;
import com.yll.entity.AwardNotes;
import org.apache.ibatis.annotations.Insert;

import java.util.List;
import java.util.Map;

public interface AwardService {

    List<Award> findAllAwardByStuId(String stuId);

    Award findAwardById(Integer awardId);

    /**
     *  查找学生奖项的评审情况
     *  加分情况根据 awardLevel 和 awardRate 来 搞
     */
    List<AwardCheck> findAwardCheck(String stuId);

    /**
     * saveEdit
     * */
    int updateAward(Award award);

    /**
     * del
     * */
    int delAward(Integer id);

    /**
     * insert
     * */
    int insertAward(Award award);

    /**
     * 查找奖项的所有信息 包括设计的学生及评审情况
     * */
    List<AwardInfor> findAwardInfor();
    /**
     * 查找待审核或审核不通过奖项的所有信息 包括设计的学生及评审情况
     * */
    List<AwardInfor> findCheckAwardInfor();
    /**
     * 查找审核过的奖项的所有信息 包括设计的学生及评审情况
     * */
    List<AwardInfor> findCheckedAwardInfor();

    /**
     * 根据审核编号,奖项id,学生id查看奖项信息
     * */
    AwardInfor findAwardInforById(Integer checkId, String stuId, Integer awardId);

    /**
     * 奖项审核通过，通过相应的 checkid修改
     * notes 备注
     * */
    int passAward(Integer checkId, String notes);

    /**
     * 奖项审核不通过，通过相应的 checkid修改
     * notes 备注
     * */
    int noPassAward(Integer checkId, String notes);

    /**
     * 修改备注
     * */
    int editNotes(Integer checkId, String notes);
    /**
     * 获取备注
     * */
    AwardNotes showNotes(Integer checkId);
}
