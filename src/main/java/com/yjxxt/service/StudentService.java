package com.yjxxt.service;

import com.yjxxt.base.BaseService;
import com.yjxxt.bean.Student;
import com.yjxxt.mapper.StudentMapper;
import com.yjxxt.model.StudentModel;
import com.yjxxt.utils.AssertUtil;
import com.yjxxt.utils.Md5Util;
import com.yjxxt.utils.UserIDBase64;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class StudentService extends BaseService<Student,Integer> {

    @Resource
    private StudentMapper studentMapper;

    /**
     *  学生登录
     * @param studentName
     * @param studentPwd
     * @return
     */
    public StudentModel studentLogin(String studentName,String studentPwd){
        //校验用户名密码
        checkLoginParams(studentName,studentPwd);
        //用户名是否存在
        Student student = studentMapper.selectStudentByName(studentName);
        AssertUtil.isTrue(null==student,"用户名不存在！");
        //校验密码
        checkLoginPwd(studentPwd,student.getStudentPwd());
        //返回对象
        return builderStudentInfo(student);
    }

    /**
     * 返回对象
     * @param student
     * @return
     */
    private StudentModel builderStudentInfo(Student student) {
        StudentModel studentModel = new StudentModel();
        studentModel.setIdStr(UserIDBase64.encoderUserID(student.getId()));
        studentModel.setStudentName(student.getStudentName());
        return studentModel;
    }

    /**
     *  校验登录密码
     * @param studentPwd
     * @param studentPwd1
     */
    private void checkLoginPwd(String studentPwd, String studentPwd1) {
        studentPwd = Md5Util.encode(studentPwd);
        AssertUtil.isTrue(!studentPwd.equals(studentPwd1),"密码不正确！");
    }

    /**
     * 校验用户名和密码参数
     * @param studentName
     * @param studentPwd
     */
    private void checkLoginParams(String studentName, String studentPwd) {
        AssertUtil.isTrue(StringUtils.isBlank(studentName),"请输入用户名！");
        AssertUtil.isTrue(StringUtils.isBlank(studentPwd),"请输入用户密码！");
    }
}
