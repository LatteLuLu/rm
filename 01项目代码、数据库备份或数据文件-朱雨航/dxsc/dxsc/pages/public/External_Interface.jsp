<%--
  Created by IntelliJ IDEA.
  User: LatteLuLu
  Date: 2022/5/14
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>已接收到数据，内容是:</h1>

<table>
    <tbody>
        <tr>
            <td>id</td>
            <td><%=request.getAttribute("id")%></td>
        </tr>
        <tr>
            <td>签到</td>
            <td><%=request.getAttribute("signResult")%></td>
        </tr>
        <tr>
            <td>id</td>
            <td><%=request.getAttribute("record")%></td>
        </tr>

    </tbody>
</table>
</body>
</html>
