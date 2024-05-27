<%-- 
    Document   : view
    Created on : May 20, 2024, 8:45:44 PM
    Author     : Admin
--%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${requestScope.post}" var="p">
            ${p.content} <br/>
            <c:forEach items="${p.comments}" var="c">
                ${c.comment} <br/>
            </c:forEach>
        </c:forEach>
    </body>
</html>
