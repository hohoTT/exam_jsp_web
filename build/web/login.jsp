<%-- 
    Document   : login
    Created on : 2015-11-21, 15:13:38
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>考生登录界面</title>
        <link href="css/login.css" type="text/css" rel="stylesheet"/>
        <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="js/jquery-ui.min.js" type="text/javascript"></script>
        <script type="text/javascript">
                  $(document).ready(function(){
			      $(".login_content").draggable({
			           revert:true
			      });
		  });
        </script>
    </head>
    <body>
       
        <div class="login_content">

            <div class="login_tab">
                <p class="login_p">考生登录窗口</p>
            </div>

            <div class="login_form">
                <form action="handlejsp/loginCheck.jsp" method="post" name="myform">
                    <div class="inner_box">
                        <img src="images/username.png">
                        <input type="text" name="name" class="login_input" placeholder="英文名称">
                    </div>

                    <div class="inner_box">
                        <img src="images/password.png">
                        <input type="password" name="id" class="login_input" placeholder="注册编号">
                    </div>

                    <a href="register.jsp" class="register_a">新用户注册</a>
                    <input type="submit" value="登录" class="submit_input">
                    <input type="reset" value="清空" class="submit_input">
                </form>
            </div>
        </div>
    </body>
</html>
