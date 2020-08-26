package com.yll.controller;/**
 * 项目名称：myAward
 * 类 名 称：ExcelController
 * 类 描 述：TODO
 * 创建时间：2020/3/19 14:06
 * 创 建 人：10265
 */


import com.yll.entity.Award;
import com.yll.entity.Student;
import com.yll.service.impl.ExcelServiceImpl;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @author yll
 * @description poi导出excel
 * @date 2020/3/19
 */
@Controller
@RequestMapping("/excel")
public class ExcelController {
    @Autowired
    private ExcelServiceImpl excelService;
//https://blog.csdn.net/w_m_5/article/details/80815712?depth_1-utm_source=distribute.pc_relevant.none-task&utm_source=distribute.pc_relevant.none-task
    @ResponseBody
    @RequestMapping("exportAward")
    public void exportAward(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession) throws Exception {
        response.reset(); //清除buffer缓存
        Student student = (Student) httpSession.getAttribute("loginUser");
        String stuId = student.getStuId();
        //Map<String,Object> map=new HashMap<String,Object>();
        // 指定下载的文件名
        String filename = "奖项"+System.currentTimeMillis()+".xls";
        response.setContentType("application/vnd.ms-excel;charset=UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+new String(filename.getBytes(),"iso-8859-1"));
        //导出Excel对象
        XSSFWorkbook workbook = excelService.exportExcelInfo(stuId);
        OutputStream output;
        try {
            output = response.getOutputStream();
            BufferedOutputStream bufferedOutput = new BufferedOutputStream(output);
            bufferedOutput.flush();
            workbook.write(bufferedOutput);
            bufferedOutput.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
   }
}
