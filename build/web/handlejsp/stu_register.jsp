

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.work.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style type="text/css">
            p{
                margin:15px;
                font: 16px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
            }
        </style>
    </head>
    <body>
         <% 
             //获得请求参数
             String studentId=request.getParameter("id");
             String studentCode=request.getParameter("code");
             String enName=request.getParameter("enname");
             String cnNmae=new String(request.getParameter("cnname").getBytes("ISO-8859-1"),"UTF-8");
             
             //连接数据库,执行插入语句
             Connection con=DBConnection.getConnection();
             Statement st=con.createStatement();
             String sql="insert into student values('"+studentId+"','"+studentCode+"','"+enName+"','"+cnNmae+"',null)";
             st.executeUpdate(sql);
             
             //关闭连接.释放内存资源
             st.close();
             con.close();
             
             
             
         %>
           <p><%="注册成功"%><a href="http://localhost:8080/Work/login.jsp">返回</a></p>
            
    </body>
</html>
