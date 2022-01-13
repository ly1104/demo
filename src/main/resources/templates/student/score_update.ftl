<!DOCTYPE html>
<html>
<head>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;">
    <#-- 设置学生的ID -->
    <input type="hidden" name="id" value="${(studentDto.id)!}">
    <#--设置学生的班级-->
    <input type="hidden" name="cId" value="${(studentDto.cId)!}">

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">学生姓名</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="required"
                   name="trueName" id="trueName" value="${(studentDto.trueName)!}" placeholder="学生姓名" readonly>
        </div>
    </div>

    <br/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">联系电话</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="phone"
                   name="phone" value="${(studentDto.phone)!}" id="phone" placeholder="联系电话" readonly>
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">班级</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="required"
                   name="cId" value="<#--${(studentDto.cId)!}--><#if (studentDto.cId)??>${(studentDto.cId)?c}</#if>" id="phone" placeholder="班级" readonly>
        </div>
    </div>
    <br/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">班级名称</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="required"
                   name="className" value="${(studentDto.clazzName)!}" id="phone" placeholder="班级名称" readonly>
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">课程</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="required"
                   name="courseName" value="${(studentDto.courseName)!}" id="phone" placeholder="课程" readonly>
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">分数</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   name="score" value="${(studentDto.score)!}" id="phone" placeholder="分数">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-lg" lay-submit="" lay-filter="addOrUpdateStudent">
                确认
            </button>
            <button class="layui-btn layui-btn-lg layui-btn-normal" id="closeBtn">取消</button>
        </div>
    </div>
</form>

<script type="text/javascript" src="${ctx}/js/student/score_update.js"></script>
</body>
</html>