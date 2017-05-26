<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
</head>
<body>
                <%
                       if(request.getParameter("page")==null){
                    	      session.setAttribute("page",2);
                    	      session.setAttribute("ye",10);
                       }else{
                    	     String p=request.getParameter("page");
                    	     if(Integer.valueOf(p)>8){
                    	    	 request.getRequestDispatcher("/error.jsp").forward(request,response);
                    	     }
                    	     session.setAttribute("page",Integer.valueOf(p));
                    	     session.setAttribute("ye",(Integer.valueOf(p)*10));
                       }
                       
                %>
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
        
              <c:forEach var="i" begin="1" end="${ye}">
             <div id="list-container" style="margin-top: 5px;">
                <ul class="note-list" infinite-scroll-url="/" style="list-style: none;display: inline;">
                    <li id="note-12770153" data-note-id="12770153" class="have-img" style="display: inline;">
                        <div class="content">
                            <div class="author" style="display: inline;float: left;margin-left: 5px;">
                                <a class="avatar" target="_blank" href="/u/62478ec15b74">
                                    <img src="//upload.jianshu.io/users/upload_avatars/2542851/0dca220dd6bb.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96" alt="96"  style="display: inline;margin-left: 18px;"/>
                                </a>
                                <div class="name" style="padding-right: 30px;">
                                    		怀左同学
                                </div>
                            </div>
                            <a class="title" target="_blank" id="${i}" href="/p/a5ed713094c4"  style="font-weight: bold;" onmousemove="Peara(this.id);" onmouseout="Disappeara(this.id);" >我超级自律，就是为了和别人不一样</a>
                            <p class="abstract">
                                01 浏览公众号时，我被咪蒙前天的推文《你有没有想过，你会平庸到死》触动了，不是因为奖金，而是我确实想过，可能有一天，我会平庸到死。 平庸，到死。 我学的文学，在读研之前，体...
                            </p>
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