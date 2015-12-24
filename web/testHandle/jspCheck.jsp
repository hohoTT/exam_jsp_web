<%-- 
    Document   : jspCheck
    Created on : 2015-11-29, 14:20:21
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
        <title>jspCheck</title>
        <style type="text/css">
             *{
                margin:0;
                padding:0;
            }
            body{
                font: 16px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
                background:#f1f3f5;
            }
       </style>
    </head>
    <body>
          <%
            int studentscore=0;
            String[] str= new String[10];
            str[0]=request.getParameter("21");
            str[1]=request.getParameter("22");
            str[2]=request.getParameter("23");
            str[3]=request.getParameter("24");
            str[4]=request.getParameter("25");
            str[5]=request.getParameter("26");
            str[6]=request.getParameter("27");
            str[7]=request.getParameter("28");
            str[8]=request.getParameter("29");
            str[9]=request.getParameter("30");
            
            
           Connection con=DBConnection.getConnection();
           Statement st=con.createStatement();
           String sql="select answer from question where questionType='JSP'";
           ResultSet rs=st.executeQuery(sql);
           for(int i=1;i<=10;i++){
               rs.absolute(i);
               if(rs.getString("answer").equals(str[i-1])){
                   studentscore=studentscore+3;
               }else{
                   studentscore=studentscore+0;
               }
           }
         %>
         
         您测试分数为<%=studentscore%>分
         
         <%
            String enname=session.getAttribute("studentname").toString();
            String sql1="update student set grade='"+studentscore+"' where enName='"+enname+"'";
            st.executeUpdate(sql1);
         %>
           
    </body>
</html>
