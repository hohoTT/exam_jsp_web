<%-- 
    Document   : gradeCheck
    Created on : 2015-11-22, 19:41:18
    Author     : 庞宇
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.work.util.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>gradeCheck</title>
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
                border-collapse: collapse;
                border-spacing: 0;
                border-color:#ddd;
             }

        </style>
    </head>
    <body>
         <table border="1">
             <tr>
                 <td>总名次</td>
                 <td>学号</td>
                 <td>班级</td>
                 <td>英文名字</td>
                 <td>中文名字</td>
                 <td>成绩</td>
             </tr>
         <% 
            Connection con=DBConnection.getConnection();
            Statement st=con.createStatement();
            String sql="select * from student order by grade desc";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next()){
         %>
                <tr>
                    <td><%=rs.getRow()%></td>
                    <td><%=rs.getString("studentId")%></td>
                    <td><%=rs.getString("studentCode")%></td>
                    <td><%=rs.getString("enName")%></td>
                    <td><%=rs.getString("cnName")%></td>
                    <td><%=rs.getString("grade")%></td>
                </tr>
         <%
            }
         %>
         </table>
         <br>
         <c:forEach var="me" items="${fileNameMap}">
            <c:url value="/downLoadFileServlet" var="downurl">
                <c:param name="filename" value="${me.key}"></c:param>
            </c:url>
            ${me.value}<a href="${downurl}">下载</a>
            <br>
         </c:forEach>
    </body>
</html>
