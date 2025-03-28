<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>财务报告页面</title>

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


            /*删除零件判断*/
            $(".deletePartItem").click(function () {
                return confirm("是否删除"+$(this).parent().parent().find("td:first").text());
            });

            /*零件类别修改——ajax*/






        });

        window.onload=function () {
            $.getJSON("http://localhost:8080/dxsc/insiderServlet","action=ajaxqueryCategory",function (data) {

                for(var category in data){
                    var $option = $("<option></option>");
                    $option.text(data[category]);
                    $option.attr("value",data[category]);
                    console.log($option);
                    $("select[name=categoryPartItem]").append($option);
                }

            });
        }


    </script>
    <style>


    </style>
</head>
<body>
<!--导航栏-->

    <%--静态包含，导航栏菜单--%>
    <%@ include file="/pages/common/menu.jsp"%>




<!--财务报告页面-->
    <h1 class="finance_h1">战队财务汇总</h1>
    <div class="finance">
        <div class="div_form">
            <form action="partServlet" method="post">
                <input type="hidden" name="action" value="queryPartItem">
                起始时间：<input type="date" name="timeBegin" value="${requestScope.search.timeBegin}"/>
                终止时间：<input type="date" name="timeEnd" value="${requestScope.search.timeEnd}" />
                类别：
                <select name="categoryPartItem">
                    <option value="----请选择----">----请选择----</option>

                </select>
                起始金额：<input type="text" name="priceBottom" value="${requestScope.search.priceBottom}"/>
                终止金额：<input type="text" name="priceTop" value="${requestScope.search.priceTop}"/>

                <input type="submit" value="查询">
            </form>
        </div>

        <table class="finance_table">
            <thead>
                <tr>
                    <th>名称</th>
                    <th>规格</th>
                    <th>数量</th>
                    <th>最近购买日期</th>
                    <th>类别</th>
                    <th>金额</th>
                    <c:if test="${sessionScope.user.permission == 'S' || sessionScope.user.permission == 'A'}">
                        <th >报销状态</th>
                        <th colspan="2">操作</th>
                    </c:if>
                    <c:if test="${sessionScope.user.permission == 'B' || sessionScope.user.permission == 'C'}">
                        <th colspan="2">报销状态</th>
                    </c:if>
                </tr>

            </thead>
            <tbody>
              <c:forEach items="${requestScope.items}" var="partItem">
                  <tr>
                      <td>${partItem.name}</td>
                      <td>${partItem.specification}</td>
                      <td>${partItem.count}</td>
                      <td>${partItem.buyTime}</td>
                      <td>${partItem.category}</td>
                      <td>${partItem.price}</td>
                      <c:if test="${sessionScope.user.permission == 'S' || sessionScope.user.permission == 'A'}">
                          <td >${partItem.reimbursement}</td>
                          <td><a href="partServlet?action=updatePartItem&id=${partItem.id}">修改</a> |
                          <a class="deletePartItem" href="partServlet?action=deletePartItem&id=${partItem.id}">删除</a></td>
                      </c:if>
                      <c:if test="${sessionScope.user.permission == 'B' || sessionScope.user.permission == 'C'}">
                          <td colspan="2">${partItem.reimbursement}</td>
                      </c:if>

                  </tr>

              </c:forEach>
            </tbody>



            <tfoot>
                <tr>
                    <td style="width: 603px">总金额：${requestScope.priceAll}元</td>
                    <c:if test="${sessionScope.user.permission == 'S' || sessionScope.user.permission == 'A'}">
                        <td><a href="pages/manager/finance_manager.jsp?action=savePartItem">添加</a></td>
                    </c:if>
                    <%--<c:if test="${sessionScope.user.permission == 'B' || sessionScope.user.permission == 'C'}">
                        <td><a href="pages/manager/finance_manager.jsp">添加</a></td>
                    </c:if>--%>

                </tr>
            </tfoot>

        </table>

<!--分页功能——给页面不采用此功能，使用滚动轴-->
<%--        <div id="page_nav">

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