<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>优极限教务管理系统</title>
        <#include "common.ftl">
    </head>
    <body class="layui-layout-body layuimini-all">
        <div class="layui-layout layui-layout-admin">
            <div class="layui-header header">
                <div class="layui-logo">
                    <a href="">
                        <img src="images/logo1.png" alt="logo">
                        <h1>优极限管理系统</h1>
                    </a>
                </div>
                <a>
                    <div class="layuimini-tool"><i title="展开" class="fa fa-outdent" data-side-fold="1"></i></div>
                </a>
                <ul class="layui-nav layui-layout-right">
                    <li class="layui-nav-item mobile layui-hide-xs" lay-unselect>
                        <a href="javascript:;" data-check-screen="full"><i class="fa fa-arrows-alt"></i></a>
                    </li>
                    <li class="layui-nav-item layuimini-setting">
                        <a href="javascript:;">${(user.trueName)!""}</a>
                        <dl class="layui-nav-child">

                            <dd>
                                <a href="javascript:;" data-iframe-tab="${ctx}/user/toPasswordPage" class="login-out">退出登录</a>
                            </dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item layuimini-select-bgcolor mobile layui-hide-xs" lay-unselect>
                        <a href="javascript:;"></a>
                    </li>
                </ul>
            </div>

            <div class="layui-side layui-bg-black">
                <a href="javascript:;">${(student.studentName)!""}</a>
                <div class="layui-side-scroll layui-left-menu">
                    <ul class="layui-nav layui-nav-tree layui-left-nav-tree layui-this" id="currency">
<#--                        <#if (permissions)??>-->
<#--                        <#else >-->
                            <li class="layui-nav-item">
                                <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-street-view"></i><span
                                            class="layui-left-nav"> 学生个人管理</span> <span
                                            class="layui-nav-more"></span></a>
                                <dl class="layui-nav-child">
                                    <dd>
                                        <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                           data-tab-mpi="m-p-i-1" data-tab="student/toPasswordPage" target="_self"><i
                                                    class="fa fa-key"></i><span class="layui-left-nav">密码修改</span></a>
                                    </dd>
                                    <dd>
                                        <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                           data-tab-mpi="m-p-i-2" data-tab="student/toMessagePage" target="_self"><i
                                                    class="fa fa-user-circle"></i><span
                                                    class="layui-left-nav">个人信息</span></a>
                                    </dd>
                                    <dd>
                                        <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                           data-tab-mpi="m-p-i-3" data-tab="student/course" target="_self"><i
                                                    class="fa fa-graduation-cap"></i><span
                                                    class="layui-left-nav">课程阶段规划</span></a>
                                    </dd>
                                </dl>
                            </li>
<#--                        </#if >-->
                        <#--==================================================-->
<#--                        <#if (permissions)??>-->
                        <li class="layui-nav-item">
                            <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-street-view"></i><span
                                        class="layui-left-nav">学生管理</span> <span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-1" data-tab="student/index1" target="_self"><i
                                                class="fa fa-tty"></i><span class="layui-left-nav">学生操作</span></a>
                                </dd>
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-2" data-tab="student/index2" target="_self"><i
                                                class="fa fa-ellipsis-h"></i><span
                                                class="layui-left-nav">阶段成绩</span></a>
                                </dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-flag"></i><span
                                        class="layui-left-nav"> 教师管理</span> <span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-3" data-tab="teacher/index" target="_self"><i class="fa
                                           fa-exchange"></i><span class="layui-left-nav"> 授课管理</span></a>
                                </dd>
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-4" data-tab="teacherRole/index" target="_self"><i
                                                class="fa fa-user-times"></i><span class="layui-left-nav">教师角色分配</span></a>
                                </dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-desktop"></i><span
                                        class="layui-left-nav"> 班级管理</span> <span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-5" data-tab="customer_serve/index/1" target="_self"><i
                                                class="fa fa-tachometer"></i><span
                                                class="layui-left-nav"> 班级管理</span></a>
                                </dd>
                                <#--                            <dd>-->
                                <#--                                <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd" data-tab-mpi="m-p-i-6" data-tab="customer_serve/index/2" target="_self"><i class="fa fa-tachometer"></i><span class="layui-left-nav"> 课程分配</span></a>-->
                                <#--                            </dd>-->
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-home"></i><span
                                        class="layui-left-nav"> </span>阶段管理<span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-10" data-tab="stage/index" target="_self"><i
                                                class="fa fa-tachometer"></i><span class="layui-left-nav">阶段管理页面</span></a>
                                </dd>
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-10" data-tab="stage/anal" target="_self"><i
                                                class="fa fa-tachometer"></i><span
                                                class="layui-left-nav">课程数据分析页面</span></a>
                                </dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-gears"></i><span
                                        class="layui-left-nav"> 系统管理</span> <span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-10" data-tab="role/role" target="_self"><i
                                                class="fa fa-tachometer"></i><span
                                                class="layui-left-nav">角色管理</span></a>
                                </dd>
                            </dl>
                        </li>
                        <span class="layui-nav-bar" style="top: 201px; height: 0px; opacity: 0;"></span>
                    </ul>
                </div>
            </div>
<#--            </#if>-->
            <div class="layui-body">
                <div class="layui-tab" lay-filter="layuiminiTab" id="top_tabs_box">
                    <ul class="layui-tab-title" id="top_tabs">
                        <li class="layui-this" id="layuiminiHomeTabId" lay-id="welcome"><i class="fa fa-home"></i>
                            <span>首页</span></li>
                    </ul>

                    <ul class="layui-nav closeBox">
                        <li class="layui-nav-item">
                            <a href="javascript:;"> <i class="fa fa-dot-circle-o"></i> 页面操作</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;" data-page-close="other"><i class="fa fa-window-close"></i>
                                        关闭其他</a></dd>
                                <dd><a href="javascript:;" data-page-close="all"><i class="fa fa-window-close-o"></i>
                                        关闭全部</a></dd>
                            </dl>
                        </li>
                    </ul>
                    <div class="layui-tab-content clildFrame">
                        <div id="layuiminiHomeTabIframe" class="layui-tab-item layui-show">
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <script type="text/javascript" src="${ctx}/js/main.js"></script>
    </body>
</html>
