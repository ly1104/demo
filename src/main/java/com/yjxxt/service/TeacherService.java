package com.yjxxt.service;

import com.yjxxt.base.BaseService;
import com.yjxxt.bean.Teacher;
import com.yjxxt.mapper.TeacherMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class TeacherService extends BaseService<Teacher,Integer> {

    @Resource
    private TeacherMapper teacherMapper;
}
