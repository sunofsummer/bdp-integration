<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>基础开发平台:<sitemesh:title/></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>

    <link href="${ctx}/styles/bootstrap/2.2.1/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link rel="icon" type="image/ico" href="${ctx}/images/favicon.ico">
    <link href="${ctx}/styles/stylesheets.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/styles/bootstrap/2.2.1/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/scripts/jquery/plugins/ztree/zTreeStyle.css" rel="stylesheet" type="text/css">
    <script src="${ctx}/scripts/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
    <script src="${ctx}/scripts/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="${ctx}/styles/bootstrap/2.2.1/js/bootstrap.min.js" type="text/javascript"></script>
    <%--jquery plugins start--%>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/mousewheel/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/cookies/jquery.cookies.2.2.0.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/excanvas.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/fullcalendar.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/select2/select2.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/uniform/uniform.js"></script>
    <script type="text/javascript"
            src="${ctx}/scripts/jquery/plugins/maskedinput/jquery.maskedinput-1.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/validation/jquery.validationEngine-en.js"
            charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/validation/jquery.validationEngine.js"
            charset="utf-8"></script>
    <script type="text/javascript"
            src="${ctx}/scripts/jquery/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/animated_progressbar.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/qtip/jquery.qtip-1.0.0-rc3.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/cleditor/jquery.cleditor.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/dataTables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${ctx}/scripts/jquery/plugins/fancybox/jquery.fancybox.pack.js"></script>
    <script src="${ctx}/scripts/jquery/plugins/ztree/jquery.ztree.core-3.5.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/scripts/onready.js"></script>
    <sitemesh:head/>
    <style type="text/css">
        div.zTreeDemoBackground {
            width: 200px;
            text-align: left;
        }

        .sitemeshBody {
            position: relative;
            padding: 5px;
        }

        .settings {
            position: relative;
        }
    </style>
</head>

<body>
<div class="wrapper">
    <%--顶部LOGO 开始--%>
    <%@include file="/WEB-INF/layouts/header.jsp" %>
    <%--左侧菜单以及个人信息--%>
    <div class="menu">
        <%--导航条--%>
        <div class="breadLine">
            <div class="arrow"></div>
            <div class="adminControl">
                欢迎回来, 夏阳
            </div>
        </div>
        <%--个人信息显示--%>
        <div class="admin">
            <div class="image">
                <img src="${ctx}/images/users/alexander.jpg" class="img-polaroid">
            </div>
            <ul class="control">
                <li><span class="icon-comment"></span> <a href="#">消息</a>
                    <a href="#" class="caption red">12</a></li>
                <li><span class="icon-cog"></span> <a href="#">设置</a>
                </li>
                <li><span class="icon-share-alt"></span> <a
                        href="#">退出</a></li>
            </ul>
            <div class="info">
                <span>欢迎回来! 您最后访问在: 24.10.2012</span>
            </div>
        </div>
        <%--菜单--%>
        <ul class="navigation">
            <%--系统管理菜单--%>
            <li class="openable">
                <div>
                    <span class="isw-settings"></span><span class="text">系统管理</span>
                </div>

                <div class="zTreeDemoBackground">
                    <ul id="sysmg" class="ztree"></ul>
                </div>
            </li>
        </ul>

    </div>

    <div>
        <div class="content">
            <%--导航条--%>
            <div class="breadLine">

                <ul class="breadcrumb">
                    <span>当前位置：</span>
                    <li><a href="#">系统管理</a>
                        <span class="divider">&gt;</span></li>
                    <li class="active">模块维护</li>
                </ul>

                <ul class="buttons">
                    <li>
                        <a href="#"
                           class="link_bcPopupList"><span class="icon-user"></span><span class="text">在线用户</span></a>

                        <div id="bcPopupList" class="popup">
                            <div class="head clearfix">
                                <div class="arrow"></div>
                                <span class="isw-users"></span>
                                <span class="name">用户列表</span>
                            </div>
                            <div class="body-fluid users">
                                <div class="item clearfix">
                                    <div class="image"><a
                                            href="#"></a></div>
                                    <div class="info">
                                        <a href="#"
                                           class="name">Aqvatarius</a>
                                        <span>online</span>
                                    </div>
                                </div>

                            </div>
                            <div class="footer">
                                <button class="btn btn-danger link_bcPopupList" type="button">关闭</button>
                            </div>
                        </div>

                    </li>
                    <li>
                        <a href="#" class="link_bcPopupSearch">
                            <span class="icon-search"></span><span class="text">搜索</span>
                        </a>

                        <div id="bcPopupSearch" class="popup">
                            <div class="head clearfix">
                                <div class="arrow"></div>
                                <span class="isw-zoom"></span>
                                <span class="name">请输入关键词</span>
                            </div>
                            <div class="body search">
                                <input type="text" placeholder="Some text for search..." name="search">
                            </div>
                            <div class="footer">
                                <button class="btn" type="button">开始搜索</button>
                                <button class="btn btn-danger link_bcPopupSearch" type="button">关闭</button>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="link_bcPopupSettings">
                            <span class="icon-wrench"></span><span class="text">设置</span>
                        </a>
                        <%--主题以及皮肤设置--%>
                        <div id="bcPopupSettings" class="popup">
                            <div class="head clearfix">
                                <div class="arrow"></div>
                                <span class="isw-settings"></span>
                                <span class="name">主题设置</span>
                            </div>
                            <div class="body settings">
                                <div class="row-fluid">
                                    <div class="span3"><strong>皮肤:</strong></div>
                                    <div class="span9">
                                        <a class="styleExample tip active" data-style="" data-original-title="默认">
                                            &nbsp;</a>
                                        <a class="styleExample silver tip" data-style="silver"
                                           data-original-title="银灰色">
                                            &nbsp;</a>
                                        <a class="styleExample dark tip" data-style="dark" data-original-title="黑色">
                                            &nbsp;</a>
                                        <a class="styleExample marble tip" data-style="marble"
                                           data-original-title="大理石">
                                            &nbsp;</a>
                                        <a class="styleExample red tip" data-style="red" data-original-title="红色">
                                            &nbsp;</a>
                                        <a class="styleExample green tip" data-style="green" data-original-title="绿色">
                                            &nbsp;</a>
                                        <a class="styleExample lime tip" data-style="lime" data-original-title="绿黄色">
                                            &nbsp;</a>
                                        <a class="styleExample purple tip" data-style="purple" data-original-title="紫色">
                                            &nbsp;</a>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span3"><strong>底纹:</strong></div>
                                    <div class="span9">
                                        <a class="bgExample tip active" data-style="" data-original-title="默认">
                                            &nbsp;</a>
                                        <a class="bgExample bgCube tip" data-style="cube" data-original-title="立方体">
                                            &nbsp;</a>
                                        <a class="bgExample bghLine tip" data-style="hline"
                                           data-original-title="水平线">
                                            &nbsp;</a>
                                        <a class="bgExample bgvLine tip" data-style="vline"
                                           data-original-title="垂直线">
                                            &nbsp;</a>
                                        <a class="bgExample bgDots tip" data-style="dots" data-original-title="Dots">
                                            &nbsp;</a>
                                        <a class="bgExample bgCrosshatch tip" data-style="crosshatch"
                                           data-original-title="阴影">&nbsp;</a>
                                        <a class="bgExample bgbCrosshatch tip" data-style="bcrosshatch"
                                           data-original-title="大阴影">&nbsp;</a>
                                        <a class="bgExample bgGrid tip" data-style="grid" data-original-title="网格">
                                            &nbsp;</a>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span3"><strong>固定布局:</strong></div>
                                    <div class="span9">
                                        <div style="display: none; " class="checker"><span><input type="checkbox"
                                                                                                  name="settings_fixed"
                                                                                                  value="1"
                                                                                                  style="opacity: 0; "></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span3"><strong>隐藏菜单:</strong></div>
                                    <div class="span9">
                                        <div style="display: none; " class="checker"><span><input type="checkbox"
                                                                                                  name="settings_menu"
                                                                                                  value="1"
                                                                                                  style="opacity: 0; "></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="footer">
                                <button class="btn btn-danger link_bcPopupSettings" type="button">关闭</button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="sitemeshBody"><sitemesh:body/></div>
        </div>
    </div>
    <%@include file="/WEB-INF/layouts/footer.jsp" %>
</div>
<script language="javascript">
    var setting = {
        data: {
            simpleData: {
                enable: true
            }
        }
    };

    var zNodes = [
        { id: 1, pId: 0, name: "权限设置", open: true, icon: "${ctx}/images/icons/others/award_star.png", url: "#", target: "_self"},
        { id: 11, pId: 1, name: "组织机构", url: "#", icon: "${ctx}/images/icons/others/organisation.png", url: "${ctx}/org/input", target: "_self"},
        { id: 12, pId: 1, name: "角色管理", url: "#", icon: "${ctx}/images/icons/others/group.png", url: "${ctx}/role/input", target: "_self"},
        { id: 22, pId: 1, name: "人员账号", url: "#", icon: "${ctx}/images/icons/others/user.png", url: "${ctx}/account/input", target: "_self"},
        { id: 13, pId: 1, name: "菜单资源", url: "#", icon: "${ctx}/images/icons/others/ui-menu-blue.png", url: "${ctx}/menu/input", target: "_self"}
    ];
    //左侧树形菜单加载
    $.fn.zTree.init($("#sysmg"), setting, zNodes);

    $(".navigation .openable > div:first-child").click(function () {
        var par = $(this).parent('.openable');
        var sub = par.find("div.zTreeDemoBackground");
        if (sub.is(':visible')) {
            sub.hide(300);
            par.removeClass('active');
        } else {
            sub.show(300);
            par.addClass('active');
        }
        return false;
    });
</script>
</body>
</html>