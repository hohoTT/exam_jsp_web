<%-- 
    Document   : insertClass
    Created on : 2015-11-21, 20:21:29
    Author     : 庞宇
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.work.util.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insertClass</title>
          <style type="text/css">
            *{
                margin:0;
                padding:0;
            }
            body{
                font: 13px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
                background:#f1f3f5;
            }
            a{
                text-decoration:none;
            }
            a:visited{
                color:#666;
            }

            a:hover{
                color:#c91e26;
            }
            a{
                margin-left:5px;
               
                letter-spacing:1pt;
            }
         
        </style>
    </head>
    <body>
         <%
            String batchCode=request.getParameter("code");
            String startDate=request.getParameter("start");
            String endDate=request.getParameter("end");
            String teatherName=request.getParameter("teather");
            
            Connection con=DBConnection.getConnection();
            String sql="insert into classroom values(?,?,?,?)";
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(1,batchCode);
            st.setString(2,startDate);
            st.setString(3,endDate);
            st.setString(4,teatherName);
            st.executeUpdate();
         %>
         <%="班级创建成功"%><a href="http://localhost:8080/Work/iframe/content.jsp">返回</a>
        
    </body>
</html>
