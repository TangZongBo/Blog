<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
    <link rel="shortcut icon" href="img/128128.ico" type="images/x-icon"/>
    <link rel="stylesheet" media="all" href="css/index1.css" />
    <link rel="stylesheet" href="css/Bowencss.css"/>
    <script type="text/javascript">
        function changeul() {
            var uls=document.getElementById("ul");
            uls.style.display="block";
        }
        function changesul() {
            var uls=document.getElementById("ul");
            uls.style.display="none";
        }

    </script>
</head>
<body>
          
         <c:choose>  
                
                <c:when test="${ empty user}">
           <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div>
                 <a class="logo" href="#">
                     <img src="img/logo_8cdb85088349c9dab967d86c48f0b5c1.png" alt="logo">
                 </a>
                <a class="btn write-btn" target="_blank" href="writer.jsp">
                    <i class="iconfont ic-write"></i>写文章
                </a>      <a class="btn sign-up" href="register.jsp">注册</a>
                <a class="btn log-in" href="login.jsp">登录</a>
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
                                <a href="#">
                                    <span class="menu-text">首页</span><i class="iconfont ic-navigation-discover menu-icon"></i>
                                </a>            </li>
                            <li class="search">
                                <form target="_blank" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
                                    <input type="text" name="q" id="q" value="" placeholder="搜索" class="search-input" />
                                    <a class="search-btn" href="javascript:void(null)"><i class="iconfont ic-search"></i></a>
                                </form>          </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        </c:when>
        
        <c:otherwise>
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
                    <c:if test="${user.sex eq '女'}">
                   <img src="img/1.jpg">
                    </c:if>
                     <c:if test="${user.sex eq '男'}">
                   <img src="img/0.jpg">
                    </c:if>
                   </a>
            </div>
            <ul class="dropdown-menu" id="ul" style="display: none" onmouseover="changeul();">
                <li>
                    <a href="#">
                        <i class="iconfont ic-navigation-profile"></i><span>我的文章</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/setup.jsp">
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
                    
                        </form>          </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
        </c:otherwise>
        </c:choose>   



            <div class="note">
                <div class="post">
                    <div class="article">
                        <h1 class="title">${bowen.name }</h1>
                        <!-- 作者区域 -->
                        <div class="author">
                            <div class="info">
                                <a class="avatar" href="#">
                                <c:if test="${bowen.user.sex  eq '女'}">
                    			<img style="display: inline" src="img/1.jpg"alt="144">
                    			</c:if>
                    	 		<c:if test="${bowen.user.sex eq '男'}">
                         		 <img style="display: inline" src="img/0.jpg" alt="144">
                    			</c:if>                       
                                </a>
                            <span class="tag">作者</span>
                            <span class="name"><a href="#">${bowen.user.username}</a></span>
                            <!-- 关注用户按钮 -->
                            <c:if test="${bowen.user.username eq user.username }">
                            <a class="btn btn-success follow" href="${pageContext.request.contextPath }/writer.jsp?update=oks"><i class="iconfont ic-follow"></i><span>编辑</span></a>
                        	  <a class="btn btn-success follow" href="${pageContext.request.contextPath }/DeleteBowenAction?bid=${bowen.bid}"><i class="iconfont ic-follow"></i><span>删除</span></a>
                        	 </c:if>
                            <!-- 文章数据信息 -->
                            <div class="meta">
                                <!-- 如果文章更新时间大于发布时间，那么使用 tooltip 显示更新时间 -->
                                <span class="publish-time" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="最后编辑于 2017.05.19 16:38">
                                 <fmt:formatDate value="${bowen.time }" pattern="yyyy/MM/dd  HH:mm:ss" />
                                </span>
                                <span class="wordage">字数${fn:length(bowen.content)} </span>
                        </div>
                            <!-- 如果是当前作者，加入编辑按钮 -->
                        </div>
                        <!-- -->

                        <!-- 文章内容 -->
                        <div class="show-content" style="margin-top: 5%;">
                            ${bowen.code }

                        </div>
                    </div>
            </div>
</body>
</html>