<%-- 
    Document   : managerExit
    Created on : 2015-11-21, 21:40:19
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>exit manager</title>
    </head>
    <body>
         <%
             String exit=request.getParameter("exit");
             if(exit.equals("true")){
                 session.removeAttribute("managername");
                 response.sendRedirect("http://localhost:8080/Work/home.jsp");
             }
         %>
    </body>
</html>
