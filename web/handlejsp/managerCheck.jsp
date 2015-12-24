<%-- 
    Document   : managerCheck
    Created on : 2015-11-21, 18:10:51
    Author     : 庞宇
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.work.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>managerCheck</title>
    </head>
    <body>
          <%
              String username=request.getParameter("username");
              String password=request.getParameter("password");
              
              Connection con=DBConnection.getConnection();
              String sql="select * from manager where m_name=? and m_pass=?";
              PreparedStatement st=con.prepareStatement(sql);
              st.setString(1,username);
              st.setString(2, password);
              ResultSet rs=st.executeQuery();
              while(rs.next()){
                  session.setAttribute("managername",username);
                  response.sendRedirect("http://localhost:8080/Work/manager.jsp");
              }
              rs.close();
              st.close();
              con.close();
              
          %>
          <%="验证错误"%>
    </body>
</html>
