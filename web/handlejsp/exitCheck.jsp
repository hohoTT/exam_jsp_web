<%-- 
    Document   : exitCheck
    Created on : 2015-11-21, 20:08:11
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eixtCheck</title>
    </head>
    <body>
        <%
           String e=request.getParameter("exit");
           if(e.equals("true")){
               session.removeAttribute("studentname");
               response.sendRedirect("http://localhost:8080/Work/home.jsp");
           }
        %>
    </body>
</html>
