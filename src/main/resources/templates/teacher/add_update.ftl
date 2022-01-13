<!DOCTYPE html>
<html>
<head><#include "../common.ftl"> </head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;">
    <#--    设置教师的ID-->
    <input type="hidden" name="id" value="${(teacher.id)!}">
    <#--    设置营销机会指派人的ID-->
    <input type="hidden" name="courseId" id="courseId" value="${(teacher.courseId)!}">

    <div class="layui-form-item layui-row layui-col-xs12"><label class="layui-form-label">教师名称</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="required" name="teacherName" id="teacherName"
                    <#--通过EL表达式获取存储在前端页面的teacher对象的教师名称-->
                   value="${(teacher.teacherName)!}"
                   placeholder="请输入教师名称">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12"><label class="layui-form-label">教师姓名</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="required" name="trueName" id="teacherName"
                    <#--通过EL表达式获取存储在前端页面的teacher对象的教师姓名-->
                   value="${(teacher.trueName)!}"
                   placeholder="请输入教师姓名">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12"><label class="layui-form-label">联系电话</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="phone" id="chanceSource"
                    <#--通过EL表达式获取存储在前端页面的teacher对象的电话-->
                   value="${(teacher.phone)!}"
                   placeholder="请输入联系电话"></div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12"><label class="layui-form-label">QQ</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="qq" id="chanceSource"
                    <#--通过EL表达式获取存储在前端页面的teacher对象的qq-->
                   value="${(teacher.qq)!}"
                   placeholder="请输入QQ"></div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">单选框</label>
        <div class="layui-input-block">

            <input type="radio"  name="sex" value="男" title="男">
            <input type="radio" name="sex" value="女" title="女">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">所教学科</label>
        <div class="layui-input-block">
            <select name="courseName" id="courseName" >
                <option value="">请选择</option>

            </select>
        </div>
    </div>
    <br/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-lg" lay-submit="" lay-filter="addOrUpdateSaleChance"> 确认</button>
            <button class="layui-btn layui-btn-lg layui-btn-normal" id="closeBtn">取消</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx}/js/teacher/add_update.js"></script>
</body>

</html>