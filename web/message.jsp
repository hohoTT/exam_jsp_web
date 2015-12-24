<%-- 
    Document   : message
    Created on : 2015-11-29, 12:25:30
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
        <title>个人信息页面</title>
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
                      String sql="select * from student where enName='"+name+"'";
                      ResultSet rs=st.executeQuery(sql);
                      while(rs.next()){
               %>
               <div style="text-align:center">
                    <p>您的注册编号:<%=rs.getString("studentId")%></p>
                    <p>所在班级编号:<%=rs.getString("studentCode")%></p>
                    <p>您的英文名称:<%=rs.getString("enName")%></p>
                    <p>您的中文名称:<%=rs.getString("cnName")%></p>
               </div> 
               <%
                    }
                  }
               %>
      
    </body>
</html>
