<%-- 
    Document   : createClass
    Created on : 2015-11-21, 18:24:35
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
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
        <div class="content">
        <form action="http://localhost:8080/Work/handlejsp/insertClass.jsp" method="post">
            班级编号<input type="text" name="code"/>
            <br/>
            开始日期<input type="date" name="start"/>
            <br/>
            结束日期<input type="date" name="end"/>
            <br/>
            教师名字<input type="text" name="teather"/>
            <br/>
            <input type="submit" value="创建"/>
        </form>
            </div>
    </body>
</html>
