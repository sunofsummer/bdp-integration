<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>

<body>
<div class="errorPage">
    <p class="name">504</p>

    <p class="description">访问超时。</p>

    <p>
        <button class="btn btn-danger" onclick="document.location.href = 'index.html';">返回首页</button>
        <button class="btn btn-warning" onclick="history.back();">403.jsp</button>
    </p>
</div>
</body>
</html>