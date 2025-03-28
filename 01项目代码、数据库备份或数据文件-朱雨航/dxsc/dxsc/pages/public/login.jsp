<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>

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


<!--用户登录界面-->

    <div class="login">
        <!--<h2 class="login_h1">登录</h2>
        <span>错误信息！</span>
        <hr/>-->
        <div class="login_div">
            <form action="insiderServlet" method="post">
                <input type="hidden" name="action" value="login">
                <div class="login_div_img">
                    <img alt="logo" src="static/img/logo.png"/>
                </div>
                <label>用户名</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="请输入用户名"
                       name="username"  value="${param.username}"/>
                <br/>
                <br/>
                <label>密码</label>
                <input type="password" autocomplete="off" tabindex=""  placeholder="请输入密码"
                       name="password" value=""/>
                <br/>
                <br/>
                <input type="submit" id="sub_btn" value="登录"/>

            </form>
            <span id="error">${requestScope.msg}</span>
        </div>


    </div>

</body>
</html>