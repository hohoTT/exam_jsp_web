<%-- 
    Document   : reset
    Created on : 2015-12-6, 20:56:36
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>重置密码页面</title>
        <link href="../css/login.css" type="text/css" rel="stylesheet"/>
        <script src="../js/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="../js/jquery-ui.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".login_content").draggable({
                    revert: true
                });
            });
        </script>
    </head>
    <body>

        <div class="login_content">

            <div class="login_tab">
                <p class="login_p">密码重置窗口</p>
            </div>

            <div class="login_form">
                <form action="reset_check.jsp" method="post">
                    <div class="inner_box">
                        <img src="../images/username.png">
                        <input type="text" name="password_one" class="login_input" placeholder="输入密码">
                    </div>

                    <div class="inner_box">
                        <img src="../images/password.png">
                        <input type="text" name="password_two" class="login_input" placeholder="确认密码">
                    </div>


                    <input type="submit" value="提交" class="submit_input">
                    <input type="reset" value="清空" class="submit_input">
                </form>
            </div>
        </div>
    </body>
</html>
