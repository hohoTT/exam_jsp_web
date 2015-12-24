<%-- 
    Document   : nav
    Created on : 2015-11-21, 19:44:32
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>nav</title>
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
        <div class="navdiv">
            <a href="createView.jsp" target="contentFrame">创建班级</a>
            <br/>
            <a href="http://localhost:8080/Work/handlejsp/selectClass.jsp" target="contentFrame">查看班级信息</a>
            <br/>
            <a href="deleteView.jsp" target="contentFrame">删除班级</a>
            <br/>
            <br/>
            <a href="add_studentView.jsp" target="contentFrame">添加学生信息</a>
            <br/>
            <a href="delete_studentView.jsp" target="contentFrame">删除学生信息</a>
            <br/>
            <br/>
            <a href="http://localhost:8080/Work/fileHandleServlet" target="contentFrame">查看学生成绩</a>
            <br/>
            <a href="classView.jsp" target="contentFrame">查看班级成绩</a>
            <br/>
            <br/>
            <a href="http://localhost:8080/Work/handlejsp/questionCheck.jsp" target="contentFrame">查看问题信息</a>
            <br/>
            <a href="update_questionView.jsp"  target="contentFrame">更新问题信息</a>
            <br/>
            <br/>
            <a href="../handlejsp/testTime.jsp" target="contentFrame">查看考试安排</a>
            <br/>
            <a href="updateTest.jsp" target="contentFrame">更新考试时间</a>
            <br/>
            <br/>
            <a href="http://localhost:8080/Work/handlejsp/managerExit.jsp?exit=true" target="_parent">退出系统</a>
        </div>
    </body>
</html>
