<%-- 
    Document   : updateTest
    Created on : 2015-11-29, 14:54:42
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>updateTest</title>
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
                margin:5px;
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
        <form action="../handlejsp/updateTime.jsp" method="post">
             更新的班级编号<input type="text" name="code"/>
             <br/>
             更新的日期<input type="date" name="time"/>
             <br/>
             更新的小时<input type="text" name="hour"/>
             <br/>
             <input type="submit" value="确认更新"/>
        </form>
    </body>
</html>
