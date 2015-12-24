<%-- 
    Document   : delete_studentView
    Created on : 2015-11-21, 21:28:48
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete student</title>
         <style type="text/css">
            *{
                margin:0;
                padding:0;
            }
            body{
                font: 13px/1.6 tahoma,arial,sans-serif;
                color:#c91e26;
                background:#f1f3f5;
            }
              a{
                text-decoration:none;
            }
            a:visited{
                color:#666;
            }

            a:hover{
                color:#c91e26;
            }
            a{
                margin-left:5px;
               
                letter-spacing:1pt;
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
        <p class="delete_title">输入删除考生编号</p>
        <form action="http://localhost:8080/Work/handlejsp/deleteStudent.jsp" method="post">
              <input type="text" name="id"/>
              <br/>
              <input type="submit" value="删除"/>
        </form>
    </body>
</html>
