<%-- 
    Document   : selectClass
    Created on : 2015-11-21, 20:39:00
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
        <title>selectClass</title>
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
            table{
                margin:auto;
                margin-top:20px;
                padding:10px;
                border-collapse: collapse;
                border-spacing: 0;
                border-color:#ddd;
             }

        </style>
    </head>
    <body>
        <table border="1" >
            <tr>
                <td>班级编号</td>
                <td>开始日期</td>
                <td>结束日期</td>
                <td>教师名字</td>
            </tr>
            <%
                Connection con = DBConnection.getConnection();
                Statement st = con.createStatement();
                String sql = "select * from classroom";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getString("batchCode")%></td>
                <td><%=rs.getString("startDate")%></td>
                <td><%=rs.getString("endDate")%></td>
                <td><%=rs.getString("teatherName")%></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
