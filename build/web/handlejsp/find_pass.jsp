<%-- 
    Document   : find_pass
    Created on : 2015-12-6, 20:02:42
    Author     : 庞宇
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.work.util.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>找回密码页面</title>
        <link href="../css/login.css" type="text/css" rel="stylesheet"/>
        <script src="../js/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="../js/jquery-ui.min.js" type="text/javascript"></script>
        <script type="text/javascript">
                  $(document).ready(function(){
			      $(".login_content").draggable({
			           revert:true
			      });
		  });
        </script>
    </head>
    <body>
        <%
                 Connection con=DBConnection.getConnection();
                 Statement st= con.createStatement();
                 String sql="select f_question,s_question from manager where m_name='pangyu'";
                 ResultSet rs=st.executeQuery(sql);
                 while(rs.next()){
        %>
        <div class="login_content">

            <div class="login_tab">
                <p class="login_p">密保信息验证</p>
            </div>

            <div class="login_form">
                <form action="find_check.jsp" method="post">
                    <div class="inner_box">
                        <img src="../images/username.png">
                        <select name="question" class="login_input">
                                <option value="f_question"><%=rs.getString("f_question")%></option>
                                <option value="s_question"><%=rs.getString("s_question")%></option>
                        </select>
                    </div>

                    <div class="inner_box">
                        <img src="../images/password.png">
                        <input type="date" name="answer" class="login_input" placeholder="输入问题答案">
                    </div>

                    
                    <input type="submit" value="验证" class="submit_input">
                    <input type="reset" value="清空" class="submit_input">
                </form>
            </div>
        </div>
        <%}%>
    </body>
</html>
