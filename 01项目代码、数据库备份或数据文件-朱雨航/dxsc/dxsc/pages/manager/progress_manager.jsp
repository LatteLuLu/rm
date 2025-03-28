<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>时间轴页面管理</title>

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

            $(".deleteProgress").click(function () {
                return confirm("确定要删除"+$(this).parent().parent().find("td:first")+"吗？");
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


<!--时间轴页面管理-->
    <h1 class="progress_manager_h1">时间轴页面管理</h1>
    <div class="progress_manager">
       <table>
           <thead>
               <tr>
                   <th>标题</th>
                   <th>日期</th>
                   <th>内容</th>
                   <th>图片名</th>
                   <th >操作</th>
               </tr>
           </thead>

           <tbody>
               <c:forEach items="${requestScope.items}" var="progress">
                   <tr>
                       <td>${progress.title}</td>
                       <td>${progress.titleTime}</td>
                       <td>
                           <div>${progress.body}</div>
                       </td>
                       <td>${progress.imgPath}</td>
                       <td><a href="progressServlet?action=queryProgressById&id=${progress.id}">修改</a> |
                           <a class="deleteProgress" href="progressServlet?action=deleteProgress&id=${progress.id}">删除</a></td>
                   </tr>
               </c:forEach>
           </tbody>



           <tfoot>
               <tr>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td><a href="pages/manager/progress_edit.jsp?method=saveProgress">添加节点</a></td>
               </tr>
           </tfoot>


       </table>
<%--分页模块，暂不使用，这里采用滚动轴页面--%>
        <%--<div id="page_nav">

                <a href="#">首页</a>
                <a href="#">上一页</a>
                <a href="#">【1】</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">下一页</a>
                <a href="#">末页</a>
            共10页，40条记录 到第
            <input value="1" name="pn" id="pn_input" type="text" style="width: 20px"/>页
            <input type="button" value="确定" id="pageSubmit">
        </div>--%>

    </div>


</body>
</html>