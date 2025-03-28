<%--
  Created by IntelliJ IDEA.
  User: LatteLuLu
  Date: 2022/3/12
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav">
    <img class="img1" src="static/img/logo.png">
    <h1>鼎行.双创</h1>
    <div class="nav_ul">
        <ul>
            <li><a href="pages/public/index.jsp">首页</a></li>
            <li><a href="progressServlet?action=queryProgressAll&p=people">时间轴</a></li>
            <li><a href="pages/public/introduce.jsp">战队简介</a></li>
            <c:if test="${not empty sessionScope.user.permission}">
                <li><a href="partServlet?action=queryPartItemAll">财务报告</a></li>
            </c:if>
        </ul>
    </div>
    <div class="nav_right">
        <img class="img2" src="static/img/login_1.png">
        <div class="nav_ul2" style="z-index: 99; position: relative;">
            <ul>
                <c:if test="${empty sessionScope.user.permission}">
                    <li><a href="pages/public/login.jsp">登录</a></li>
                </c:if>
                <c:if test="${not empty sessionScope.user.permission}">
                    <c:choose>
                        <c:when test="${sessionScope.user.permission != 'S'}">
                            <li><a href="insiderServlet?action=loginout">注销</a></li>
                            <li><a href="pages/insider/insider_self.jsp">个人中心</a></li>
                            <li><a href="pages/insider/insider_sign.jsp">立即签到</a></li>
                        </c:when>
                        <c:when test="${sessionScope.user.permission == 'S'}">
                            <li><a href="insiderServlet?action=loginout">注销</a></li>
                            <li><a href="pages/insider/insider_self.jsp">个人中心</a></li>
                            <li><a href="managerServlet?action=pageSign">成员管理</a></li>
                        </c:when>
                    </c:choose>
                </c:if>
                <%--<li><a href="#">注册</a></li>
               <li><a href="pages/public/login.jsp">登录</a></li>
               <li><a href="pages/insider/insider_self.jsp">个人中心</a></li>
               <li><a href="pages/manager/insider.jsp">成员管理</a></li>--%>
            </ul>
        </div>
    </div>
</div>

