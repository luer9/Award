package com.yll.service.impl;/**
 * 项目名称：myAward
 * 类 名 称：ExcelServiceImpl
 * 类 描 述：TODO
 * 创建时间：2020/3/19 14:45
 * 创 建 人：10265
 */

import com.yll.entity.AwardCheck;
import com.yll.entity.ExcelBean;
import com.yll.entity.ExportAwardinfor;
import com.yll.mapper.AwardMapper;
import com.yll.mapper.ExcelMapper;
import com.yll.service.ExcelService;
import com.yll.utils.ConvertListMapUtil;
import com.yll.utils.ExcelUtil;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * @author yll
 * @description
 * @date 2020/3/19
 */
@Service
public class ExcelServiceImpl implements ExcelService {
    @Autowired
    private ExcelMapper excelMapper;
    @Override
    public XSSFWorkbook exportExcelInfo(String stuId) throws Exception {
        //根据条件查询数据
        List<ExportAwardinfor> excelExportdata = excelMapper.findExportAward(stuId);
        System.out.println("---> "+excelExportdata);
        List<Map<String,Object>> list = new ConvertListMapUtil().convertListMap(excelExportdata);
        System.out.println("----> what:: "+list);
        List<ExcelBean> excel = new ArrayList<>();
        Map<Integer,List<ExcelBean>> map = new LinkedHashMap<>();
        //设置标题栏
        /**
         * awardStuId,stuName,awardName,awardLevel,awardRate,awardType,awardClassify,
         * awardDate,awardPeo,awardTeacherName,checkFlag,notes,awardLeader
         * */
        excel.add(new ExcelBean("学号","awardStuId",0));
        excel.add(new ExcelBean("姓名","stuName",0));
        excel.add(new ExcelBean("奖项名称","awardName",0));
        excel.add(new ExcelBean("奖项级别", "awardLevel", 0));
        excel.add(new ExcelBean("奖项等级", "awardRate", 0));
        excel.add(new ExcelBean("比赛分类","awardClassify",0));
        excel.add(new ExcelBean("获奖日期","awardDate",0));
        excel.add(new ExcelBean("团队人数","awardPeo", 0));
        excel.add(new ExcelBean("是否为比赛负责人(0/1)","awardLeader", 0));
        excel.add(new ExcelBean("指导教师","awardTeacherName",0));
        excel.add(new ExcelBean("审核情况","checkFlag",0));
        excel.add(new ExcelBean("备注","notes",0));
        map.put(0,excel);
        String sheetName = "学生获奖信息";
        //调用ExcelUtil方法
        XSSFWorkbook xssfWorkbook = ExcelUtil.createExcelFile(ExportAwardinfor.class, list, map, sheetName);
        System.out.println(xssfWorkbook);

        return xssfWorkbook;
    }
}
