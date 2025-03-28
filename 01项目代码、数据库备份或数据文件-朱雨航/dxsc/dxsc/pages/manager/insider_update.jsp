<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>成员信息编辑</title>

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


            /*==========修改判断=========*/
            var bools = new Array(5);

            //学校
            $("#school").blur(function () {
                var schoolText = $("#school").val().trim();

                if(schoolText != null){
                    $("#errorMsg").text("");
                    bools[4]=true;
                }else{
                    $("#errorMsg").text("学校不能为空");
                    bools[4]=false;
                }

            });

            //学院
            $("#faculty").blur(function () {
                var facultyText = $("#faculty").val().trim();

                if(facultyText != null){
                    $("#errorMsg").text("");
                    bools[0] = true;
                }else{
                    $("#errorMsg").text("学院不能为空");
                    bools[0]=false;
                }
            });

            //权限
            $(".permission").blur(function () {

                var permissionText = $(".permission:checked").val();

                if(permissionText != null){
                    $("#errorMsg").text("");
                    bools[1]=true;
                }else{
                    $("#errorMsg").text("权限不能为空");
                    bools[1]=false;
                }
            });

            $(".group").blur(function () {
                var groupText = $(".group:checked").val();

                if(groupText == null){
                    $("#errorMsg").text("组别不能为空");
                    bools[2]=false;
                }else{
                    $("#errorMsg").text("");
                    bools[2]=true;
                }
            });

            $("#code").blur(function () {
                var codeText = $("#code").val();

                codeText = $.trim(codeText);	//$.trim()去除字符串两侧空格的干扰

                if(codeText == null || codeText == ""){
                    $("#errorMsg").text("验证码不能为空");
                    bools[3]=0;
                }else{
                    $("#errorMsg").text("");
                    bools[3]=1;
                }
            });


            $("#sub_btn").click(function () {
                //模拟单击事件
                $("input[type=text]").each(
                    this[0].click()
                    console.log(1)
                );
                alert(1);
                var bool = 0;
                bools.forEach(function (value) {
                    bool += value;
                });
                console.log(bool);
                if(bool != 5){
                    // location.reload();
                    return false;
                }

            });

            //给验证码添加单击属性，点击刷新
            $(".img_code").click(function () {
                this.src = "${bashPath}kaptcha.jpg?d="+new Date();
            });


        });

    </script>
    <style>
        .insider_edit #errorMsg{
            color: red;
            float: right;
            position: relative;
            right: 0;
        }

        .insider_edit .group,.insider_edit .permission{
            width: 60px;
            height: 30px;
        }

        .group_span,.permission_span{
            font-size: 20px;
            line-height:30px;
        }




    </style>
</head>
<body>
<!--导航栏-->

    <%--静态包含，导航栏菜单--%>
    <%@ include file="/pages/common/menu.jsp"%>


<!--成员信息编辑页面-->
    <h1 class="insider_edit_h1">成员信息编辑</h1>
    <div class="insider_edit">

    <form action="managerServlet" method="post">
        <%--<input type="hidden" name="action" value="register">--%>
        <input type="hidden" name="action" value="updateInsider">
        <input type="hidden" name="id" value="${requestScope.insider.id}">

        <label>姓名:</label>
        <input type="text" autocomplete="off" tabindex=""
               name="cname" id="cname" value="${requestScope.insider.cname}" disabled/>
        <br/>
        <br/>
        <label>工号:</label>
        <input type="text" autocomplete="off" tabindex=""
               name="id"  value="${requestScope.insider.id}" disabled/>
        <br/>
        <br/>
        <label>学校:</label>
        <input type="text" autocomplete="off" tabindex=""
               name="school" id="school" value="${requestScope.insider.school}"/>
        <br/>
        <br/>
        <label>院系:</label>
        <input type="text" autocomplete="off" tabindex=""
               name="faculty" id="faculty" value="${requestScope.insider.faculty}"/>
        <br/>
        <br/>
        <label>组别:</label>
        <input  class="group" type="radio" name="group" value="机械"/><span class="group_span" >机械</span>
        <input class="group" type="radio" name="group" value="电控"/><sapn class="group_span">电控</sapn>
        <input class="group" type="radio" name="group" value="视觉"/><sapn class="group_span">视觉</sapn>
        <input class="group" type="radio" name="group" value="宣传"/><sapn class="group_span">宣传</sapn>
        <br/>
        <br/>

        <label>权限:</label>
        <input  class="permission" type="radio" name="power" value="S"/><span class="permission_span">超级管理</span>
        <input  class="permission" type="radio" name="power" value="A"/><span class="permission_span">普通管理</span>
        <input  class="permission" type="radio" name="power" value="B"/><span class="permission_span">内部成员</span>
        <br/>
        <br/>


        <label>验证码:</label>
        <input type="text" autocomplete="off" tabindex="" style="width: 200px;"
               name="code" id="code" value=""/>
        <img alt="验证码" src="kaptcha.jpg" class="img_code"/>
        <br/>
        <br/>
        <input type="submit" value="提交" id="sub_btn">
        <%--<input type="button" href="managerServlet?action=queryInsiderList" value="返回" id="sub_btn">--%>


    </form>
    <span id="errorMsg">${requestScope.msg}</span>
</div>
</body>
</html>