<%--
  Created by IntelliJ IDEA.
  User: LatteLuLu
  Date: 2022/3/16
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div id="page_nav">

    <c:if test="${requestScope.page.pageNo > 1}">
        <a href="${requestScope.page.url}&pageNo=1">首页</a>
        <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo - 1}">上一页</a>
    </c:if>

    <%--自己写的，有些小缺陷
    <c:choose>
        <c:when test="${requestScope.page.pageTotal <= 5}">
            <c:forEach begin="1" end="${requestScope.page.pageNo}" var="i">
                <c:if test="${requestScope.page.pageNo == i}">
                    <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo}">【i】</a>
                </c:if>
                <c:if test="${requestScope.page.pageNo != i}">
                    <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                </c:if>

            </c:forEach>
        </c:when>

        <c:when test="${requestScope.page.pageNo >= requestScope.page.pageTotal - 2}">
            <c:forEach begin="${requestScope.page.pageTotal - 4}" end="${requestScope.page.pageTotal}" var="i">
                <c:if test="${requestScope.page.pageNo == i}">
                    <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo}">【i】</a>
                </c:if>
                <c:if test="${requestScope.page.pageNo != i}">
                    <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                </c:if>
            </c:forEach>
        </c:when>

        <c:otherwise>
            <c:forEach begin="${requestScope.page.pageNo - 2}" end="${requestScope.page.pageNo + 2}" var="i">
                <c:if test="${requestScope.page.pageNo == i}">
                    <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo}">【i】</a>
                </c:if>
                <c:if test="${requestScope.page.pageNo != i}">
                    <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
                </c:if>
            </c:forEach>
        </c:otherwise>
    </c:choose>--%>

    <c:choose>
        <c:when test="${requestScope.page.pageTotal <= 5}">
            <c:set scope="request" var="begin" value="1"></c:set>
            <c:set scope="request" var="end" value="${requestScope.page.pageTotal}"></c:set>
        </c:when>
        <c:when test="${requestScope.page.pageNo <= 3}">
            <c:set scope="request" var="begin" value="1"></c:set>
            <c:set scope="request" var="end" value="5"></c:set>
        </c:when>
        <c:when test="${requestScope.page.pageNo >= requestScope.page.pageTotal - 2}">
            <c:set var="begin" value="${requestScope.page.pageTotal - 4}"></c:set>
            <c:set var="end" value="${requestScope.page.pageTotal}"></c:set>
        </c:when>
        <c:otherwise>
            <c:set var="begin" value="${requestScope.page.pageNo - 2}"></c:set>
            <c:set var="end" value="${requestScope.page.pageNo + 2}"></c:set>
        </c:otherwise>

    </c:choose>

    <c:forEach begin="${begin}" end="${end}" var="i">
        <c:if test="${i == requestScope.page.pageNo}">
            【${i}】
        </c:if>
        <c:if test="${i != requestScope.page.pageNo}">
            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
        </c:if>
    </c:forEach>


    <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
    <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo + 1}">下一页</a>
    <a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}">末页</a>
    </c:if>

    共${requestScope.page.pageTotal}页，${requestScope.page.pageCount}条记录 到第
    <input value="${requestScope.page.pageNo}" name="pn" id="pn_input" type="text" style="width: 20px" />页
    <input type="button" value="确定" id="pageSubmit">
</div>
