<%-- 
    Document   : orders
    Created on : Jun 24, 2022, 2:10:20 PM
    Author     : phung
--%>

<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("auth", auth);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/head.jsp" %>
        <title>Orders Page</title>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>
        <h1>This is Cart Page!</h1>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
