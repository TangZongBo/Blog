<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设置</title>
    <link rel="shortcut icon" href="img/128128.ico" type="images/x-icon"/>
    <link rel="stylesheet" media="all" href="css/index1.css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/setup_change.js"></script>
    <script src="js/lr.js"></script>
    <script> 
          function FormAction1(){
        	  var action1=document.getElementById("form1").action;
        	  var action2=action1+"/UpdateUserAction.action";
        	  document.getElementById("form1").action=action2;
        	  document.getElementById("form1").submit();
        	
          }
          function FormAction2(){
        	  var action1=document.getElementById("form1").action;
        	  document.getElementById("form1").method="post";
        	  var action2=action1+"/index.jsp";
         	  document.getElementById("form1").action=action2;
        	  document.getElementById("form1").submit();
        	  
          }
          $(document).ready(function () {
              if($("#hidden1").val().length>0){
            	  changeUser();
                  $("#talkbubble").css("display","block");
              }
          });
          function deleteTiShi() {
              $("#talkbubble").css("display","none");
      		}
    </script>
    <style type="text/css">
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
         <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="width-limit">
        <!-- 左上方 Logo -->
        <a class="logo" href="#"><img src="img/logo_8cdb85088349c9dab967d86c48f0b5c1.png" alt="Logo" /></a>

        <!-- 右上角 -->
        <!-- 登录显示写文章 -->
        <a class="btn write-btn" target="_blank" href="writer.jsp">
            <i class="iconfont ic-write"></i>写文章
        </a>
        <!-- 如果用户登录，显示下拉菜单 -->
        <div class="user" onmouseover="changeul();" onmouseout="changesul();">
            <div data-hover="dropdown">
                <a class="avatar" href="/u/5c1c029dbedc">
                  <c:if test="${user.sex eq '男'}">
                <img src="img/0.jpg">
                </c:if>
                 <c:if test="${user.sex eq '女'}">
                <img src="img/1.jpg">
                </c:if>             
                </a>
            </div>
            <ul class="dropdown-menu" id="ul" style="display: none" onmouseover="changeul();">
                <li>
                    <a href="/u/5c1c029dbedc">
                        <i class="iconfont ic-navigation-profile"></i><span>我的文章</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="iconfont ic-navigation-settings"></i><span>设置</span>
                    </a>
                </li>
                <li>
                    <a rel="nofollow" data-method="delete" href="${pageContext.request.contextPath}/ExitAction.action">
                        <i class="iconfont ic-navigation-signout"></i><span>退出</span>
                    </a>
                </li>
            </ul>
        </div>

        <div id="view-mode-ctrl">
        </div>
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="menu">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/index.jsp">
                            <span class="menu-text">首页</span><i class="iconfont ic-navigation-discover menu-icon"></i>
                        </a>
                    </li>
                    <li class="search">
                        <form target="_blank" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
                            <input type="text" name="q" id="q" value="" placeholder="搜索" class="search-input" />
                            <a class="search-btn" href="javascript:void(null)"><i class="iconfont ic-search"></i></a>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>


<div class="container setting" style="margin-top: 10%;">
    <div class="row">
        <div class="col-xs-16 col-xs-offset-8 main">
            <form id="form1" method="post" action="${pageContext.request.contextPath}">
        <table style="border-collapse:separate; border-spacing:0px 20px;">
            <thead>
            <tr>
                <th class="setting-head responsive-head">
                </th>
                <th>

                </th>
            </tr>
            </thead>
            <tbody class="base">
            <tr>
                <td class="top-line">
                <div class="avatar">
                 <c:if test="${user.sex eq '男'}">
                <img src="img/0.jpg">
                </c:if>
                 <c:if test="${user.sex eq '女'}">
                <img src="img/1.jpg">
                </c:if>
                </div>
                </td>
                                
        <!--        <td class="top-line">
                    <a class="btn btn-hollow" onclick="changeFile();">
                <input unselectable="on" class="hide" type="file" id="file" onchange="document.getElementById('textfile').value=this.value;">
                   更改头像
                   </a>
            </td>
            </tr>
            <tr>
                <td class="top-line">
                    	头像
                </td>
                <td class="top-line">
                    <input type="text" id="textfile">
                </td>
            </tr>-->
           
            <tr>
            
                <td class="setting-title">
                   	用户名
                </td>
                      <div id="talkbubble" style="margin-top:60px;display:none;'">用户名已经存在</div>
                <td>
             
                    <input placeholder="请输入用户名" type="text" name="username" style="display: none" id="usernames" required="required" onblur="CheckUsername();" value="${user.username}"  onfocus="deleteTiShi();">
                    <input class="btn btn-success setting-save" value="更改" type="submit" onclick="changeUser();" id="userButton">
                </td>
            </tr>
            <tr>
                <td class="setting-title">改更密码</td>
                <td>
                    <input placeholder="请输入你的新密码" type="password" name="password" style="display: none" id="passwords" required="required" onblur="CheckPassword();">
                    <input class="btn btn-success setting-save" value="更改" type="submit" onclick="changePass();" id="passButton">
                </td>
            </tr>

            <tr>
                <td class="setting-title">确认新密码</td>
                <td>
                    <input placeholder="请输入你的新密码" type="password" disabled="disabled" id="words" onblur="CheckSecondPassword();">
                </td>
            </tr>
                     <input type="hidden" name="hidden" id="hidden1" value="${requestScope.msg}">
                      <input type="hidden" name="name" value="${user.username}">
                      <input type="hidden" name="pwd" value="${user.password}">
            </tbody>
        </table>
            <input class="btn btn-success setting-save" value="保存" onclick="FormAction1();">
                <input class="btn btn-success setting-save" value="取消并返回" onclick="FormAction2();">
            </form>

        </div>
    </div>
</div>
</body>
</html>