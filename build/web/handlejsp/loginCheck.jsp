<%-- 
    Document   : loginCheck
    Created on : 2015-11-21, 15:15:15
    Author     : 庞宇
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.work.util.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>loginCheck</title>
        <style type="text/css">
            p{
                margin:15px;
                font: 16px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
            }
        </style>
    </head>
    <body bgcolor="#f1f3f5">
          <%
              //获得请求参数
              String studentid=request.getParameter("id");
              String enname=request.getParameter("name");
              
              if(studentid.equals("")||enname.equals("")){
                  response.sendRedirect("http://localhost:8080/Work/login.jsp");
              }
                  Connection con=DBConnection.getConnection();
                  Statement st=con.createStatement();
                  String sql1="select * from student where studentId='"+studentid+"'";
                  ResultSet rs=st.executeQuery(sql1);
                   if(rs.next()){
                       String sql2="select * from student where enName='"+enname+"'";
                       rs=st.executeQuery(sql2);
                       if(rs.next()){
                           session.setAttribute("studentname",enname);
                           response.sendRedirect("http://localhost:8080/Work/home.jsp");
                       }
                       else{
                           response.sendRedirect("http://localhost:8080/Work/login.jsp");
                       }
                   }
                   rs.close();
                   st.close();
                   con.close();
           %>
           
           <p><%="验证错误"%><a href="http://localhost:8080/Work/login.jsp">返回</a></p>
           
         
    </body>
</html>
