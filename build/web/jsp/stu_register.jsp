

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.work.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             String studentId=request.getParameter("id");
             Connection con=DBConnection.getConnection();
             Statement st=con.createStatement();
             
         %>
         <%=studentId%>
    </body>
</html>
