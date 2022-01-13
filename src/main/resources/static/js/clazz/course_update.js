layui.use(['form', 'layer','formSelects'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        formSelects = layui.formSelects,
        $ = layui.jquery;


    /*添加*/
    //监听提交
    layui.form.on('submit(addOrUpdateUser)', function(data){
        var url=ctx+"/customer_serve/save";
        //判断修改，还是添加操作
        if($("[name='id']").val()){

            url=ctx+"/customer_serve/update"
        }
        console.log(url+"<<<");

        /*发送ajax操作*/
        $.post(url,data.field,function (result){
            //判断
            if(result.code===200){
                layer.msg("添加成功");
                //刷新
                window.parent.location.reload();
            }else{
                //提示一下
                layer.msg(result.msg,{icon:5 });
            }
        },"json");
        //取消的默认行为
        return false;
    });


    /*取消*/
    $("#closeBtn").click(function (){
        //关闭弹出层
        //假设这是iframe页
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
    });

});