<%-- 
    Document   : questionCheck
    Created on : 2015-11-22, 20:12:00
    Author     : 庞宇
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.work.util.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>questionCheck</title>
        <style type="text/css">
            *{
                margin:0;
                padding:0;
            }
            body{
                font: 16px/1.6 tahoma,arial,sans-serif;
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
            table{
                margin:auto;
                margin-top:20px;
                border-collapse: collapse;
                border-spacing: 0;
                border-color:#ddd;
            }

        </style>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>问题编号</td>
                <td>问题类型</td>
                <td>问题内容</td>
                <td>选项A</td>
                <td>选项B</td>
                <td>选项C</td>
                <td>选项D</td>
                <td>答案</td>
                <td>分数</td>
            </tr>
            <%
                int intPageSize = 3; //一页显示的记录数
                int intRowCount; //记录总数
                int intPageCount;//总页数
                int intPage;     //待显示的页数

                String strPage;
                int i;

                strPage = request.getParameter("page");//取得待显示的页码

                if (strPage == null) {
                    intPage = 1;
                } else {
                    intPage = Integer.parseInt(strPage);
                    if (intPage < 1) {
                        intPage = 1;
                    }
                }

                Connection con = DBConnection.getConnection();
                Statement st = con.createStatement();
                String sql = "select * from question";
                ResultSet rs = st.executeQuery(sql);

                rs.last();                             //光标指向查询结果集中最后一条记录
                intRowCount = rs.getRow();               //获取记录总数
                intPageCount = (intRowCount + intPageSize - 1) / intPageSize;//计算总页数
                if (intPage > intPageCount) {
                    intPage = intPageCount;
                }
                if (intPageCount > 0) {
                    rs.absolute((intPage - 1) * intPageSize + 1);
                    i = 0;
                    while (i < intPageSize && !rs.isAfterLast()) {
            %>
            <tr>
                <td><%=rs.getInt("questionId")%></td>
                <td><%=rs.getString("questionType")%></td>
                <td><%=rs.getString("questionContent")%></td>
                <td><%=rs.getString("optionA")%></td>
                <td><%=rs.getString("optionB")%></td>
                <td><%=rs.getString("optionC")%></td>
                <td><%=rs.getString("optionD")%></td>
                <td><%=rs.getString("answer")%></td>
                <td><%=rs.getInt("score")%></td>
            </tr>
            <%
                        rs.next();
                        i++;
                    }
                }
            %>
        </table>
        <div align="center">
            第<%=intPage%>页 共<%=intPageCount%>页

            <% if (intPage < intPageCount) {%>
            <a href="questionCheck.jsp?page=<%=intPage + 1%>">下一页</a>

            <%
                }
                if (intPage > 1) {
            %>
            <a href="questionCheck.jsp?page=<%=intPage - 1%>">上一页</a>
            <a href="questionCheck.jsp?page=1">首页</a>
            <%
                }
                rs.close();
                st.close();
                con.close();
            %>
        </div>
    </body>
</html>
