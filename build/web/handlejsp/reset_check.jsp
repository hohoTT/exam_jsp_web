<%-- 
    Document   : reset_check
    Created on : 2015-12-6, 21:15:15
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
        <title>reset check</title>
        <style>
            *{
                margin:0;
                padding:0;
            }
            body{
                font: 13px/1.6 tahoma,arial,sans-serif;
            }
            p{
                font: 16px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
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
        </style>
    </head>
    <body style="text-align:center">
        <%
            String password_one = request.getParameter("password_one");
            String password_two = request.getParameter("password_two");

            if (password_one.equals(password_two)) {
                Connection con = DBConnection.getConnection();
                Statement st = con.createStatement();
                String sql = "update manager set m_pass='" + password_one + "'";
                st.executeUpdate(sql);
            } else {
                RequestDispatcher dis = application.getRequestDispatcher("/handlejsp/reset.jsp");
                dis.forward(request, response);
            }
        %>
        <p><%="重置成功"%></p><a href="http://localhost:8080/Work/managerLogin.jsp"><%="返回"%></a>
    </body>
</html>
