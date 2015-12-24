<%-- 
    Document   : htmlCheck
    Created on : 2015-11-22, 21:52:43
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
        <title>htmlCheck</title>
         <title>htmlView</title>
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
          
            String str1=request.getParameter("1");
            String str2=request.getParameter("2");
            String str3=request.getParameter("3");
            String str4=request.getParameter("4");
            String str5=request.getParameter("5");
            String str6=request.getParameter("6");
            String str7=request.getParameter("7");
            String str8=request.getParameter("8");
            String str9=request.getParameter("9");
            String str10=request.getParameter("10");
            String[] str={str1,str2,str3,str4,str5,str6,str7,str8,str9,str10};
            
           Connection con=DBConnection.getConnection();
           Statement st=con.createStatement();
           String sql="select answer from question where questionType='HTML'";
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
