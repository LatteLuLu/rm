<%--
  Created by IntelliJ IDEA.
  User: LatteLuLu
  Date: 2022/3/24
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>


    <%--静态包含，头部链接文件--%>
    <%@ include file="/pages/common/head.jsp"%>

    <script type="text/javascript" >
        $.ajax({
            url:'/delivery/checkDeliveryExist.mvc',
            type:'post',
            dataType:'json',
            data:{"code":code,"itemNumber":itemNumber.join(","),"declareCode":declareCode, "itemStrategyId":itemStrategyId.join(","),"itemInfo":itemInfo.join(",")},
            success:function(result){

                if(result.hasgroup){
                    $list.fn.warnCheckEvent("发布的组合商品编码["+result.groupCode+"]中单品["+ result.groupItemList +"]未发布，请先发布！");
                    //绑定点击事件
                    $goods.fn.checkClick();
                    return ;
                }else if(result.singleList != null){
                    $list.fn.warnCheckEvent("商品编码【"+ result.singleList +"】已存在，请勿重复发布！");
                    $goods.fn.checkClick();
                    return ;
                }else {
                    //提交表单
                    $.load.form(id);
                }
            }
        });

    </script>


</head>
<body>
<h1>非常抱歉，您访问的页面不存在或已经删除</h1>
<a href="index.jsp">返回首页</a>
</body>
</html>
