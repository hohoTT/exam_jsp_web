<%-- 
    Document   : updateTime
    Created on : 2015-11-29, 15:00:56
    Author     : 庞宇
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.work.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>updateTime</title>
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
                color:#666;
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
    <body bgcolor="#f1f3f5">
        <%
            request.setCharacterEncoding("UTF-8");
            String code = request.getParameter("code");
            String time = request.getParameter("time");
            String hour = request.getParameter("hour");

            Connection con = DBConnection.getConnection();
            String sql = "update test set testTime=?,testHour=? where testCode=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, time);
            st.setString(2, hour);
            st.setString(3, code);
            st.executeUpdate();

        %>
        <%="更新成功"%><a href="content.jsp">返回</a>

    </body>
</html>
