layui.use(['element', 'layer', 'layuimini','jquery','jquery_cookie'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        $ = layui.jquery_cookie($);

    //退出账号返回登录
    // 菜单初始化
    $('#layuiminiHomeTabIframe').html('<iframe width="100%" height="100%" frameborder="0"  src="welcome"></iframe>')
    layuimini.initTab();
    /*选择原始绑定事件*/
    $(".login-out").click(function () {
        layer.msg("------------------")
        $.ajax({
            type:"post",
            url:ctx+"/index/loginOut",
            data:"",
            dataType:"json",
            success:function (date){

                console.log(date);
            }
        });
        //清空Cookie信息
        $.removeCookie("studentIdStr",{domain:"localhost",path:"/yjxms"})
        $.removeCookie("teacherName",{domain:"localhost",path:"/yjxms"})
        $.removeCookie("idStr",{domain:"localhost",path:"/yjxms"})
        $.removeCookie("userName",{domain:"localhost",path:"/yjxms"})
        $.removeCookie("trueName",{domain:"localhost",path:"/yjxms"})
        $.removeCookie("JSESSIONID",{domain:"localhost",path:"/yjxms"})
        $.removeCookie("studentName",{domain:"localhost",path:"/yjxms"})
        //跳转页面
        window.parent.location.href=ctx+"/index";
    });
});