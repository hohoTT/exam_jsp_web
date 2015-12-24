<%-- 
    Document   : updateQuestion
    Created on : 2015-11-22, 20:32:05
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
        <title>update question</title>
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
         <%
             String id=new String(request.getParameter("id").getBytes("ISO-8859-1"),"UTF-8");
             int questionid=Integer.parseInt(id);
             String type=new String(request.getParameter("type").getBytes("ISO-8859-1"),"UTF-8");
             String content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
             String a=new String(request.getParameter("a").getBytes("ISO-8859-1"),"UTF-8");
             String b=new String(request.getParameter("b").getBytes("ISO-8859-1"),"UTF-8");
             String c=new String(request.getParameter("c").getBytes("ISO-8859-1"),"UTF-8");
             String d=new String(request.getParameter("d").getBytes("ISO-8859-1"),"UTF-8");
             String answer=new String(request.getParameter("answer").getBytes("ISO-8859-1"),"UTF-8");
             String score=new String(request.getParameter("score").getBytes("ISO-8859-1"),"UTF-8");
             int questionscore=Integer.parseInt(score);
             
             Connection con=DBConnection.getConnection();
             String sql="update question set questionId='"+questionid+"',questionType='"+type+"',questionContent='"+content+"',optionA='"+a+"',optionB='"+b+"',optionC='"+c+"',"
                     + "optionD='"+d+"',answer='"+answer+"',score='"+questionscore+"'where questionId='"+questionid+"'";
             Statement st=con.createStatement();
             st.executeUpdate(sql);
             
             st.close();
             con.close();
             
         %>
         <%="更新成功"%><a href="http://localhost:8080/Work/iframe/content.jsp">返回</a>
    </body>
</html>
