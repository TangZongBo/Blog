<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="shortcut icon" href="img/128128.ico" type="images/x-icon"/>
    <link rel="stylesheet" media="all" href="css/index1.css" />
    <link rel="stylesheet" media="all" href="css/lr.css" />
    <link rel="stylesheet" media="all" href="css/lr2.css" />
    <script type="text/javascript" src="js/lr.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <style>
        body {
            background-image: url(img/lr_index.jpg);
        }
        #talkbubble {
            text-align: center;
            width: 150px;
            height: 25px;
            background: burlywood;
            position: absolute;
            margin-left: 12%;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
        }
        #talkbubble:before{
            content:"";
            position: absolute;
            right: 100%;
            top: 25px;
            left: 57px;
            width: 0;
            height: 0;
            border-left: 13px solid transparent;
            border-top: 8px solid burlywood;
            border-right: 13px solid transparent;
        }
    </style><style>
        body {
            background-image: url(img/lr_index.jpg);
        }
        #talkbubble {
            text-align: center;
            width: 150px;
            height: 25px;
            background: burlywood;
            position: absolute;
            margin-left: 12%;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
        }
        #talkbubble:before{
            content:"";
            position: absolute;
            right: 100%;
            top: 25px;
            left: 57px;
            width: 0;
            height: 0;
            border-left: 13px solid transparent;
            border-top: 8px solid burlywood;
            border-right: 13px solid transparent;
        }
    </style>
    <script type="text/javascript">
             $(document).ready(function () {
                 if($("#hidden1").val().length>0){
                     $("#talkbubble").css("display","block");
                 }
             });
             function changecolor() {
                   var result=document.getElementById("login_button");
                   result.style.borderBottom="3px solid orange";
             }
             function change() {
                 var result=document.getElementById("login_button");
                 result.style.borderBottom="3px solid #e3e3e3";
             }
            function deleteTiShi() {
                $("#talkbubble").css("display","none");
        }
    </script>
</head>
<body>
            <div class="sign">
                <div id="div_form">
                    <div id="div_t">
                        <h4 class="title">
                            <div class="normal-title">
                                <a class="active" href="login.jsp" style="border-bottom: 3px solid #e3e3e3;" id="login_button" onmousemove="changecolor()" onmouseout="change()">登录</a>
                                <b>·</b>
                                <a id="js-sign-up-btn" href="#" style="border-bottom: 3px solid orange;">注册</a>
                            </div>
                        </h4>
                    </div>

                    <div style="margin-top: 8%;">

                        <form action="" method="post">
                            <div id="talkbubble" style="display: none;">用户名已经存在</div>
                            <font color="orange" style="margin-left: 15%;">用户名</font>
                            <input type="text" id="usernames" name="username" required="required" placeholder="请输入您的用户名" onblur="CheckUsername();" value="123" onfocus="deleteTiShi();">
                            <font color="orange" style="margin-left: 15%;">密码</font>
                            <input type="password" id="passwords" name="password" required="required" placeholder="请输入您的密码" onblur="CheckPassword();">
                            <font color="orange" style="margin-left: 15%;">确认密码</font>
                            <input type="password"  id="words" name="second_password" required="required" placeholder="请再次输入您的密码" onblur="CheckSecondPassword();">
                            <font color="orange" style="margin-left: 15%;">性别</font>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" required="required">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="sex" required="required">女<br/><br/>
                            <font color="orange" style="margin-left: 15%;">头像</font>
                            <input type="file" required="required" placeholder="请上传您的头像">
                            <input type="hidden" name="hidden" id="hidden1">
                            <input type="submit" class="submit" value="提交" id="button">
                            <input type="reset" class="reset">
                        </form>
                    </div>
                </div>
            </div>
</body>
</html>