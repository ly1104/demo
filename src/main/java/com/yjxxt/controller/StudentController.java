package com.yjxxt.controller;

import com.yjxxt.base.BaseController;
import com.yjxxt.base.ResultInfo;
import com.yjxxt.bean.Student;
import com.yjxxt.model.StudentModel;
import com.yjxxt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("student")
public class StudentController extends BaseController {

    @Autowired
    private StudentService studentService;

    /**
     * 学生登录
     * @param student
     * @return
     */
    @RequestMapping("login")
    @ResponseBody
    public ResultInfo studentLogin(Student student){
        ResultInfo resultInfo = new ResultInfo();
        StudentModel studentModel = studentService.studentLogin(student.getStudentName(),student.getStudentPwd());
        resultInfo.setResult(studentModel);
        return resultInfo;
    }

}
