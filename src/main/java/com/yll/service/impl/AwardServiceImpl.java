package com.yll.service.impl;

import com.yll.entity.Award;
import com.yll.entity.AwardCheck;
import com.yll.entity.AwardInfor;
import com.yll.entity.AwardNotes;
import com.yll.mapper.AwardMapper;
import com.yll.service.AwardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 项目名称：myAward
 * 类 名 称：AwardServiceImpl
 * 类 描 述：TODO
 * 创建时间：2020/2/24 15:35
 * 创 建 人：10265
 */
@Service
public class AwardServiceImpl implements AwardService {

    @Autowired
    private AwardMapper awardMapper;

    @Override
    public List<Award> findAllAwardByStuId(String stuId) {
        return awardMapper.findAllAwardByStuId(stuId);
    }

    @Override
    public Award findAwardById(Integer awardId) {
        return awardMapper.findAwardById(awardId);
    }

    @Override
    public List<AwardCheck> findAwardCheck(String stuId) {
        return awardMapper.findAwardCheck(stuId);
    }

    @Override
    public int updateAward(Award award) {
        return awardMapper.updateAward(award);
    }

    @Override
    public int delAward(Integer id) {
        return awardMapper.delAward(id);
    }

    @Override
    public int insertAward(Award award) {
        return awardMapper.insertAward(award);
    }

    @Override
    public List<AwardInfor> findAwardInfor() {
        return awardMapper.findAwardInfor();
    }

    @Override
    public List<AwardInfor> findCheckAwardInfor() {
        return awardMapper.findCheckAwardInfor();
    }

    @Override
    public List<AwardInfor> findCheckedAwardInfor() {
        return awardMapper.findCheckedAwardInfor();
    }

    @Override
    public AwardInfor findAwardInforById(Integer checkId, String stuId, Integer awardId) {
        return awardMapper.findAwardInforById(checkId, stuId, awardId);
    }

    @Override
    public int passAward(Integer checkId, String notes) {
        return awardMapper.passAward(checkId, notes);
    }

    @Override
    public int noPassAward(Integer checkId, String notes) {
        return awardMapper.noPassAward(checkId, notes);
    }
    /**
     * 修改备注
     * */
    @Override
    public int editNotes(Integer checkId, String notes) {

        return awardMapper.editNotes(checkId, notes);
    }

    @Override
    public AwardNotes showNotes(Integer checkId) {
        return awardMapper.showNotes(checkId);
    }


}
