<%-- 
    Document   : header
    Created on : 2015-11-21, 17:05:07
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/home.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="header">
            <div class="logo_title">
                <p id="welcome_p"><marquee direction="right" onmouseover="this.stop()" onmouseout="this.start()">欢迎来到我们的在线考试系统!</marquee></p>
                <ul class="header_top">


                    <li><a href="home.jsp">返回首页</a></li>
                    <div class="split_line"></div>

                    <%
                        if (session.getAttribute("studentname") == null) {
                    %>
                    <li><a href="login.jsp">未登录</a></li>
                        <%
                        } else {
                        %>  

                    <li><a href="handlejsp/exitCheck.jsp?exit=true">退出</a></li>
                    <div class="split_line"></div>
                    <li style="color:#c91e26">您好！<%=session.getAttribute("studentname").toString()%>，欢迎登陆</li>

                    <%
                        }
                    %>

                </ul>

            </div>
            <div class="logo"><img src="images/logo.png"/></div>
            <div class="add">
                <div class="time"><img src="images/test.png"/><a class="add_a" href="time.jsp">考试时间</a></div>
                <div class="time"><img src="images/message.png"/><a class="add_a" href="message.jsp">个人信息</a></div>
            </div>
            <script src="js/myjs.js" type="text/javascript"></script>



        </div>
    </body>
</html>
