<%-- 
    Document   : selectGrade
    Created on : 2015-11-23, 20:19:08
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
        <title>查询成绩页面</title>
       
        <style type="text/css">
            p{
                margin:15px;
                font: 16px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
            }
        </style>
    </head>
    <body>
         
         <%
             
             if(session.getAttribute("studentname")==null){
                  response.sendRedirect("http://localhost:8080/Work/login.jsp");
             }
             else{
                  String name=session.getAttribute("studentname").toString();
                  Connection con=DBConnection.getConnection();
                  Statement st=con.createStatement();
                  String sql="select enName,studentId,grade from student where enName='"+name+"'";
                  ResultSet rs=st.executeQuery(sql);
                  while(rs.next()){  
          %>
               <div style="text-align:center">
                  <p>考生:<%=rs.getString("enName")%></p>
                  
                  <p>考生编号:<%=rs.getString("studentId")%></p>
               
                  <p>成绩:<%=rs.getString("grade")%></p>
                </div>
          <%
             }
             }
          %>
              
          
    </body>
</html>
