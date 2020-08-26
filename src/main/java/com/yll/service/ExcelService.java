package com.yll.service;/**
 * 项目名称：myAward
 * 类 名 称：ExcelService
 * 类 描 述：TODO
 * 创建时间：2020/3/19 14:41
 * 创 建 人：10265
 */

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * @author yll
 * @description excel
 * @date 2020/3/19
 */
public interface ExcelService {
    XSSFWorkbook exportExcelInfo(String stuId) throws Exception;
}
