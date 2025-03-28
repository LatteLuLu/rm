<%--
  Created by IntelliJ IDEA.
  User: LatteLuLu
  Date: 2022/3/25
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册成功</title>

    <%--静态包含，头部链接文件--%>
    <%@ include file="/pages/common/head.jsp"%>

    <script type="text/javascript">
        $(function () {
            //鼠标触碰登陆时，显示登录，注册
            $(".nav_right").mouseover(function () {
                $(".nav_ul2").css("display","block");
            });
            //鼠标离开时，隐藏登录，注册
            $(".nav_right").mouseleave(function () {
                $(".nav_ul2").css("display","none");
            });

        });

    </script>
    <style>


    </style>
</head>
<body>
<!--导航栏-->

<%--静态包含，导航栏菜单--%>
<%@ include file="/pages/common/menu.jsp"%>

<%--成员注册--%>
<h1 class="insider_sign_h1">成员注册</h1>
<div class="insider_sign">
    <form action="#" method="get">
        <table class="insider_sign_table">

            <tr>
                <td colspan="7" rowspan="6">
                    <p>注册成功</p>
                </td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>

        </table>

    </form>

</div>
</body>
</html>
