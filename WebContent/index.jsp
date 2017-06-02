<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Insert title here</title>
    <link rel="shortcut icon" href="img/128128.ico" type="images/x-icon"/>
    <link rel="stylesheet" media="all" href="css/index1.css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/picture_switching.js"></script>
     <script>
            function Peara(a) {
                  document.getElementById(a).style.textDecoration="underline";
            }
          function Disappeara(a) {
              document.getElementById(a).style.textDecoration="none";

          }
    </script>
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
                <%
                       if(request.getSession().getAttribute("listbowen")==null){
                    	  response.sendRedirect(request.getContextPath()+"/IndexAction.action");
                       }         
                %>
                
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
                        <a href="#">
                            <span class="menu-text">发现</span><i class="iconfont ic-navigation-discover menu-icon"></i>
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

        <div class="container index">
            <div class="row">
        <div id="indexCarousel" class="carousel slide">
            <div class="carousel-inner">
                <div class="item active">
                    <div class="banner">
                        <a target="_blank" href="http://www.jianshu.com/p/b98a8300b94a?utm_medium=index-banner&amp;utm_source=desktop"><img id="images" alt="540" height="300px" width="961px"/></a>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#" role="button" data-slide="prev" onclick="ChangePrev();" onmousemove="ChangeDiplayPrev();" onmouseout="ChangeDisappearPrev();"><div id="prevs" style="margin-top: 20%;display: none;">←</div></a>
            <a class="right carousel-control" href="#" role="button" data-slide="next"  onclick="ChangeNext();" onmousemove="ChangeDiplayNext();" onmouseout="ChangeDisappearNext();"><div id="nexts" style="margin-top: 20%;display: none;">→</div></a>
        </div>
        </div>
        
              <c:forEach items="${listbowen}" var="item" end="6" begin="0">
             <div id="list-container" style="margin-top: 5px;">
                <ul class="note-list" infinite-scroll-url="/" style="list-style: none;display: inline;">
                    <li id="note-12770153" data-note-id="12770153" class="have-img" style="display: inline;">
                        <div class="content">
                            <div class="author" style="display: inline;margin-left: 5px;">
                                <a class="avatar" target="_blank" href="/u/62478ec15b74">                               
                                <c:if test="${item.user.sex eq '女'}">
			                   <img src="img/1.jpg" alt="96"  style="display: inline;margin-left: 18px;"/>
			                    </c:if>
			                     <c:if test="${item.user.sex eq '男'}">
			                	 <img src="img/0.jpg" alt="96"  style="display: inline;margin-left: 18px;"/>
			                    </c:if>                                  
                                </a>
                                <div class="name" style="padding-right:10%;position:inherit;">
                                  	作者:${item.user.username}
                                </div>
                            </div>
                            <a class="title" id="${item.bid }" target="_blank" href="${pageContext.request.contextPath }/SelectBowenAction.action?bid=${item.bid}"  style="font-weight: bold;" onmousemove="Peara(this.id);" onmouseout="Disappeara(this.id);">${item.name}</a>
                            <p class="abstract" style="1">
                                ${item.context }
                            </p>
                                                      时间:<fn:formatDate value="${item.time }" pattern="yyyy/MM/dd  HH:mm:ss" />
                        </div>
                        </li>
                    <div style="border: 1px solid #f0f0f0;margin-top: 1%;"></div>
                    <div style="margin-top: 3%;"></div>
                     </c:forEach>
                    </ul>
                        <div>
                        
                         <c:choose>
                            <c:when test="${ ye < 80 }">
                                 <a data-page="3" href="${pageContext.request.contextPath}/index.jsp?page=${page}" class="load-more">阅读更多</a>
                            </c:when>
                            <c:otherwise>
                             <a data-page="3" href="#" class="load-more">只能显示这么多</a>
                            </c:otherwise>
                   </c:choose>

        </div>
</body>
</html>