package com.yjxxt.controller;

import com.yjxxt.base.BaseController;
import com.yjxxt.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("teacher")
public class TeacherController extends BaseController {

    @Autowired
    private TeacherService teacherService;

}
