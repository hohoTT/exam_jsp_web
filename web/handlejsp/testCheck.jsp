<%-- 
    Document   : testCheck
    Created on : 2015-11-22, 19:25:30
    Author     : 庞宇
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.work.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>testCheck</title>
    </head>
    <body>
         <%
            
            if(session.getAttribute("studentname")==null){
                response.sendRedirect("http://localhost:8080/Work/login.jsp");
            }else{
                String name=session.getAttribute("studentname").toString();
                Connection con=DBConnection.getConnection();
                Statement st=con.createStatement();
                String sql="select grade from student where enName='"+name+"'";
                ResultSet rs=st.executeQuery(sql);
                if(rs.next()&&rs.getString("grade")!=null){
                    response.sendRedirect("http://localhost:8080/Work/againTest.jsp");
                }else{
                    response.sendRedirect("http://localhost:8080/Work/test.jsp");
                }
            }
            
         %>
    </body>
</html>
