<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>战队简介</title>

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


        });
    </script>
    <style>


    </style>
</head>
<body>
<!--导航栏-->

    <%--静态包含，导航栏菜单--%>
    <%@ include file="/pages/common/menu.jsp"%>



<!--管理员可见-->
<%--<div class="manager_edit">
    <a href="#">编辑</a>
</div>--%>




<!--公司简介-->
    <div class="introduce_header">

        <img src="static/img/introduce_1.jpg" alt="公司简介照片"/>
        <p>战队简介</p>

    </div>

    <div class="introduce_content">
        <br/>
        <h1>鼎行.双创</h1><span>河南科技大学.鼎行书院</span><span>日期：2022-3-1</span>
        <!--<hr width="90%" align="center" />-->
        <p align="center">———————————————————————————————————————————————————————————————————</p>
        <div class="content_in">
            <p>北京奔驰汽车有限公司（简称北京奔驰）成立于2005年8月8日，是北京汽车股份有限公司与戴姆勒股份公司、戴姆勒大中华区投资有限公司共同投资，集研发、发动机与整车生产、销售和售后服务为一体的中德合资企业。</p>

            <p>目前，北京奔驰业已成为戴姆勒全球同时拥有前驱车、后驱车、电动车三大车型平台，以及发动机与动力电池工厂的合资企业，并实现了发动机核心零部件与整机的出口，成为梅赛德斯-奔驰全球生产网络的重要组成部分。以此为依托，北京奔驰引入了梅赛德斯-奔驰八大主力车型：EQC纯电SUV、AMG A 35 L、长轴距A级轿车、长轴距C级车、长轴距E级车、长轴距GLC SUV、GLB SUV以及GLA SUV。</p>

            <p>同时，为保证用户的利益，北京奔驰还基于戴姆勒全球标准建立了质量中心，并根据戴姆勒德国的要求，以全球统一的标准和质量管理体系进行奔驰车辆的生产，确保驶出北京奔驰的每一辆新车均符合梅赛德斯-奔驰全球品质。</p>

            <p style="text-align: center;"><img class="content_img" alt="全球统一的标准和质量管理体系进行奔驰车辆的生产" src="static/img/introduce_2.jpg" />&nbsp;</p>

            <p>此外，作为首都汽车工业持续向高精尖方向转型升级的代表，北京奔驰还集世界先进的制造工艺与现代化的管理于一身，并以工匠精神为依托，将&ldquo;数字化、柔性化、高效、可持续&rdquo;全面贯彻到生产的每个环节，不断促进自身高质量发展，接连荣获&ldquo;全球卓越运营工厂&rdquo;、&ldquo;绿色示范工厂&rdquo;、&ldquo;北京市智能制造标杆企业&rdquo;及&ldquo;中德智能制造合作试点示范&rdquo;等荣誉称号，以实际行动推动高质量发展。</p>

            <p style="text-align: center;"><img class="content_img" alt="秉承“行则致极”的企业精神，未来的北京奔驰将继续以“奔驰车，中国造！”为使命" src="static/img/introduce_3.jpg" />&nbsp;</p>

            <p>秉承&ldquo;行则致极&rdquo;的企业精神，未来的北京奔驰将继续以&ldquo;奔驰车，中国造！&rdquo;为使命，以&ldquo;星徽闪耀@BBAC&rdquo;为愿景，向着成为&ldquo;走向世界的、国际化的中国高端汽车品牌标杆企业&ldquo;的目标不断前行！</p>

        </div>

    </div>


<%--页脚--%>

    <%--静态包含，页脚--%>
    <%@ include file="/pages/common/footer.jsp"%>

</body>
</html>