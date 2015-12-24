<%-- 
    Document   : test
    Created on : 2015-11-21, 17:14:44
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>考试页面</title>
        <link href="css/home.css" type="text/css" rel="stylesheet"/>
        <style type="text/css">
            .iframediv{
                position:relative;
                top:-137px;

            }
        </style>
    </head>
    <body>
        <%

            if (session.getAttribute("studentname") == null) {
                response.sendRedirect("http://localhost:8080/Work/login.jsp");
            }

        %>
        <jsp:include page="header.jsp"/>
        <div id="demo">
            <div id="indemo">
                <div id="demo1">
                    <a href="#"><img src="images/demo01.png"/></a>
                    <a href="#"><img src="images/demo02.png"/></a>
                    <a href="#"><img src="images/demo03.png"/></a>
                    <a href="#"><img src="images/demo05.png"/></a>
                    <a href="#"><img src="images/demo06.png"/></a>
                </div>
                <div id="demo2"></div>
            </div>
        </div>
        <script src="js/myjs.js" type="text/javascript"></script>
        <div class="iframediv">
            <iframe  src="iframe/testNav.jsp"name="leftFrame" width="15%" height="500px" style="border:0"></iframe>
            <iframe  src="iframe/testContent.jsp"name="rightFrame" width="80%" height="500px" style="border:0"></iframe>
        </div>

    </body>
</html>
