<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>财务信息编辑</title>

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

            $("tr:even").children("td").addClass("directory");

        });

    </script>
    <style>

    </style>
</head>
<body>
<!--导航栏-->

    <%--静态包含，导航栏菜单--%>
    <%@ include file="/pages/common/menu.jsp"%>


<!--财务编辑页面-->
    <h1 class="finance_manager_h1">财务信息编辑</h1>
    <div class="finance_manager">
        <form action="partServlet" method="post">
            <input type="hidden" name="action" value="${param.action}">
            <input type="hidden" name="id" value="${requestScope.partItem.id}">
            <table class="finance_manager_table">
                <tr>
                    <td>名称</td>
                    <td>规格</td>
                    <td>数量</td>
                    <td>计量单位</td>
                    <td>类别</td>
                    <!--<td colspan="2">操作</td>-->

                </tr>
                <tr>
                    <td><input type="text" name="name" value="${requestScope.partItem.name}"/></td>
                    <td><input type="text" name="specification" value="${requestScope.partItem.specification}"/></td>
                    <td><input type="text" name="count" value="${requestScope.partItem.count}"/></td>
                    <td><input type="text" name="unit" value="${requestScope.partItem.unit}"/></td>
                    <td><input type="text" name="category" value="${requestScope.partItem.category}"/></td>

                </tr>
                <tr>
                    <td>购买时间</td>
                    <td>金额</td>
                    <td>报销状态</td>
                    <td>操作</td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="date" name="buyTime" value="${requestScope.partItem.buyTime}"/></td>
                    <td><input type="text" name="price" value="${requestScope.partItem.price}"/></td>
                    <td><input type="text" name="reimbursement" value="${requestScope.partItem.reimbursement}"/></td>
                    <td><input type="submit" value="提交"/></td>
                    <td></td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>

            </table>
        </form>

    </div>
</body>
</html>