package com.yjxxt.mapper;

import com.yjxxt.base.BaseMapper;
import com.yjxxt.bean.Student;
import org.apache.ibatis.annotations.Mapper;


public interface StudentMapper extends BaseMapper<Student,Integer> {
    Integer deleteByPrimaryKey(Integer id);

    int insert(Student record);

    Integer insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    Integer updateByPrimaryKeySelective(Student record);

    Integer updateByPrimaryKey(Student record);

    Student selectStudentByName(String studentName);
}