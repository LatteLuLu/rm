<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>鼎行·双创</title>

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

            //轮播图
			var count = 0;//第一张图的下标
			//下一张
			$(".imgnext").click(function () {
				count++;
				if(count == $("img[name=carousel]").length){
				    count = 0;
				}
				$("img[name=carousel]").eq(count).fadeIn().siblings("img[name=carousel]").fadeOut();
            });
			//上一张
			$(".imgprev").click(function () {
				count--;
				if(count == -1){
				    count = $("img[name=carousel]").length - 1;
				}
				$("img[name=carousel]").eq(count).fadeIn().siblings("img[name=carousel]").fadeOut();

            });




		});
	</script>
	<style>
        .i_c_top{
            width: 90%;
            height: 680px;
            margin: 2% 5%;
            background-color: #E0E0E0;
            position: relative;
        }

        .ic_top_l{
            position: absolute;
            width: 30%;
            height: 90%;
            /*background-color: #B0BEC5;*/
            margin: 2.5%  5%;
        }

        .ic_top_l h3{
            text-align: center;
            font-size: 50px;

        }
        .ic_top_l p{
            text-indent: 2em;
            font-size: 20px;
            padding: 10px;
        }

        .ic_top_r{
            width: 50%;
            height: 200px;
            margin: 20px 5%;
            /*background-color: #B0BEC5;*/
        }

        .ic_top_r h3{
            font-size: 35px;
        }

        .ic_top_r p{
            text-indent: 2em;
            font-size: 20px;
        }

        .ic_top_r1{
            position: absolute;
            top: 0;
            right: 0;
        }

        .ic_top_r2{
            position: absolute;
            top: 220px;
            right: 0;
        }

        .ic_top_r3{
            position: absolute;
            top: 440px;
            right: 0;
        }

        .ic_h1_1{
            text-align: center;
            font-size: 30px;
            height: 40px;
            margin: 2px 0;
            background: #B0BEC5;
        }


        .ic_middle{
            width: 90%;
            height: 680px;
            margin: 2% 5%;
            background-color: #E0E0E0;
            border: 2px solid #B0BEC5;
            position: relative;
            /*opacity: 0.5;*/

        }

        .ic_middle_0{
            width: 90%;
            height: 200px;
            margin: 20px 5%;
            /*background-color: #99CC33;*/
        }


        .icm_1{
            width: 30%;
            height: 90%;
            /*position: relative;*/
            float: left;
            background-color: #E0E0E0;
            margin: 1% 1.6%;
            background-repeat: no-repeat;
            background-position: 50% 50%;
            background-size: 100% 100% ;
        }

        .icm_1_1{
            background-image: url("static/img/gzsp1.jpg");
        }

        .icm_1_2{
            background-image: url("static/img/gzsp2.jpg");
        }

        .icm_1_3{
            background-image: url("static/img/gzsp3.jpg");
        }
        .icm_2_1{
            background-image: url("static/img/cg_2.jpg");
        }

        /*.icm_1_2{
            background-image: url("static/img/gzsp2.jpg");
        }*/

        .icm_2_3{
            background-image: url("static/img/cg_3.jpg");
        }
        .icm_3_1{
            background-image: url("static/img/cg_4.jpg");
        }

        .icm_3_2{
            background-image: url("static/img/jx_5.jpg");
        }

        .icm_3_3{
            background-image: url("static/img/jx_6.jpg");
        }



	</style>
</head>
<body>
<!--导航栏-->

	<%--静态包含，导航栏菜单--%>
	<%@ include file="/pages/common/menu.jsp"%>



<!--轮播图-->
<hr style="width: 100%;"/>
	<div class="carousel">
		<img name="carousel" style="display: block;" src="static/img/login_5.jpg"/>
		<img name="carousel" style="display: none;" src="static/img/login_6.jpg"/>
		<img name="carousel" style="display: none;" src="static/img/login_7.jpg"/>
		<img name="carousel" style="display: none;" src="static/img/login_8.jpg"/>
		<%--<img name="carousel" style="display: none;" src="static/img/login_9.jpg"/>--%>
		<%--<img name="carousel" style="display: none;" src="static/img/login_10.jpg"/>--%>
		<div class="imgprev"></div>
		<div class="imgnext"></div>


	</div>


	<div class="index_content">

		<%--<h1>宣传页面</h1>--%>
        <div class="i_c_top">
            <div class="ic_top_l">
                <h3>创建初衷</h3>
                <hr/>
                <p>战队的初衷在于提升队员之间的个人技术和团队协作能力，为互相热爱的一群人提供一个能够提升自我能力的平台。队员之间可
                    以相互交流，一同探讨技巧、攻略和自我想法，队友之间可以互相学习经验，让自己能够不断找到厲于自己的获得感和自豪感。</p>
                <p>人在追逐理想时，不是非要遇到志同道合的人才能上路，往往是上路了，才能遇到志同道合的人!成功是一个不断累积和吸引的过程!自己是梧桐，凤凰才会来栖;
                    自己是海，百川才来汇聚; 只有自己修炼好了，才会有人来亲附。往往是走在路上，才会遇上同路人!坚定前行，
                    志同道合的有缘人就会随你而来！</p>
            </div>
            <div class="ic_top_r1 ic_top_r">
                <h3>RS战队</h3>
                <hr/>
                <p>全国大学生机器人大赛RoboMaster是中国最具影响力的机器人项目，
                    是全球独创的机器人竞技平台，包含机器人赛事、机器人生态、以及工程文化等多项内容，
                    正在全球范围内掀起一场机器人科技狂潮。</p>
            </div>
            <div class="ic_top_r2 ic_top_r">
                <h3>参加比赛及成就</h3>
                <hr/>
                <p>从创建RS战队至今，已经度过两年时间，我们已经参加过两次赛事，作为最近参加Robomaster比赛的新人队伍，我们有这巨大的潜力</p>
                <p>截止目前获得2021机甲大师高校单项赛《新星启航奖》、2021机甲大师高校单项赛全国赛《工程采矿二等奖》</p>
            </div>
            <div class="ic_top_r3 ic_top_r">
                <h3>展望</h3>
                <hr/>
                <p>我们战队立足于机械方面的设计与制造，用近乎完美的技术来达到更高的要求，制作出更精美的机械产品，
                    今后我们战队打算参加更多的比赛，一方面是提高名气，
                    另一方面是更好的提高我们的技术。</p>
            </div>


        </div>

            <hr />
            <h3 class="ic_h1_1 " >团队展示</h3>
            <hr/>

        <div class="ic_middle">
            <div class="ic_middle_0 ic_middle_1">
                <div class="icm_1_1 icm_1" ></div>
                <div class="icm_1_2 icm_1"></div>
                <div class="icm_1_3 icm_1"></div>

            </div>
            <div class="ic_middle_0 ic_middle_2">
                <div class="icm_2_1 icm_1" ></div>
                <div class="icm_2_2 icm_1">
                    <video src="static/img/shipin.mp4"
                           poster="images/snow.jpg"
                           width="100%" height="100%"
                           controls
                           autoplay
                           loop>
                        <p>A video of snow in WHU</p>
                    </video>

                </div>
                <div class="icm_2_3 icm_1"></div>
            </div>
            <div class="ic_middle_0 ic_middle_3">
                <div class="icm_3_1 icm_1" ></div>
                <div class="icm_3_2 icm_1"></div>
                <div class="icm_3_3 icm_1"></div>
            </div>
        </div>







	</div>

<!--页脚-->

	<%--静态包含，页脚--%>
	<%@ include file="/pages/common/footer.jsp"%>

</body>
</html>