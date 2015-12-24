<%-- 
    Document   : classView
    Created on : 2015-11-23, 19:54:00
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>classView</title>
        <style type="text/css">
            *{
                margin:0;
                padding:0;
            }
            body{
                font: 13px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
            }
            .content{
                margin-left:100px;
                margin-top:50px;
            }
            input{
                margin:15px;
                padding:6px;
                width:180px;
            }
             .delete_title{
                
                margin:15px;
                font: 16px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
            }
        </style>
    </head>
    <body bgcolor="#f1f3f5">
        <p class="delete_title">输入班级编号</p>
        <form action="http://localhost:8080/Work/handlejsp/classCheck.jsp" method="post">
              <input type="text" name="code"/>
              <br/>
              <input type="submit" value="查询"/>
        </form>
    </body>
</html>
