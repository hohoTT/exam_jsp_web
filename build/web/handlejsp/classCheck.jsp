<%-- 
    Document   : classCheck
    Created on : 2015-11-23, 19:52:00
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
        <title>classCheck</title>
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
                border-color:#ddd;
            }

        </style>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>班级名次</td>
                <td>英文名字</td>
                <td>考生编号</td>
                <td>考试成绩</td>
            </tr>
            <%
                String classcode = request.getParameter("code");
                Connection con = DBConnection.getConnection();
                Statement st = con.createStatement();
                String sql = "select enName,studentId,grade from student where studentCode='" + classcode + "' order by grade desc";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getRow()%></td>
                <td><%=rs.getString("enName")%></td>
                <td><%=rs.getString("studentId")%></td>
                <td><%=rs.getString("grade")%></td>
            </tr>
            <%
                }
            %>
            <br/>
            <a href="http://localhost:8080/Work/iframe/classView.jsp">返回</a>
        </table>
    </body>
</html>
