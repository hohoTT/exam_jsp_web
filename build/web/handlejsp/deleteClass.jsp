<%-- 
    Document   : deleteClass
    Created on : 2015-11-21, 20:57:24
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
        <title>deleteClass</title>
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
           
           Connection con=DBConnection.getConnection();
           Statement st=con.createStatement();
           String sql="delete from classroom where batchCode='"+batchCode+"'";
           st.executeUpdate(sql);
           
           st.close();
           con.close();
        %>
        <%="删除成功"%><a href="http://localhost:8080/Work/iframe/content.jsp">返回</a>
    </body>
</html>
