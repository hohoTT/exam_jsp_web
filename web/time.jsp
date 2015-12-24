<%-- 
    Document   : time
    Created on : 2015-11-29, 12:27:21
    Author     : 庞宇
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.work.util.DBConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>考试时间页面</title>
    <link href="css/home.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
               <jsp:include page="header.jsp"/>
               <%
                   if(session.getAttribute("studentname")==null){
                        response.sendRedirect("home.jsp");
                   }else{
                      String name=session.getAttribute("studentname").toString();
                      Connection con=DBConnection.getConnection();
                      Statement st=con.createStatement();
                      String sql="select test.testTime,test.testHour,student.studentCode from test,student where student.enName='"+name+"' and student.studentCode=test.testCode";
                      ResultSet rs=st.executeQuery(sql);
                      while(rs.next()){
               %>
               <div style="text-align:center">
                   <p>您的考试日期:<%=rs.getDate("test.testTime")%></p>
                   <p>当天考试时间:<%=rs.getString("test.testHour")%></p>
                   <p>所在班级编号:<%=rs.getString("student.studentCode")%></p>
               </div>
               <%
                      }
                   }
               %>
    </body>
</html>
