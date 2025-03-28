<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人信息</title>

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


            $("td:odd").width(150);
            $("td:nth-child(2n)").css("color","gray");
            $("td:even").width(75);

            var $right_top_btn = true;
            $(".right_top_btn").click(function () {
                if($right_top_btn){
                    $(".right_top_btn").val("取消编辑")
                        .css("color","black");
                    $(".right_bottom_first_1").css("display","none");
                    $(".right_bottom_last_1").css("display","block");
                    $right_top_btn = false;
                }else{
                    $(".right_top_btn").val("编辑")
                        .css("color","skyblue");
                    $(".right_bottom_first_1").css("display","block");
                    $(".right_bottom_last_1").css("display","none");
                    $right_top_btn = true;
                }


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



<!--个人信息页面-->
    <div class="insider_self">
        <div class="insider_self_left">
            <img class="insider_self_left_img1" src="static/img/insider_self_left_img1.jpg"/><span>基本信息</span>
            <img class="insider_self_left_img2" src="static/img/insider_self_left_img2.png"/>
        </div>

        <form action="insiderServlet" method="post">
            <input type="hidden" name="action" value="updateInsiderSelf">
            <input type="hidden" name="id" value="${sessionScope.user.id}">

        <div class="insider_self_right">
            <div class="right_top">
                <h3>基本信息(必填)</h3>
                <input class="right_top_btn" type="button" value="编辑">
            </div>

            <!--编辑前-->
            <div class="right_bottom_first_1">
                <table>
                    <tr>
                        <td>姓名</td>
                        <td>${sessionScope.insider.cname}</td>
                        <td>英文名</td>
                        <td>${sessionScope.insider.ename}</td>
                    </tr>
                    <tr>
                        <td>性别</td>
                        <td>${sessionScope.insider.sex}</td>
                        <td>民族</td>
                        <td>${sessionScope.insider.etnicGroup}</td>
                    </tr>
                    <tr>
                        <td>出生年月</td>
                        <td>${sessionScope.insider.birthday}</td>
                        <td>籍贯</td>
                        <td>${sessionScope.insider.nation}</td>
                    </tr>
                    <tr>
                        <td>电话</td>
                        <td>${sessionScope.insider.elephone}</td>
                        <td>QQ</td>
                        <td>${sessionScope.insider.qq}</td>
                    </tr>
                    <tr>
                        <td>邮箱</td>
                        <td>${sessionScope.insider.email}</td>
                        <td>微信</td>
                        <td>${sessionScope.insider.weChat}</td>
                    </tr>

                </table>
            </div>


            <!--编辑后-->
            <div class="right_bottom_last_1">
                <label>姓名:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="张三"
                       name="cname" id="cname" value="${sessionScope.insider.cname}"/>
                <br/>
                <br/>
                 <label>英文名:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="Bob"
                       name="ename" id="ename" value="${sessionScope.insider.ename}"/>
                <br/>
                <br/>
                 <label>性别:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="男"
                       name="sex" id="sex" value="${sessionScope.insider.sex}"/>
                <br/>
                <br/>
                 <label>民族:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="汉"
                       name="etnicGroup" id="etnicGroup" value="${sessionScope.insider.etnicGroup}"/>
                <br/>
                <br/>
                 <label>出生年月:</label>
                <input type="date" autocomplete="off" tabindex=""  placeholder="2022-03-13"
                       name="birthday" id="birthday" value="${sessionScope.insider.birthday}"/>
                <br/>
                <br/>
                 <label>籍贯:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="河南省洛阳市涧西区"
                       name="nation" id="nation" value="${sessionScope.insider.nation}"/>
                <br/>
                <br/>
                 <label>电话:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="12345678910"
                       name="elephone" id="elephone" value="${sessionScope.insider.elephone}"/>
                <br/>
                <br/>
                 <label>QQ:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="1234567890"
                       name="qq" id="qq" value="${sessionScope.insider.qq}"/>
                <br/>
                <br/>
                 <label>邮箱:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="1234567890@qq.com"
                       name="email" id="email" value="${sessionScope.insider.email}"/>
                <br/>
                <br/>
                 <label>微信号:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="weChat"
                       name="weChat" id="weChat" value="${sessionScope.insider.weChat}"/>
                <br/>
                <br/>

            </div>






            <div class="right_top">
                <h3>战队信息</h3>
            </div>
            <div class="right_bottom_first_1">
                <table>
                    <tr>
                        <td>工号</td>
                        <td>${sessionScope.insider.id}</td>
                        <td>学校</td>
                        <td>${sessionScope.insider.school}</td>
                    </tr>
                    <tr>
                        <td>组别</td>
                        <td>${sessionScope.insider.group}</td>
                        <td>院系</td>
                        <td>${sessionScope.insider.faculty}</td>
                    </tr>
                    <tr>
                        <td>权限</td>
                        <td>${sessionScope.insider.power}</td>
                    </tr>

                    <tr>
                        <td> </td>
                        <td> </td>
                        <td>  </td>
                        <td> </td>
                    </tr>
                    <tr>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                    </tr>


                </table>
            </div>

            <div class="right_bottom_last_1">

                <input type="hidden" name="group" value="${sessionScope.insider.group}">
                <input type="hidden" name="power" value="${sessionScope.insider.power}">

                 <label>学校:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="河南科技大学"
                       name="school" id="school" value="${sessionScope.insider.school}"/>
                <br/>
                <br/>
                 <label>院系:</label>
                <input type="text" autocomplete="off" tabindex=""  placeholder="机电工程学院"
                       name="faculty" id="faculty" value="${sessionScope.insider.faculty}"/>

                <br/>
                <br/>
                <input type="submit" value="保存" />

            </div>


        </div>
        </form>
    </div>




<!--页脚-->

    <%--静态包含，页脚--%>
    <%@ include file="/pages/common/footer.jsp"%>

</body>
</html>