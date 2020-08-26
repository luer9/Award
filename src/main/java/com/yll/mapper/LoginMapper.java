
package com.yll.mapper;

import com.yll.entity.Admin;
import com.yll.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface LoginMapper {


    @Select("select stuId,stuName,stuPwd,stuMajor,stuInstitute,stuClass,stuEmail,stuTel,stuSex" +
            " from student where stuId = #{userId} and stuPwd = #{password}")
    Student studentLogin(@Param("userId") String userId, @Param("password") String password);

    @Select("select * " +
            " from admin where adminUser = #{userId} and adminPwd = #{password}")
    Admin adminLogin(@Param("userId") String userId, @Param("password") String password);
}
