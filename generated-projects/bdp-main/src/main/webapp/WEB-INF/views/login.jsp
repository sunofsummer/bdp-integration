<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>U3 V1.1登录页面</title>
    <style>
        html, body {
            font-family: Tahoma, Geneva, sans-serif;
            font-size: 12px;
            color: #333;
            line-height: 16px;
            height: 100%;
        }

        body {
            padding: 0;
            margin: 0;
            height: 100%;
        }

        input {
            vertical-align: middle;
        }

        form {
            padding: 0px;
            margin: 0px;
        }

        #loginpanel {
            border: 5px solid #EEE;
            width: 600px;
            height: 340px;
            padding: 40px 34px;
            left: 55%;
            margin-left: -400px;
            top: 50%;
            margin-top: -240px;
            position: absolute;
        }

        #loginpanel .safe-tips {
            border: 1px solid #F2DD8C;
            background: url('${ctx}/images/safe-tips.gif') 10px #FFC no-repeat;
            color: #666;
            width: 530px;
            height: 35px;
            line-height: 35px;
            margin-top: 5px;
            padding-left: 30px;
            zoom: 1;
            overflow: hidden;
        }

        .loginmain {
            background: url('${ctx}/images/login_logo.png') top right no-repeat;
            background-position-x: 85%;
            width: 550px;
            height: 300px;
            margin: 30px 0 0 20px;
            /* float:right; */
        }

        .btn_sign, .btn_reset {
            cursor: pointer;
            width: 84px;
            height: 30px;
            font-size: 14;
            font-weight: bold;
            color: white;
            line-height: 30px;
            text-align: center;
            padding: 0;
            border: 0;
            background: url('${ctx}/images/login-btn.png') no-repeat;
        }

        .login_power {
            text-align: center;
            margin-top: 30px;
        }

        #ps_container, #un_container {
            font-size: 15;
            font-weight: bold;
            margin: 20px 20px 0 0;
        }

        #ps_container input, #un_container input {
            width: 180px;
        }

        .error {
            color: #8a1f11;
            border-color: #FBC2C4;
        }
    </style>
    <script src="${ctx}/scripts/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<form id="loginForm" action="${pageContext.request.contextPath}/j_spring_security_check" method="post"
      style="margin-top:1em">
    <div id="loginpanel">
        <img src="${pageContext.request.contextPath}/images/login-top.png"/>

        <div class="safe-tips">
            恶意登录者一律切JJ,
            超级管理员:<font color="red">admin/admin</font>
        </div>
        <div class="loginmain">
            <div class="dialog">
                <div id="un_container">账号:&nbsp;&nbsp;<input id='j_username' name='j_username' type="text"/></div>
                <div id="ps_container">密码:&nbsp;&nbsp;<input id='j_password' name='j_password' type="password"/></div>
            </div>
            <div style="margin-top:15px;margin-left: 10px">
                <input type="checkbox" name="_spring_security_remember_me"/>&nbsp;&nbsp;两周内记住我
            </div>
            <div style="margin-top:20px;margin-left: 50px;">
                <input type="button" class="btn_sign" value="登录" onclick="submitForm()"/>&nbsp;&nbsp;
                <input type="button" class="btn_reset" value="重置"/>
            </div>
            <%if ("1".equals(request.getParameter("error"))) {%>
            <div class="error"><br/> 用户名密码错误,请重试.</div>
            <%
                }
                if ("2".equals(request.getParameter("error"))) {
            %>
            <div class="error"><br/> 验证码错误,请重试.</div>
            <%
                }
                if ("3".equals(request.getParameter("error"))) {
            %>
            <div class="error"><br/> 此帐号已从别处登录.</div>
            <%}%>
            <div class="login_power">
                Power by <font color="green">xy</font> @2012-etc it maybe open-source in further...
            </div>
        </div>
    </div>
</form>
<script type="text/javascript">
    $(document).ready(function () {
        //开发阶段自动登录
        $("#j_username").val("admin");
        $("#j_password").val("admin");
        submitForm();

        /**注册重置按钮事件*/
        $(".btn_reset").bind("click", function () {
            $("#j_username").val("");
            $("#j_password").val("");
        });
    });
    /**支持输入用户名、密码之后回车登录*/
    document.onkeydown = function (e) {
        //支持firefox
        if (!e) e = window.event;
        if ((e.keyCode || e.which) == 13) {
            submitForm();
        }
    }

    /** 提交方法 */
    var submitForm = function () {
        var pwd = document.getElementById('j_password').value;
        if (pwd == null || pwd == '') {
            return;
        }

        document.forms[0].submit();
    }
</script>
</body>
</html>

