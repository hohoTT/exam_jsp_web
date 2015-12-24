<%-- 
    Document   : testNav
    Created on : 2015-11-22, 21:22:55
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>test nav</title>
         <style type="text/css">
            *{
                margin:0;
                padding:0;
            }
            body{
                font: 13px/1.6 tahoma,arial,sans-serif;
            }
            a{
                color:#666;
                text-decoration:none;
            }
            a:visited{
                color:#666;
            }

            a:hover{
                color:#c91e26;
            }
            a{
                margin-left:50px;
               
                letter-spacing:1pt;
            }
            .navdiv{
                margin-top:20px;
            }
        </style>
    </head>
    <body bgcolor="#f1f3f5">
         <br/>
         <a href="http://localhost:8080/Work/question/htmlView.jsp?type=HTML" target="rightFrame">HTML考题</a>
         <br/>
         <br/>
         <a href="http://localhost:8080/Work/question/javaView.jsp?type=Java" target="rightFrame">Java考题</a>
         <br/>
         <br/>
         <a href="http://localhost:8080/Work/question/jspView.jsp?type=JSP" target="rightFrame">JSP考题</a>
         
    </body>
</html>
