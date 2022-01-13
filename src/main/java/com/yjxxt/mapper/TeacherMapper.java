package com.yjxxt.mapper;

import com.yjxxt.base.BaseMapper;
import com.yjxxt.bean.Teacher;
import org.apache.ibatis.annotations.Mapper;


public interface TeacherMapper extends BaseMapper<Teacher,Integer> {
    Integer deleteByPrimaryKey(Integer id);

    int insert(Teacher record);

    Integer insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Integer id);

    Integer updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
}