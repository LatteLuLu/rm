<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>时间轴信息编辑</title>

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

        })

    </script>
    <style>


    </style>
</head>
<body>
<!--导航栏-->

    <%--静态包含，导航栏菜单--%>
    <%@ include file="/pages/common/menu.jsp"%>


<!--管理员可见-->
    <div class="manager_edit">
        <a href="pages/manager/progress_manager.jsp">编辑</a>
    </div>



<!--时间轴信息编辑-->
    <h1 class="progress_edit_h1">时间轴信息编辑</h1>
    <form action="progressServlet" method="post">
        <input type="hidden" name="action" value="${param.method}">
        <input type="hidden" name="id" value="${requestScope.progress.id}">
        <table class="progress_edit">
            <tr>
                <td>标题</td>
                <td>
                    <input placeholder="标题" type="text" size="40px" name="title" value="${requestScope.progress.title}" />
                    <span>最多填20个字</span>
                </td>
            </tr>
            <tr>
                <td>日期</td>
                <td>
                    <input  type="date" size="20px" name="titleTime" value="${requestScope.progress.titleTime}"/>
                    <span>格式为"2022-03-04"</span>
                </td>
            </tr>
            <tr>
                <td>图片名称</td>
                <td>
                    <input placeholder="progress_1.jpg" type="text" size="20px" name="imgPath" value="${requestScope.progress.imgPath}"/>
                    <span>只需填写图片的名称即可（前提：图库中有张图片）</span>
                </td>
            </tr>
            <tr>
                <td>内容</td>
                <td>
                    <textarea placeholder="请填写该节点的正文内容" name="body"  >${requestScope.progress.body}</textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="提交"/>
                    <input type="reset" value="重置"/>
                </td>

            </tr>
        </table>
    </form>

</body>
</html>