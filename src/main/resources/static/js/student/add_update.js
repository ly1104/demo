layui.use(['form', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    form.on("submit(addOrUpdateStudent)",function (obj) {
        var fieldData=obj.field;
        var url =ctx+"/student/add";
        var msg='添加成功';
        if(fieldData.id){
            url=ctx+"/student/update";
            msg='修改成功';
        }
        $.ajax({
            type:"post",
            url:url,
            data:fieldData,
            dataType:"json",
            success:function (data) {
                if(data.code==200){
                    layer.msg(msg,function () {
                        // 关闭弹出层
                        layer.closeAll("iframe");
                        // 刷新父页面，重新渲染表格数据
                        parent.location.reload();
                    });
                }else {
                    layer.msg(data.msg);
                }
            }
        });
        //取消表单默认跳转
        return false;
    });
    /**
     * 取消
     */
    $("#closeBtn").click(function () {
        // 当你在iframe页面关闭自身时
        var index = parent.layer.getFrameIndex(window.name);
        // 先得到当前iframe层的索引
        parent.layer.close(index);
        // 再执行关闭
        });

    /**
     * 下拉加载框
     */
    $.ajax({
        type: "post",
        url:ctx+"/customer_serve/find",
        dataType: "json",
        success:function (data) {
            // 如果是修改操作，判断当前修改记录的班级名称的值
            var cId = $("input[name='cId']").val();

            for (var i = 0; i < data.length; i++) {
                // 当前修改记录的班级名称 与 循环到的值 相等，下拉框则选中
                if (cId == data[i].id) {
                    $("#cId").append('<option value="'+data[i].id+'" selected>'+data[i].clazz_name+'</option>');
                } else {
                    $("#cId").append('<option value="'+data[i].id+'">'+data[i].clazz_name+'</option>');
                }
            }
            // 重新渲染下拉框内容
            layui.form.render("select");
        }
    });

})