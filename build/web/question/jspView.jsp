<%-- 
    Document   : jspView
    Created on : 2015-11-29, 14:17:09
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
        <title>jspView</title>
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
         <form action="http://localhost:8080/Work/testHandle/jspCheck.jsp" method="post">
            <%
                String type = request.getParameter("type");
                Connection con = DBConnection.getConnection();
                Statement st = con.createStatement();
                String sql = "select * from question where questionType='" + type + "'";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
            %>
            <%=rs.getInt("questionId")%>.<%=rs.getString("questionContent")%>
            <br/>
            <input type="radio" name="<%=rs.getInt("questionId")%>" value="A"/>A.<%=rs.getString("optionA")%>
            <br/>
            <input type="radio" name="<%=rs.getInt("questionId")%>" value="B"/>B.<%=rs.getString("optionB")%>
            <br/>
            <input type="radio" name="<%=rs.getInt("questionId")%>" value="C"/>C.<%=rs.getString("optionC")%>
            <br/>
            <input type="radio" name="<%=rs.getInt("questionId")%>" value="D"/>D.<%=rs.getString("optionD")%>
            <hr/>
            <%
                }
            %>
           <input type="submit" value="提交试卷" style="padding:5px;font: 16px/1.6 tahoma,arial,sans-serif;color:#c91e26;"/>
        </form>
    </body>
</html>
