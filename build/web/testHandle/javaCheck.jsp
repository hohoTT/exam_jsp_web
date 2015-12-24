<%-- 
    Document   : javaCheck
    Created on : 2015-11-23, 19:11:53
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
          
            String str11=request.getParameter("11");
            String str12=request.getParameter("12");
            String str13=request.getParameter("13");
            String str14=request.getParameter("14");
            String str15=request.getParameter("15");
            String str16=request.getParameter("16");
            String str17=request.getParameter("17");
            String str18=request.getParameter("18");
            String str19=request.getParameter("19");
            String str20=request.getParameter("20");
            String[] str={str11,str12,str13,str14,str15,str16,str17,str18,str19,str20};
            
           Connection con=DBConnection.getConnection();
           Statement st=con.createStatement();
           String sql="select answer from question where questionType='Java'";
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

