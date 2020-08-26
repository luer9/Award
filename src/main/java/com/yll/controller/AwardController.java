package com.yll.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.yll.entity.*;
import com.yll.service.impl.AwardServiceImpl;
import com.yll.utils.ApiResultHandler;
import com.yll.utils.ConstantPath;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/award")
public class AwardController {

    @Autowired
    private AwardServiceImpl awardService;

    @ResponseBody
    @RequestMapping("/findAwardCheck")
    public ApiResult findAwardCheck(HttpSession httpSession) {
        Student student = (Student) httpSession.getAttribute("loginUser");
//        double [] score = null;
        String stuId = student.getStuId();
        List<AwardCheck> awardcheck = awardService.findAwardCheck(stuId);

        return ApiResultHandler.buildApiResult(1, "sss", awardcheck);
    }

    @ResponseBody
    @RequestMapping("/findAwardByStuId")
    public ApiResult findAwardByStuId(HttpSession httpSession) throws IOException {
        Student student = (Student) httpSession.getAttribute("loginUser");
        System.out.println("ssssId: " + student.getStuId());
        List<Award> awards = awardService.findAllAwardByStuId(student.getStuId());
        System.out.println(JSON.toJSONString(awards));
//        System.out.println(awards.toString());
        //将json字符串写入到json文件中
        String awards_json = JSON.toJSONString(awards, SerializerFeature.WriteNullStringAsEmpty);
        String data = "{" + "\"data\":" + awards_json + "}";
        System.out.println(awards_json);
        System.out.println(data);

        File file = new File("D:/idealproject/myAward/src/main/webapp/static/data/data.txt");
        if (!file.exists()) {
            file.createNewFile();
        }
        OutputStreamWriter fw = new OutputStreamWriter(new FileOutputStream(file), "utf-8");
        BufferedWriter out = new BufferedWriter(fw);
        out.write(data);
        out.close();
        return ApiResultHandler.buildApiResult(1, "found", awards);
    }

    /**
     * 根据奖项id查找
     */
    @ResponseBody
    @RequestMapping("/awardEdit/{awardId}")
    public ApiResult awardEdit(@PathVariable Integer awardId) {
        System.out.println("id: " + awardId);
        Award awards = awardService.findAwardById(awardId);

        System.out.println(awards);
        return ApiResultHandler.buildApiResult(1, "found", awards);
    }

    /**
     * saveEdit
     */
    @ResponseBody
    @RequestMapping("/award_saveEdit")
    public ApiResult award_saveEdit(@RequestBody JSONObject jsonObject) {
//        Integer awardId =  award.getAwardId("awardId");
//        Award award = awardService.findAwardById(awardId);

        System.out.println("sssss  :" + jsonObject);
        Award award = JSONObject.toJavaObject(jsonObject, Award.class);
        System.out.println(award + "\n" + award.getAwardId());
//        Integer awardId = (Integer) jsonObject.get("awardId");
//        System.out.println(awardId);
//        Award award = awardService.findAwardById();
//        award.setAwardName(award.getAwardName("awardName"));
//        award.setAwardLevel(award.getAwardLevel("awardLevel"));
//        award.setAwardRate(award.getAwardRate("awardRate"));
//        award.setAwardDate(award.getAwardDate("awardDate"));
//        award.setAwardType(award.getAwardType("awardType"));
//        award.setAwardPeo(award.getAwardPeo("awardPeo"));
//        award.setAwardClassify( award.getAwardClassify("awardClassify"));
//        award.setAwardOrganization( award.getAwardOrganization("awardOrganization"));
//        award.setAwardTeacherName(award.getAwardTeacherName("awardTeacherName"));
        int res = awardService.updateAward(award);
        if (res == 1) {
            System.out.println("修改为；" + award);

            return ApiResultHandler.buildApiResult(200, "success", award);
        }
        return ApiResultHandler.buildApiResult(404, "error", null);
    }

    /**
     * award_del
     */
    @ResponseBody
    @RequestMapping("/award_del")
    public ApiResult award_del(@RequestBody JSONObject jsonObject) {
//        Integer awardId =  award.getAwardId("awardId");
//        Award award = awardService.findAwardById(awardId);
        System.out.println("sssss  :" + jsonObject);
        Award award = JSONObject.toJavaObject(jsonObject, Award.class);
        System.out.println(award + "\n" + award.getAwardId());

        int res = awardService.delAward(award.getAwardId());
        if (res == 1) {

            return ApiResultHandler.buildApiResult(200, "success", award);
        }
        return ApiResultHandler.buildApiResult(404, "error", null);
    }

    /**
     * save award
     */
    @ResponseBody
    @RequestMapping("/saveAward")
    public ApiResult saveAward(HttpSession httpSession, HttpServletRequest request,
                               @RequestParam(value = "awardName") String awardName,
                               @RequestParam(value = "awardLevel") String awardLevel,
                               @RequestParam(value = "awardRate") String awardRate,
                               @RequestParam(value = "awardClassify") String awardClassify,
                               @RequestParam(value = "awardDate") String awardDate,
                               @RequestParam(value = "awardOrganization") String awardOrganization,
                               @RequestParam(value = "awardType") String awardType,
                               @RequestParam(value = "awardTeacherName") String awardTeacherName,
                               @RequestParam(value = "awardPeo") String awardPeo,
                               @RequestParam(value = "awardLeader") String awardLeader,
                               @RequestParam(value = "awardPic", required = false) MultipartFile awardPic
    ) throws IOException {
//        Integer awardId =  award.getAwardId("awardId");
//        Award award = awardService.findAwardById(awardId);
        Award award = new Award();
        System.out.println("------------");
        Student student = (Student) httpSession.getAttribute("loginUser");
        String stuId = student.getStuId();
        award.setAwardStuId(stuId);
        award.setAwardName(awardName);
        award.setAwardLevel(awardLevel);
        award.setAwardRate(awardRate);
        award.setAwardClassify(awardClassify);
        award.setAwardOrganization(awardOrganization);
        award.setAwardDate(awardDate);
        award.setAwardType(awardType);
        award.setAwardTeacherName(awardTeacherName);
        if (!awardPeo.equals("undefined")) {
            award.setAwardPeo(Integer.valueOf(awardPeo));
        } else {
            award.setAwardPeo(1);
        }
        if (awardLeader.equals("1")) {
            award.setAwardLeader(Integer.valueOf(awardLeader));
        } else {
            award.setAwardLeader(0);
        }


        /*=================图片处理===============*/
        //保存数据库的路径
        String sqlPath = null;
        //定义文件名
        String filename = null;
        if (!awardPic.isEmpty()) {
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            //获得文件类型(可以判断如果不是图片，禁止上传)
            String contentType = awardPic.getContentType();
            //获得文件后缀名
            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            //得到文件名
            filename = uuid + "." + suffixName;
            //文件保存路径
            awardPic.transferTo(new File(ConstantPath.IMG_PATH + filename));
        }
        //把图片的相对路径保存到数据库
        sqlPath = "/AwardPic/" + filename;
        System.out.println("----> " + sqlPath);
        award.setAwardPic(sqlPath);
        System.out.println("=====> " + award);
        /*=======================================*/
        int res = awardService.insertAward(award);
        if (res == 1) {
            return ApiResultHandler.buildApiResult(200, "success", award);
        }
        return ApiResultHandler.buildApiResult(404, "error", null);
    }

    /**
     * 查找奖项的所有信息 包括设计的学生及评审情况
     * */
    @ResponseBody
    @RequestMapping("/findAllAward")
    public ApiResult findAllAward(HttpSession httpSession) {
//        Student student = (Student) httpSession.getAttribute("loginUser");
////        double [] score = null;
//        String stuId = student.getStuId();
        List<AwardInfor> awardInfor = awardService.findAwardInfor();

        return ApiResultHandler.buildApiResult(1, "sss", awardInfor);
    }

    /**
     * 查找待审核或审核不通过奖项的所有信息 包括设计的学生及评审情况
     * */
    @ResponseBody
    @RequestMapping("/findCheckAwardinfor")
    public ApiResult findCheckAwardinfor(HttpSession httpSession) {
//        Student student = (Student) httpSession.getAttribute("loginUser");
////        double [] score = null;
//        String stuId = student.getStuId();
        List<AwardInfor> checkAwardInfor = awardService.findCheckAwardInfor();

        return ApiResultHandler.buildApiResult(1, "sss", checkAwardInfor);
    }

    /**
     * 查找审核过的奖项的所有信息 包括设计的学生及评审情况
     * */
    @ResponseBody
    @RequestMapping("/findCheckedAwardinfor")
    public ApiResult findCheckedAwardinfor(HttpSession httpSession) {
//        Student student = (Student) httpSession.getAttribute("loginUser");
////        double [] score = null;
//        String stuId = student.getStuId();
        List<AwardInfor> checkedAwardInfor = awardService.findCheckedAwardInfor();

        return ApiResultHandler.buildApiResult(1, "sss", checkedAwardInfor);
    }

    /**
     * 根据审核编号,奖项id,学生id查看奖项信息
     * */
    @ResponseBody
    @RequestMapping("/findAwardInforById")
    public ApiResult findAwardInforById(@Param("checkId")Integer checkId, @Param("stuId")String stuId, @Param("awardId")Integer awardId,
                                        HttpSession httpSession) {
//        Student student = (Student) httpSession.getAttribute("loginUser");
////        double [] score = null;
//        String stuId = student.getStuId();
        System.out.println("进来没？");
        System.out.println("----> "+checkId + " " + stuId + " " + awardId);
        AwardInfor choosedAwardInfor = awardService.findAwardInforById(checkId,stuId,awardId);
        System.out.println("!!!!!! - >"+checkId + "  " + stuId + "  " + awardId + "\n" + choosedAwardInfor);
        return ApiResultHandler.buildApiResult(1, "sss", choosedAwardInfor);
    }

    @ResponseBody
    @RequestMapping("/passAward")
    public ApiResult passAwardd(@Param("checkId")Integer checkId, @Param("notes") String notes){
        int res = awardService.passAward(checkId, notes);
        if(res == 1){
            return ApiResultHandler.buildApiResult(1, "sss", null);
        }
        return ApiResultHandler.buildApiResult(404, "sss", null);
    }


    @ResponseBody
    @RequestMapping("/noPassAward")
    public ApiResult noPassAwardd(@Param("checkId")Integer checkId, @Param("notes") String notes){
        int res = awardService.noPassAward(checkId, notes);
        if(res == 1){
            return ApiResultHandler.buildApiResult(1, "sss", null);
        }
        return ApiResultHandler.buildApiResult(404, "sss", null);
    }

    @ResponseBody
    @RequestMapping("/editNotes")
    public ApiResult editNotes(@Param("checkId")Integer checkId, @Param("notes") String notes){
        System.out.println("---> " +checkId + " " + notes);
        int res = awardService.editNotes(checkId, notes);
        System.out.println("res: " + res);
        if(res == 1){
            return ApiResultHandler.buildApiResult(1, "sss", null);
        }
        return ApiResultHandler.buildApiResult(404, "sss", null);
    }

    @ResponseBody
    @RequestMapping("/showNotes")
    public ApiResult showNotes(Integer checkId){
        System.out.println("---> " +checkId + " " );
        AwardNotes notes = awardService.showNotes(checkId);
        System.out.println("res: " + notes);
        return ApiResultHandler.buildApiResult(1, "sss", notes);
    }
}
