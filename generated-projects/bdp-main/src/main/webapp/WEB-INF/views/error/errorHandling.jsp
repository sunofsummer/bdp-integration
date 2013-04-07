<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="statusCode" value="${requestScope['javax.servlet.error.status_code']}"/>
<%--<c:set var="statusCode" value="${pageContext.request.}<%=request.getAttribute("javax.servlet.error.status_code")%>"/>--%>
<c:choose>
    <c:when test="${statusCode eq 403}">
        <c:redirect url="/error/403"/>
    </c:when>
    <c:when test="${statusCode eq 404}">
        <c:redirect url="/error/404"/>
    </c:when>
    <c:when test="${statusCode eq 500}">
        <c:redirect url="/error/500"/>
    </c:when>
    <c:when test="${statusCode eq 503}">
        <c:redirect url="/error/503"/>
    </c:when>
    <c:when test="${statusCode eq 504}">
        <c:redirect url="/error/504"/>
    </c:when>
</c:choose>

<%--解决IE下无法转发的问题--%>
<%response.setStatus(200);  // 200 = HttpServletResponse.SC_OK%>
<html>
<body>
<p>Error Exception: ${requestScope["javax.servlet.error.exception"]}</p>

<p>Error Exception Type: ${requestScope["javax.servlet.error.exception_type"]}</p>

<p>Error Message: ${requestScope["javax.servlet.error.message"]}</p>

<p>Error Request URI: ${requestScope["javax.servlet.error.request_uri"]}</p>

<p>Error Servlet Name: ${requestScope["javax.servlet.error.servlet_name"]}</p>

<p>Error Status Code: ${requestScope["javax.servlet.error.status_code"]}</p>
</body>
</html>
