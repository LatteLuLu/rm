<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>战队进度</title>

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

            // var width1 = $(".progress_ul>li>div").width();
            // var height1 = $(".progress_ul>li>div").height();
            // var width2 = $(".progress_ul>li>div").width() + 65;
            // var height2 = $(".progress_ul>li>div").height() + 15;
            var width1 = 578;
            var height1 = $(".progress_ul>li>div").height();
            var width2 = 578 + 65;
            var height2 = $(".progress_ul>li>div").height() + 15;
            // console.log($(".progress_ul>li>div").width()+"---------------");
            // console.log(width1,width2);
            $(".progress_ul>li>div").mouseenter(function () {
                // console.log("---------------------------");
                // console.log($(".progress_ul>li>div").width()+"---------------");
                $(this).width(width2);
                $(this).height(height2);
            }).mouseleave(function () {
               $(this).width(width1);
               $(this).height(height1);
               // console.log("+++++++++++++");
               // console.log($(this).width());
            });

            // console.log(width1,width2);

            $(".progress_ul li:not(:last):even").addClass("li_left");
            $(".progress_ul li.li_left").next("div").addClass("progress_div_left");
            $(".progress_ul li:not(:last):odd").addClass("li_right");
            $(".progress_ul li.li_right").next("div").addClass("progress_div_right");

            var lis = $("li").length;
            // console.log($("li").eq(lis-2).attr("class"));
            // console.log($("li").eq(lis-2).attr("class") == "li_left");
            if($("li").eq(lis-2).attr("class") == "li_left"){
                $(".progress_ul li:last").addClass("li_left");
                $(".progress_ul li:last").next("p").addClass("p_right");
            }else{
                $(".progress_ul li:last").addClass("li_right");
                $(".progress_ul li:last").next("p").addClass("p_left");
            }




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
<c:if test="${sessionScope.user.permission == 'S'}">
    <div class="manager_edit">
        <a href="progressServlet?action=queryProgressAll&p=managers">编辑</a>
    </div>
</c:if>


<!--时间轴-->
    <div class="progress">
        <ul class="progress_ul">

            <c:forEach items="${requestScope.items}" var="progress">
                <li >

                    <div class="aaa">
                        <h3>${progress.title}</h3>
                        <div class="progress_li_div_div">
                            <!--<img src="../../static/img/progress_li_1.jpg" />-->
                            <p>${progress.body}</p>

                        </div>

                    </div>
                </li>

                <!--<p class="p_left">2002-03-02</p>-->
                <div >
                    <p>${progress.titleTime}</p>
                    <div>
                        <div></div>
                        <div class="radius"></div>
                    </div>

                </div>


            </c:forEach>

            <%--<li class="li_left">

                <div class="aaa">
                    <h3>银色圆端盖一体式交流混合步进电动机</h3>
                    <div class="progress_li_div_div">
                        <!--<img src="../../static/img/progress_li_1.jpg" />-->
                        <p>混合式步进电机是综合了永磁式和反应式的优点而设计的步进电机。它又分为两相、三相和五相，两相步进角一般为1.8度 ，三相步进角 一 般为 1.2度 ，而五相步进角 一 般为0.72度。</p>

                    </div>

                </div>
            </li>

            <!--<p class="p_left">2002-03-02</p>-->
            <div class="progress_div_left">
                <p>2022-03-09</p>
                <div>
                    <div></div>
                    <div class="radius"></div>
                </div>

            </div>

            <li class="li_right">
                <div>
                    <h3>SC气缸大全亚德客型小型气动大推力</h3>
                    <div class="progress_li_div_div">
                        <!--<img src="../../static/img/progress_li_1.jpg" />-->
                        <p>引导活塞在缸内进行直线往复运动的圆筒形金属机件。空气在发动机气缸中通过膨胀将热能转化为机械能；气体在压缩机气缸中接受活塞压缩而提高压力。</p>

                    </div>
                </div>
            </li>

            <!--<p class="p_right">2002-03-02</p>-->

            <div class="progress_div_right">
                <p>2022-03-09</p>
                <div>
                    <div></div>
                    <div class="radius"></div>
                </div>

            </div>

            <li class="li_left"></li>

            <p class="p_right">革命尚未成功，同志仍需努力！</p>--%>

            <li ></li>

            <p >革命尚未成功，同志仍需努力！</p>


        </ul>

        <div class="to_bottom"></div>

    </div>


<!--页脚部分-->

    <%--静态包含，页脚--%>
    <%@ include file="/pages/common/footer.jsp"%>

</body>
</html>