<%-- 
    Document   : home
    Created on : 2015-11-21, 17:07:19
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>在线考试系统主页面</title>
        <link href="css/home.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
               <jsp:include page="header.jsp"/>
               <div class="content">
                     <div class="content_box"><a href="login.jsp"><p class="content_title">考生登录入口</p></a></div>
                     <div class="content_box"><a href="register.jsp"><p class="content_title">在线注册</p></a></div>
                     <div class="content_box"><a href="handlejsp/testCheck.jsp"><p class="content_title">开始考试</p></a></div>
                     <div class="content_box"><a href="handlejsp/selectGrade.jsp"><p class="content_title">查询成绩</p></a></div>
                     <div class="content_box"><a href="managerLogin.jsp"><p class="content_title">管理员登录入口</p></a></div>
                     
                </div>
                <div class="footer"></div>
                <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
                <script src="js/box.js" type="text/javascript"></script>
                
    </body>
</html>
