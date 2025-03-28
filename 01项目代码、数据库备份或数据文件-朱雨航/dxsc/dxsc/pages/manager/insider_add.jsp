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


            /*==========注册判断=========*/
            var bools = new Array(5);

            $("#username").blur(function () {
                var usernameText = $("#username").val();
                var usernamePatt = /^\w{5,12}$/;

                if(usernamePatt.test(usernameText)){
                    $.getJSON("http://localhost:8080/dxsc/managerServlet","action=ajaxExistsUsername&username="+usernameText,function (data) {
                        if(data){
                            $("#errorMsg").text("用户名已存在");
                            bools[4]=false;
                        }else{
                            $("#errorMsg").text("用户名可以使用");
                            bools[4]=true;
                        }
                    });

                }else{
                    $("#errorMsg").text("用户名格式不正确");
                    bools[4]=false;
                }

            });

            $("#password").blur(function () {
                var passwordText = $("#password").val();
                var passwordPatt = /^\w{5,12}$/;

                if(passwordPatt.test(passwordText)){
                    $("#errorMsg").text("");
                    bools[0] = true;
                }else{
                    $("#errorMsg").text("密码格式错误");
                    bools[0]=false;
                }
            });

            $("#repwd").blur(function () {

                var passwordText = $("#password").val();
                var repwaText = $("#repwd").val();
                if(passwordText == repwaText){
                    $("#errorMsg").text("");
                    bools[1]=true;
                }else{
                    $("#errorMsg").text("密码不一致");
                    bools[1]=false;
                }
            });
            
            $("#email").blur(function () {
                var emailText = $("#email").val();
                var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;

                if(!emailPatt.test(emailText)){
                    $("#errorMsg").text("邮箱格式错误");
                    bools[2]=0;
                }else{
                    $("#errorMsg").text("");
                    bools[2]=1;
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
                $("input:text").trigger("click");
                var bool = 0;
                bools.forEach(function (value) {
                    bool += value;
                });
                console.log(bool)
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
            <input type="hidden" name="action" value="register">

            <label>用户名称:</label>
            <input type="text" autocomplete="off" tabindex=""  placeholder="请输入用户名"
                name="username" id="username" value="${param.username}"/>
            <br/>
            <br/>
            <label>用户密码:</label>
            <input type="password" autocomplete="off" tabindex=""  placeholder="请输入密码"
                name="password" id="password" />
            <br/>
            <br/>
            <label>确认密码:</label>
            <input type="password" autocomplete="off" tabindex=""  placeholder="请确认密码"
                name="repwd" id="repwd" />
            <br/>
            <br/>
            <label>电子邮箱:</label>
            <input type="text" autocomplete="off" tabindex=""  placeholder="请输入邮箱地址"
                name="email" id="email" value="${param.email}"/>
            <br/>
            <br/>
             <label>组别:</label>
            <input  class="group" type="radio" name="group" value="机械"/><span class="group_span">机械</span>
            <input class="group" type="radio" name="group" value="电控"/><sapn class="group_span">电控</sapn>
            <input class="group" type="radio" name="group" value="视觉"/><sapn class="group_span">视觉</sapn>
            <input class="group" type="radio" name="group" value="宣传"/><sapn class="group_span">宣传</sapn>
            <br/>
            <br/>


            <%--<label>权限:</label>
            <input  class="permission" type="radio" name="permission" value="S"/><span class="permission_span">超级管理</span>
            <input  class="permission" type="radio" name="permission" value="A"/><span class="permission_span">普通管理</span>
            <input  class="permission" type="radio" name="permission" value="B" checked/><span class="permission_span">内部成员</span>
            <br/>
            <br/>--%>
            <input type="hidden" name="permission" value="B">




            <label>验证码:</label>
            <input type="text" autocomplete="off" tabindex="" style="width: 200px;"
                name="code" id="code" value=""/>
            <img class="img_code" alt="验证码" src="kaptcha.jpg"/>
            <br/>
            <br/>
            <input type="submit" value="提交" id="sub_btn">

        </form>
        <span id="errorMsg">${requestScope.msg}</span>
    </div>
</body>
</html>