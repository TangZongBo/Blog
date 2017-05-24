<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="shortcut icon" href="img/128128.ico" type="images/x-icon"/>
    <link rel="stylesheet" media="all" href="css/index1.css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/picture_switching.js"></script>
</head>
<body>
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div>
                 <a class="logo" href="#">
                     <img src="img/logo_8cdb85088349c9dab967d86c48f0b5c1.png" alt="logo">
                 </a>
                <a class="btn write-btn" target="_blank" href="/writer#/">
                    <i class="iconfont ic-write"></i>写文章
                </a>      <a class="btn sign-up" href="register.html">注册</a>
                <a class="btn log-in" href="login.html">登录</a>
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
        </div>
</body>
</html>