package com.yjxxt.controller;

import com.yjxxt.base.BaseController;
import com.yjxxt.base.BaseMapper;
import com.yjxxt.service.TeacherStageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping
public class TeacherStageController extends BaseController {

    @Resource
    private TeacherStageService teacherStageService;

}
