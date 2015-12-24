<%-- 
    Document   : deleteStudent
    Created on : 2015-11-21, 21:30:21
    Author     : 庞宇
--%>

<%@page import="java.sql.Statement"%>
<%@page import="com.work.util.DBConnection"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deleteStudent</title>
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
            String studentId=request.getParameter("id");
            
            Connection con=DBConnection.getConnection();
            String sql="delete from student where studentId='"+studentId+"'";
            Statement st=con.createStatement();
            st.executeUpdate(sql);
            
            st.close();
            con.close();
         %>
         <%="删除成功"%><a href="http://localhost:8080/Work/iframe/content.jsp">返回</a>
    </body>
</html>
