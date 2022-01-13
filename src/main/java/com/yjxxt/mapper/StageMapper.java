package com.yjxxt.mapper;

import com.yjxxt.base.BaseMapper;
import com.yjxxt.bean.Stage;
import com.yjxxt.bean.Teacher;
import com.yjxxt.query.StageQuery;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;


public interface StageMapper extends BaseMapper<Stage,Integer> {

    //查询所有课程
    List<Stage> selectAllStage(StageQuery query);


    //删除
    Integer deleteBatch(Integer[] ids);


    //查找学生
    @MapKey("")
    List<Map<String,Object>> findSC();

    @MapKey("")
    List<Map<String, Object>> selectStudentStage();

    @MapKey("")
    List<Map<String, Object>> findAll();


    Integer selectStageByName(String stageName);

    Integer insertTeacherStage(Integer stageId, Integer teacherId, Date createDate, Date updateDate);

    Object selectStageName(String stageName);

    @MapKey("")
    List<Map<String, Object>> selectAllTeacher(Integer clazzId);

    Integer updateTeacher(Integer id, Integer gettId, Date date);

    Stage selectAllStageTeacher(Integer id);

}





























