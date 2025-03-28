<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆成功</title>

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


            $(".insider_sign_table").find("p").eq(0).css("display","block");

            /*签到成功*/
            $(".sign_success").click(function () {


                // $(".insider_sign_table").children("p").eq(0).css("display","block");这个只能获取子代的p
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


<!--内部成员签到界面-->
    <h1 class="insider_sign_h1">登陆成功</h1>
    <div class="insider_sign">
        <form action="#" method="get">
            <table class="insider_sign_table">

                <tr>
                    <td  colspan="7" rowspan="6">
                        <p>登陆成功，<a href="pages/public/index.jsp">返回首页</a></p>
                    </td>
                </tr>
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