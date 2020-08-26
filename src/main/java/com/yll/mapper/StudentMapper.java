package com.yll.mapper;

import com.yll.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface StudentMapper {

    //根据id查询学生
    @Select("select * from student where stuId = #{stuId}")
    Student findById(String stuId);

    //更新学生密码
    @Update("update student set stuPwd = #{stuPwd} where stuId = #{stuId}")
    int updateStuPwd(Student student);

    //更新学生电话
    @Update("update student set stuTel = #{stuTel} where stuId = #{stuId}")
    int updateStuTel(Student student);

    //更新学生邮箱
    @Update("update student set stuEmail = #{stuEmail} where stuId = #{stuId}")
    int updateStuEmail(Student student);
//    //更新学生所有信息
//    @Update("update student set stuName = #{stuName},grade = #{grade},major = #{major},clazz = #{clazz}," +
//            "institute = #{institute},tel = #{tel},email = #{email},pwd = #{pwd},cardId = #{cardId},sex = #{sex},role = #{role} " +
//            "where studentId = #{studentId}")
//    int updateStu(Student student);
}
