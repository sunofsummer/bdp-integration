<%--
  Created by IntelliJ IDEA.
  User: yangxia
  Date: 12-12-17
  Time: 上午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>首页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" type="text/css" href="${ctx}/styles/fullcalendar.print.css" media="print">

    <style type="text/css">
        .jqstooltip {
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: rgb(0, 0, 0) transparent;
            background-color: rgba(0, 0, 0, 0.6);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr = #99000000, endColorstr = #99000000);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
            color: white;
            font: 10px arial, san serif;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            border: 1px solid white;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }
    </style>
</head>
<body>

<div class="workplace">

    <div class="row-fluid">

        <div class="span4">

            <div class="wBlock red clearfix">
                <div class="dSpace">
                    <h3>Invoices statistics</h3>
                <span class="mChartBar" sparktype="bar" sparkbarcolor="white"><canvas
                        style="display: inline-block; width: 44px; height: 16px; vertical-align: top; " width="44"
                        height="16"></canvas></span>
                    <span class="number">60%</span>
                </div>
                <div class="rSpace">
                    <span>$1,530 <b>amount paid</b></span>
                    <span>$2,102 <b>in queue</b></span>
                    <span>$11,100 <b>total taxes</b></span>
                </div>
            </div>

        </div>

        <div class="span4">

            <div class="wBlock green clearfix">
                <div class="dSpace">
                    <h3>Users</h3>
                <span class="mChartBar" sparktype="bar" sparkbarcolor="white"><canvas
                        style="display: inline-block; width: 64px; height: 16px; vertical-align: top; " width="64"
                        height="16"></canvas></span>
                    <span class="number">2,513</span>
                </div>
                <div class="rSpace">
                    <span>351 <b>active</b></span>
                    <span>2102 <b>passive</b></span>
                    <span>100 <b>removed</b></span>
                </div>
            </div>

        </div>

        <div class="span4">

            <div class="wBlock blue clearfix">
                <div class="dSpace">
                    <h3>Last visits</h3>
                <span class="mChartBar" sparktype="bar" sparkbarcolor="white"><canvas
                        style="display: inline-block; width: 89px; height: 16px; vertical-align: top; " width="89"
                        height="16"></canvas></span>
                    <span class="number">6,302</span>
                </div>
                <div class="rSpace">
                    <span>65% <b>New</b></span>
                    <span>35% <b>Returning</b></span>
                    <span>00:05:12 <b>Average time on site</b></span>
                </div>
            </div>

        </div>
    </div>

    <div class="dr"><span></span></div>
    <div id="ui-datepicker-div"
         class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</div>
</body>
</html>