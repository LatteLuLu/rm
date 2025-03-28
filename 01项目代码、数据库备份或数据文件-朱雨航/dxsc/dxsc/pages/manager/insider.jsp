<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>成员信息汇总</title>

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

            /*var power = {
                "S":"超级管理",
                "A":"普通管理",
                "B":"内部成员",
                "C":"游客"
            }

            $(".power").val(power[$(".power").val()]);*/

            $("#deleteInsider").click(function () {

                return confirm("是否删除"+$(this).parent().parent().find("td:eq(1)").text());

            });

            $("#pageSubmit").click(function () {
                var pageNo = parseInt($("#pn_input").val());
                location.href = "${requestScope.bashPath}${requestScope.page.url}&pageNo="+pageNo;
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




<!--所有成员显示-->
    <h1 class="insider_h1">所有成员信息显示</h1>
    <div class="insider">
        <table class="insider_table">
            <tr>
                <td>工号</td>
                <td>姓名</td>
                <td>性别</td>
                <td>组别</td>
                <td>角色</td>
                <td>签到</td>
                <td>操作</td>
            </tr>

            <c:forEach items="${requestScope.page.items}" var="sign">
                <tr>
                    <td>${sign.id}</td>
                    <td>${sign.cname}</td>
                    <td>${sign.sex}</td>
                    <td>${sign.group}</td>
                    <td class="power">${sign.power}</td>
                    <td>${sign.sign}</td>
                    <td><a href="managerServlet?action=queryInsider&id=${sign.id}">修改</a> |
                        <a id="deleteInsider" href="managerServlet?action=deleteInsider&id=${sign.id}">删除</a></td>
                </tr>
            </c:forEach>



            <tr>
                <td colspan="6">权限：S-超级管理员，A-普通管理，B-内部成员,C-游客</td>

                <td><a href="pages/manager/insider_add.jsp">添加成员</a></td>
            </tr>
        </table>
<!--分页功能-->

        <%--静态包含，分页模块--%>
        <%@ include file="/pages/common/page_nav.jsp"%>

    </div>

</body>
</html>