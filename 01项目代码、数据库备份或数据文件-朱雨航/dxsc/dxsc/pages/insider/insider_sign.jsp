<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>成员签到</title>

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

            /*签到成功*/
            /*$(".sign_success").click(function () {

                $(".insider_sign_table").find("p").eq(0).css("display","block");
                // $(".insider_sign_table").children("p").eq(0).css("display","block");这个只能获取子代的p
            });*/

            $(".sign_success").click(function () {
                $.getJSON("http://localhost:8080/dxsc/insiderServlet","action=sign&"+$("#form1").serialize(),function (data) {
                    if(data){
                        $("#sign_p").text("签到成功");
                        console.log($("#sign_p").text());
                        alert("登陆成功");
                    }else{
                        $("#sign_p").text("签到失败");
                        alert("登陆失败");
                    }
                });
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
    <h1 class="insider_sign_h1">成员签到</h1>
    <div class="insider_sign">
        <form id="form1" action="" method="get">
            <input type="hidden" name="id" value="${sessionScope.user.id}">
            <table class="insider_sign_table">

                <tr>
                    <td colspan="7" rowspan="6">
                        <p id="sign_p">签到</p>
                    </td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td colspan="7">
                        <input type="submit" class="sign_success" value="立即签到"/>
                    </td>
                </tr>

            </table>

        </form>

    </div>
</body>
</html>