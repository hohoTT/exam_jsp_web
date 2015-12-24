<%--
    Document   : manager
    Created on : 2015-11-21, 18:19:47
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>管理员界面</title>
        
    </head>
    <body>
         <%
            if(session.getAttribute("managername")==null){
                response.sendRedirect("http://localhost:8080/Work/managerLogin.jsp");
            }
         %>
        
         <iframe  src="iframe/title.jsp"name="headerFrame" width="91%" height="100px" style="border:0" scrolling="no"></iframe>
         <iframe src="iframe/nav.jsp" name="navFrame" width="15%" height="500px" style="border:0"></iframe>
         <iframe  src="iframe/content.jsp" name="contentFrame" width="75%" height="500px" style="border:0"></iframe>
    </body>
</html>
