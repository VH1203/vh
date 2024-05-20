<%-- 
    Document   : view
    Created on : May 15, 2024, 4:25:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Circle"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% Circle c= (Circle)request.getAttribute("circle");%>
    </head>
    <body>
        <canvas id="myCanvas" width="500" height="500" style="border:1px solid grey"></canvas>
        <script>
            const c=document.getElementById("myCanvas");
            const context=c.getContext("2d");
            context.beginPath();
            context.arc(<%=c.getX()%>,<%=c.getY()%>,<%=c.getR()%>,0,2*Math.PI);
            context.stroke();
        </script>
    </body>
</html>
