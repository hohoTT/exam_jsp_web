<%-- 
    Document   : find_check
    Created on : 2015-12-6, 20:44:17
    Author     : 庞宇
--%>

<%@page import="java.sql.Statement"%>
<%@page import="com.work.util.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>find_check</title>
    </head>
    <body>
        <%
            String question = request.getParameter("question");
            String date = request.getParameter("answer");

            if (question.equals("f_question")) {
                    Connection con = DBConnection.getConnection();
                    Statement st = con.createStatement();
                    String sql = "select f_answer from manager where m_name='pangyu'";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {
                        if (rs.getDate("f_answer").toString().equals(date)) {
                            RequestDispatcher dis = application.getRequestDispatcher("/handlejsp/reset.jsp");
                            dis.forward(request, response);
                        } else {
                            RequestDispatcher dis = application.getRequestDispatcher("/handlejsp/find_pass.jsp");
                            dis.forward(request, response);
                        }
                    }
                }
            
             if (question.equals("s_question")) {
                    Connection con = DBConnection.getConnection();
                    Statement st = con.createStatement();
                    String sql = "select s_answer from manager where m_name='pangyu'";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {
                        if (rs.getDate("s_answer").toString().equals(date)) {
                            RequestDispatcher dis = application.getRequestDispatcher("/handlejsp/reset.jsp");
                            dis.forward(request, response);
                        } else {
                            RequestDispatcher dis = application.getRequestDispatcher("/handlejsp/find_pass.jsp");
                            dis.forward(request, response);
                        }
                    }
                }
          
          
        %>
    </body>
</html>
