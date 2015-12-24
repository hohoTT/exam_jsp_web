<%-- 
    Document   : add_studentView
    Created on : 2015-11-21, 21:08:35
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add Student</title>
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
        </style>
    </head>
    <body bgcolor="#f1f3f5">
        <form action="http://localhost:8080/Work/handlejsp/addStudent.jsp" method="post">
               考生编号<input type="text" name="id"/>
               <br/>
               班级编号<input type="text" name="code"/>
               <br/>
               英文名字<input type="text" name="en"/>
               <br/>
               中文名字<input type="text" name="cn"/>
               <br/>
               <input type="submit" value="添加"/>
        </form>
    </body>
</html>
