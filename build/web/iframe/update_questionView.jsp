<%-- 
    Document   : update_questionView
    Created on : 2015-11-22, 20:25:11
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update_questionView</title>
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
        <h3>更新问题操作</h3>
        <form action="http://localhost:8080/Work/handlejsp/updateQuestion.jsp" method="post">
              问题编号<input type="text" name="id"/>
              <br/>
              问题类型<input type="text" name="type"/>
              <br/>
              问题内容<input type="text" name="content"/>
              <br/>
              选项A<input type="text" name="a"/>
              <br/>
              选项B<input type="text" name="b"/>
              <br>
              选项C<input type="text" name="c"/>
              <br/>
              选项D<input type="text" name="d"/>
              <br/>
              答案<input type="text" name="answer"/>
              <br>
              分数<input type="text" name="score"/>
              <br>
              <input type="submit" value="更新"/>
        </form>
    </body>
</html>
