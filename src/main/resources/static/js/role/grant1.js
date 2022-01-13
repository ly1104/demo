var treeObj;
$(function(){
    //页面加载完毕，将资源模块信息存储道tree
    loadModulesInfo();
});

function loadModulesInfo(){
    //发送ajax查询资源信息
    $.ajax({
        type:"post",
        url:ctx+"/module/findModules",
        data:{
            "roleId":$("#roleId").val()
        },
        dataType:"json",
        success:function(datas){
            //渲染树
            var setting = {
                check: {
                    enable: true,
                    chkboxType: { "Y": "ps", "N": "ps" }
                },
                view:{
                    showLine: false,
                    //showIcon: true
                },
                data: {
                    simpleData: {
                        enable: true
                    }
                },
                callback: {
                    onCheck: zTreeOnCheck
                }

            };
            treeObj=$.fn.zTree.init($("#test1"), setting, datas);
        }
    });
}
function zTreeOnCheck(event, treeId, treeNode) {
    var nodes = treeObj.getCheckedNodes(true);
    // console.log(nodes);
    //收集数据
    var roleId=$("#roleId").val();
    //资源mIds
    var mids="mids=";
    //遍历获取资源的Id;mids=1&mids=67&;

    for( var x in nodes){
        if(x<nodes.length-1){
            mids=mids+nodes[x].id+"&mids=";
        }else{
            mids=mids+nodes[x].id;
        }
    }
    console.log(mids);
    //发送ajax添加
    $.ajax({
       type: "post",
       url:ctx+"/role/grant?"+mids+"&roleId="+roleId,
        success:function (result) {
            if(result.code==200){
                alert("授权成功");
            }else {
                alert("授权失败");
            }
        }
    });

};
