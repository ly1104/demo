package com.yjxxt.service;

import com.yjxxt.base.BaseService;
import com.yjxxt.bean.Stage;
import com.yjxxt.mapper.TeacherStageMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class TeacherStageService extends BaseService<Stage,Integer> {


    @Resource
    private TeacherStageMapper teacherStageMapper;
}
