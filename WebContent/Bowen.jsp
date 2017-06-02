<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          
         <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="width-limit">
                    <!-- 左上方 Logo -->
                    <a class="logo" href="#"><img src="img/logo_8cdb85088349c9dab967d86c48f0b5c1.png" alt="Logo" /></a>

                    <!-- 右上角 -->
                    <!-- 登录显示写文章 -->
                    <a class="btn write-btn" target="_blank" href="writer.html">
                        <i class="iconfont ic-write"></i>写文章
                    </a>
                    <!-- 如果用户登录，显示下拉菜单 -->
                    <div class="user" onmouseover="changeul();" onmouseout="changesul();">
                        <div data-hover="dropdown">
                            <a class="avatar" href="#"><img src="img/logo_8cdb85088349c9dab967d86c48f0b5c1.png"></a>
                        </div>
                        <ul class="dropdown-menu" id="ul" style="display: none" onmouseover="changeul();">
                            <li>
                                <a href="#">
                                    <i class="iconfont ic-navigation-profile"></i><span>我的文章</span>
                                </a>
                            </li>
                            <li>
                                <a href="/settings">
                                    <i class="iconfont ic-navigation-settings"></i><span>设置</span>
                                </a>
                            </li>
                            <li>
                                <a rel="nofollow" data-method="delete" href="index.html">
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
                                    <a href="index.html">
                                        <span class="menu-text">首页</span><i class="iconfont ic-navigation-discover menu-icon"></i>
                                    </a>
                                </li>
                                <li class="search">
                                    <form target="_blank" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
                                        <input type="text" name="q" id="q" value="" placeholder="搜索" class="search-input" />
                                        <a class="search-btn" href="javascript:void(null)"><i class="iconfont ic-search"></i></a>
                                        <!-- <div id="navbar-trending-search"></div> -->
                                    </form>          </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>




            <div class="note">
                <div class="post">
                    <div class="article">
                        <h1 class="title">美食&amp;谈谈情说说爱专题联合征文｜唯爱与美食不可辜负</h1>

                        <!-- 作者区域 -->
                        <div class="author">

                            <div class="info">
                                <a class="avatar" href="#">
                                    <img style="display: inline" src="//upload.jianshu.io/users/upload_avatars/4510841/d8b50725-ebe2-44e7-b76b-4336c1e412b6.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/144/h/144" alt="144">
                                </a>
                            <span class="tag">作者</span>
                            <span class="name"><a href="#">一酎蓝</a></span>
                            <!-- 关注用户按钮 -->
                            <a class="btn btn-success follow"><i class="iconfont ic-follow"></i><span>编辑</span></a>
                            <!-- 文章数据信息 -->
                            <div class="meta">
                                <!-- 如果文章更新时间大于发布时间，那么使用 tooltip 显示更新时间 -->
                                <span class="publish-time" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="最后编辑于 2017.05.19 16:38">2017.05.19 16:35</span>
                                <span class="wordage">字数 1355</span>
                        </div>
                            <!-- 如果是当前作者，加入编辑按钮 -->
                        </div>
                        <!-- -->

                        <!-- 文章内容 -->
                        <div class="show-content" style="margin-top: 5%;">
                            <p>小时候第一次看琼瑶，以为爱情就像男女主人公的山盟海誓，爱了便是惊天动地，爱便爱到海枯石烂、天荒地老。</p>
                            <p>青春期第一次拿起言情小说，以为爱情就是青春的尾巴，缺少不了轰轰烈烈的开始，以及中途的跌宕曲折。倘若最后未能抵达王子与公主的美好结局，便只能暗自封存，随时光悄然而逝。</p>
                            <p>逐渐成长的旅途中，逐渐避免不了的得到与失去。得失之间，维系的感情变得愈加珍贵，方才觉得，爱就是不离不弃，是源自平凡中的一抹烟火气息，是过日子一饭一蔬里，彼此的默契与细水长流。</p>
                            <blockquote><p>征文主题：唯爱与美食不可辜负</p></blockquote>
                            <p>爱是从饺子中，吃出的闪闪发光的婚戒；爱是下班回家，伴侣准备好的精心的饭团；爱亦是冒雨归来，母亲特意盛出的，那碗饱含温情的热汤。</p>
                            <p>生活中有那么多关于爱的细节，皆是源于舌尖下最为甜蜜的品尝。</p>
                            <p>是谁为你策划好浪漫的烛光晚餐？是谁挖空心思，填饱你饥饿的脾胃？你曾因谁茶不思饭不想，谁又在为你洗手作羹汤？</p>
                            <h3><strong>快来介绍一下那些写满爱之情结的美食故事吧！</strong></h3>
                            <p>可以是与父母、伴侣，或是孩子、朋友等等，只要他（她）是你很爱很爱的那个人！</p>
                            <p>通过对美食故事的书写与回顾，表达你对他们的感情，或者追忆曾经的美好。</p>
                            <p>今年520，有爱，我们大声 <strong>说！出！来！</strong></p>
                            <blockquote><p>征文要求：</p></blockquote>
                            <p><strong>以爱与美食为主题，除诗词歌赋外的所有文章体裁均可投稿。</strong></p>
                            <p>字数1500字以上。</p>
                            <p>标题格式需统一为<strong>《唯爱与美食不可辜负｜xxxxxx》</strong></p>
                            <p>文章投稿至<a href="http://www.jianshu.com/c/qqfxgN" target="_blank">「美食」</a>专题与<a href="http://www.jianshu.com/c/GQ5FAs" target="_blank">「谈谈情，说说爱」</a>专题，随后由编辑手动收录至专题征稿专区。</p>
                            <p><strong>另外，因为征文涉及美食话题，故而最好搭配相关美食图片于文中，图片美观优质者，极大增加获奖几率。</strong></p>
                            <p><strong>投稿时间：2017年5月20日00:00－2017年6月10日23:59</strong></p>
                            <p><strong>征稿范围：所有简书用户</strong></p>
                            <blockquote><p>征文规则：</p></blockquote>
                            <p>1 投稿作者需先关注美食专题与谈谈情说说爱专题。</p>
                            <p>2 投稿文章末尾需附本次征文活动链接，添加内容如下：</p>
                            <p>《美食和谈谈情说说爱专题联合征文》活动链接：<br><a href="http://www.jianshu.com/p/b98a8300b94a" target="_blank">http://www.jianshu.com/p/b98a8300b94a</a></p>
                            <p>3 作品必须原创，引用部分需注明出处。作者应拥有文章除引用之外，其余部分的著作权。</p>
                            <p>4 拒绝旧文投稿。</p>
                            <p>5 字数1500以上，体裁除诗词歌赋外任意文体均可。</p>
                            <p>6 图片请尽量使用原创图片，且不可带有其他平台水印或网址，配图与排版美观者增大获奖概率。</p>
                            <p>7 文章中不可添加除简书平台之外的其余一切链接。</p>
                            <p>8 杜绝恶意刷赞，一经发现，取消相应作者活动资格。</p>
                            <p>9 未尽事宜请关注本页面评论区内容附加更新，如有疑问也可在文末下方留言。</p>
                            <blockquote><p>征文奖励：</p></blockquote>
                            <p>优秀作品直接收录至「首页投稿」专题，推荐至首页。并转发至简书相关专题微信群宣传。</p>
                            <p>优秀文章视文章质量将给予10元以内不等打赏。</p>
                            <p>最终从候选作品中选出：</p>
                            <p><strong>一等奖 一名 100元打赏+价值99元简书包</strong></p>
                            <p></p>
                            <p>文章有机会进入简书日报和简书公众号</p>
                            <p></p>
                            <p><strong>二等奖 二名 80元打赏+简书价值69元精美笔记本</strong></p>
                            <p></p>
                            <p><strong>三等奖 三名 50元打赏+简书价值69元精美笔记本</strong></p>
                            <p></p>
                            <blockquote><p>活动相关事宜补充：</p></blockquote>
                            <p>1 本次征文活动由「美食」专题与「谈谈情说说爱」专题联合主办，并由两大专题编委对文章进行评选。</p>
                            <p>2 文章评定标准：视文章质量、阅读量、评论、喜欢数等指标进行综合评定，作弊无效。</p>
                            <p>3 本次活动优秀作品（未获奖作品也可能入选）将以专刊形式集结成电子书，在亚马逊、豆瓣等平台发行，并同步转发至简书相关专题微信群。</p>
                            <p>4 奖励现金统一打赏至简书钱包。</p>
                            <p>最后：</p>
                            <p>参赛作品著作权归作者所有，转载请联系作者取得合法授权。</p>
                            <p>征文结果将于2017年6月中旬在美食专题、谈谈情说说爱专题以及简书相关专题群公告。</p>
                            <p>欢迎大家提前关注，以便第一时间知悉赛事进展。</p>

                        </div>
                    </div>
            </div>
</body>
</html>