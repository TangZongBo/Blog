<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" media="all" href="css/index1.css" />
    <link rel="stylesheet" media="all" href="css/lr.css" />
    <link rel="shortcut icon" href="img/128128.ico" type="images/x-icon"/>
     <script src="js/jquery-1.8.3.min.js"></script>
     <script type="text/javascript">
                function changecolor() {
                      var o=document.getElementById("js-sign-up-btn");
                      o.style.borderBottom="3px solid orange";
                }
                function change() {
                    var o=document.getElementById("js-sign-up-btn");
                    o.style.borderBottom="3px solid #e3e3e3";
                }
                $(document).ready(function () {
                    if($("#hidden1").val().length>0){
                    	$("#talkbubble").text($("#hidden1").val());
                        $("#talkbubble").css("display","block");
                    }
                });
                function deleteTiShi() {
                    $("#talkbubble").css("display","none");
                }
     </script>
<style>
           body {
               background-image: url(img/lr_index.jpg);
           }
           #div_form{
               margin-left: auto;
               margin-right: auto;
               margin-top: 5%;
               width: 400px;
               height: 400px;
               padding: 30px;
               border: 1px solid rgba(0,0,0,.2);
               -moz-border-radius: 5px;
               -webkit-border-radius: 5px;
               border-radius: 5px;
               -moz-background-clip: padding;
               -webkit-background-clip: padding-box;
               background-clip: padding-box;
               background: rgba(0, 0, 0, 0.5);
               -moz-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
               -webkit-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
               box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
               overflow: hidden;
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
</head>
<body>
		   <div class="sign">
		            <div id="div_form">
		            <div id="div_t">
		                <h4 class="title">
		                    <div class="normal-title">
		                        <a class="active" href="#" style="border-bottom: 3px solid orange;">登录</a>
		                        <b>·</b>
		                        <a id="js-sign-up-btn" href="register.jsp" style="border-bottom: 3px solid #e3e3e3;" onmousemove="changecolor()" onmouseout="change()">注册</a>
		                    </div>
		                </h4>
		            </div>
		            <div style="margin-top: 8%;">
		                <form action="${pageContext.request.contextPath }/LoginAction.action" method="post">
		                    <div id="talkbubble" style="display: none;"></div>
		                         <font color="orange" style="margin-left: 15%;" onfocus="deleteTiShi();">用户名</font>
		                         <input type="text" name="username" required="required" placeholder="请输入您的用户名">
		                          <font color="orange" style="margin-left: 15%;">密码</font>
		                          <input type="password" name="password" required="required" placeholder="请输入您的密码">
		                              <input type="hidden" name="hidden" id="hidden1" value="${requestScope.msg}">
		                          <input type="submit" class="submit" value="提交">
		                          <input type="reset" class="reset">
		                </form>
		            </div>
		            </div>
		        </div>
</body>
</html>