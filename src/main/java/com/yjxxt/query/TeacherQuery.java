package com.yjxxt.query;

import com.yjxxt.base.BaseQuery;


public class TeacherQuery extends BaseQuery {

    private String teacherName;
    private String sex;
    private Integer id;

    public TeacherQuery() {
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "TeacherQuery{" +
                "teacherName='" + teacherName + '\'' +
                ", sex='" + sex + '\'' +
                ", id=" + id +
                '}';
    }
}
