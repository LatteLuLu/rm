<%--
  Created by IntelliJ IDEA.
  User: LatteLuLu
  Date: 2022/3/12
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basrPath = request.getScheme()
            +"://"
            +request.getServerName()
            +":"
            +request.getServerPort()
            +request.getContextPath()
            +"/";
%>

<%--base标签，css样式，jQuery文件--%>
<!-- 写base标签，永远固定相对路径跳转的结果 -->
<base href="<%=basrPath%>"/>
<link type="text/css" rel="stylesheet" href="static/css/style.css"/>
<script type="text/javascript" src="script/jquery-1.7.2.min.js"></script>