<%-- 
    Document   : register
    Created on : 2015-11-21, 14:51:23
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>考生在线注册页面</title>
        <link href="css/register.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>


        <div class="res_content">
            <div class="res_header">
                <p class="header_p">考生在线注册</p>

            </div>

            <div class="res_form">
                <form action="handlejsp/stu_register.jsp" method="post" name="res_form">
                    <div class="input_box">
                        <label class="form_label"> 注册编号</label>
                        <input type="text" name="id" class="form_input">
                    </div>

                    <div class="input_box">
                        <label class="form_label">班级编号</label>
                        <input type="radio" name="code" class="form_radio" value="A10">A10
                        <input type="radio" name="code" class="form_radio" value="A11">A11
                    </div>

                    <div class="input_box">
                        <label class="form_label">英文名称</label>
                        <input type="text" name="enname" class="form_input">
                    </div>

                    <div class="input_box">
                        <label class="form_label">中文名称</label>
                        <input type="text" name="cnname" class="form_input">
                    </div>

                    <div class="input_box">
                        <input type="submit" class="res_submit" value="注册"/>
                    </div>


                </form>
            </div>
            <script type="text/javascript" class="autoinsert" src="js/jquery-1.2.6.min.js"></script> 
            <script src="js/snowfall.jquery.js"></script> 

            <script>
                        $(document).snowfall('clear');
                        $(document).snowfall({
                            image: "images/xuehua.png",
                            flakeCount: 8,
                            minSize: 5,
                            maxSize: 22
                        });
            </script>
    </body>
</html>
