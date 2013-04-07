<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
    #global-header-nav {
        margin-bottom: 15px;
    }

    #global-header-area {
        padding: 7px 0;
    }

    .the-alipay-global .fn-clear {
        zoom: 1;
    }

    .global-nav-cnt {
        overflow: hidden;
        height: 40px;
        padding-left: 10px;
    }

    .the-alipay-global .fn-clear {
        zoom: 1;
    }

    .the-alipay-global * {
        margin: 0;
        padding: 0;
        font-style: normal;
        font-weight: normal;
        font-size: 100%;
    }

    .global-nav-cnt ul {
        height: 100%;
    }

    .global-nav-master, .global-nav-master-other {
        float: left;
        display: inline;
        margin: 7px 5px 0 0;
    }

    .global-nav-master-current a.global-nav-master-a {
        color: dimGray;
        background-image: url('${ctx}/images/nav_sub.png');
    }

    a.global-nav-master-a {
        float: left;
        font-size: 14px;
        text-align: center;
        color: white;
    }

    a.global-nav-master-a strong {
        padding: 8px 15px 13px;
        font-size: 14px;
        height: 14px;
        line-height: 14px;
        float: left;
        font-weight: bold;
    }

</style>
<%--顶部LOGO 开始--%>
<%--<div id="global-header-area" class="fn-clear" coor="headarea">
    <div class="global-logo">
        <img src="${ctx}/images/logo.png" alt="Aquarius" title="基础开发平台">
    </div>
</div>--%>
<div id="global-header-nav" class="header" coor="nav">
    <div class="fn-clear">
        <div class="global-nav-cnt">
            <ul class="fn-clear">
                <!-- 一级导航 s0 我的支付宝 -->
                <li class="global-nav-master global-nav-master-current">
                    <a href="#" class="global-nav-master-a" seed="global-account"><strong>系统基础功能</strong></a>
                </li>
                <li class="global-nav-master">
                    <a href="#" class="global-nav-master-a" seed="global-safeguard"> <strong>元数据管理</strong>
                    </a>
                </li>
                <li class="global-nav-master">
                    <a href="#" class="global-nav-master-a" seed="global-safeguard"> <strong>数据处理</strong>
                    </a>
                </li>
                <li class="global-nav-master">
                    <a href="#" class="global-nav-master-a" seed="global-safeguard"> <strong>监控中心</strong>
                    </a>
                </li>
                <li class="global-nav-master">
                    <a href="#" class="global-nav-master-a" seed="global-safeguard"> <strong>报表展示</strong>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
