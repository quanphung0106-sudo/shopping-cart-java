<%-- 
    Document   : index
    Created on : Jun 24, 2022, 2:08:13 PM
    Author     : phung
--%>

<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null) {
    request.setAttribute("auth", auth);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/head.jsp" %>
        <title>Welcome to Shopping Cart!</title>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>
        
        <% out.print(DbCon.getConnection()); %>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
