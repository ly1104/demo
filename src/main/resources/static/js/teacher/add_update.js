layui.use(['form', 'formSelects', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;
    formSelects = layui.formSelects;
    //添加
    form.on("submit(addOrUpdateSaleChance)", function (obj) {
        //数据加载层
        var index = layer.msg("数据提交中，请稍后", {
            icon: 16,
            time: false,//不关闭
            shade: 0.8 //设置遮罩的透明度
        });

        //从数据库的t_course表中拿到courseName
        var courseId=$("#courseName").val();
        var url = ctx + "/teacher/save?courseId="+courseId;

        //但是为什么输出是courseName对应的id
        console.log(courseId+"<--------<");
        console.log($("#courseName")+"<--------<");
        //默认url是添加操作，此步判断是否是编辑中的更新操作
        if ($("input[name=id]").val()) {
            console.log($("input[name=id]").val());
            url = ctx + "/teacher/update?courseId="+courseId
        }

        //发送ajax添加数据
        $.post(url, obj.field,function (data) {
            //判断
            if (data.code == 200) {
                //成功提示信息
                layer.msg("操作成功了");
                //关闭加载层
                layer.closeAll("iframe");
                //加载页面信息
                window.parent.location.reload();
            } else {

                //提示信息
                layer.msg(data.msg);
            }
        }, "json");
        //取消默认跳转
        return false;
    });
    //取消
    $("#closeBtn").click(function () {
        //关闭弹出层
        //假设这是iframe页
        var index = parent.layer.getFrameIndex(window.name);//先得到当前iframe层的索引
        parent.layer.close(index);//再执行关闭

    });


    //发送ajax填充分配人，教师所教学科。
    $.ajax({
        type:"post",
        url:ctx+"/course/sales",
        dataType:"json",
        success:function (data){
            //指派人ID
            var assignMan=$("#courseId").val();
            var a=$("input[name=id]").val();
            console.log(assignMan);
            console.log(a);
            //循环遍历
            for(var x in data){
                //追加option
                if(assignMan==data[x].id){
                    $("#courseName").append("<option selected value='"+data[x].id+"'>"+data[x].course_name+"</option>")
                }else {
                    $("#courseName").append("<option value='"+data[x].id+"'>"+data[x].course_name+"</option>")
                }
            }
            //重新渲染下拉框
            layui.form.render("select");
        }
    })


});