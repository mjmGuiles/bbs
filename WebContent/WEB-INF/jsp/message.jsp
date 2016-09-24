<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>消息</title>
    <link rel="stylesheet" href="css/message.css" type="text/css">
    <link rel="stylesheet" href="css/header.css" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css">
    <script type="text/javascript" src="js/header.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wp" class="wp" style="min-height: 438px;">
    <div id="pt" class="bm cl">
        <div class="z">
            <a href="./index.php" class="nvhm" title="首页">MIUI论坛</a> <em>›</em>
            <a href="home.php?mod=space&amp;do=pm">通知</a> <em>›</em>
            消息
        </div>
    </div>

    <style id="diy_style" type="text/css"></style>
    <div class="wp">
        <!--[diy=diy1]--><div id="diy1" class="area"></div><!--[/diy]-->
    </div>
    <style>
        .space_pm .ptm{padding-top: 16px !important;}
        .space_pm .xld dd{margin-bottom: 20px;}
        .space_pm .xlda .m{margin-top: 20px;margin-bottom: 0 !important; }
        .space_pm .bulletin{margin-bottom: 0;}

        .space_pm dd .p_pop a{font-weight: normal;color: #3893eb;}
        .space_pm dd a.xw1, .pm_c a:nth-child(1) {color: #000;font-weight: 700;}
        .space_pm dd .p_pop a:hover, .space_pm dd a:hover.xw1, .pm_c a:hover {color: #ff6f3d;}
    </style>
    <div id="ct" class="ct2_a wp cl space_pm">
        <div class="mn">
            <div class="bm bw0">
                <h1 class="mt"><img alt="pm" src="static/image/feed/pm.gif" class="vm"> 消息</h1>
                <ul class="tb cl">
                    <li class="y"><a href="home.php?mod=space&amp;do=pm&amp;subop=setting" class="xi2">短消息设置</a></li>
                    <li class="a"><a href="home.php?mod=space&amp;do=pm&amp;filter=privatepm">私人消息</a></li>
                    <li><a href="home.php?mod=space&amp;do=pm&amp;filter=announcepm">公共消息</a></li>
                    <li class="o"><a href="home.php?mod=spacecp&amp;ac=pm" title="发送消息"></a></li>
                </ul>

                <div class="emp">
                    当前没有相应的短消息
                </div>

            </div>
        </div>
        <div class="appl"><div class="tbn">
            <h2 class="mt bbda">通知</h2>
            <ul>
                <li class="a"><em class="notice_pm" style="display:none;"></em><a href="home.php?mod=space&amp;do=pm">消息 </a></li><li><em class="notice_mypost" style="display:none;"></em><a href="home.php?mod=space&amp;do=notice&amp;view=mypost">我的帖子</a></li>
                <li><em class="notice_interactive" style="display:none;"></em><a href="home.php?mod=space&amp;do=notice&amp;view=interactive">坛友互动</a></li>
                <li><em class="notice_system" style="display:none;"></em><a href="home.php?mod=space&amp;do=notice&amp;view=system">系统提醒</a></li>
                <li><em class="notice_app" style="display:none;"></em><a href="home.php?mod=space&amp;do=notice&amp;view=app">应用提醒</a></li>
            </ul>
        </div><div class="drag">
            <!--[diy=diy2]--><div id="diy2" class="area"></div><!--[/diy]-->
        </div>

        </div>
    </div>

    <div class="wp mtn">
        <!--[diy=diy3]--><div id="diy3" class="area"></div><!--[/diy]-->
    </div>
</div>
<div id="ft" class="cl">
    <!--页面高度不能撑满屏幕时，设置footer的位置在最底边-->
    <script>
        var screenHeight = screenWidth = 0;
        if(document.documentElement.clientHeight){
            screenHeight = document.documentElement.clientHeight;
            screenWidth = document.documentElement.clientWidth;
        }else{
            screenWidth = document.body.clientWidth;
            screenHeight = document.body.clientHeight;
        }

        var fttop = document.getElementById('ft').offsetTop;
        if((fttop+65)<screenHeight){
            if(document.getElementById('wp')){
                var header_footer_height = document.getElementById('hd').offsetHeight + document.getElementById('ft').offsetHeight;
                document.getElementById('wp').style.minHeight = (screenHeight-header_footer_height - 21) + 'px';
            }else if(document.getElementById('ct')){
                var header_footer_height = document.getElementById('toptb').offsetHeight + document.getElementById('hd').offsetHeight + document.getElementById('ft').offsetHeight;
                document.getElementById('ct').style.minHeight = (screenHeight-header_footer_height - 66) + 'px';
            }else{
                document.getElementById('ft').style.position = 'absolute';
                document.getElementById('ft').style.top = (screenHeight-66) + 'px';
                document.getElementById('ft').style.width = '100%';
            }
        }
    </script>
    <!--设置footer end-->
    <div class="wp" id="footer">
        <div id="flk"><div style="float: left;"><img src="http://static.bbs.miui.com/static/image/miui/base/footer_title.png"></div>
            <div style="display: inline;">
                <a href="http://www.miui.com/" target="_blank">MIUI官方网站</a>
                <span class="pipe">|</span><a href="http://www.mi.com" target="_blank">小米旗下网站</a>
                <span class="pipe">|</span><a href="http://jobs.miui.com/" target="_blank">加入小米</a>
                <span class="pipe">|</span><a href="a-69.html" target="_blank">免责声明</a>
                <span class="pipe">|</span><a href="http://www.miui.com/forum.php?mod=newindex&amp;mobile=yes">手机版</a>
            </div>
            <div style="float: right;color: #7e7e7e;">
                Copyright © 2016 MIUI
            </div>
            <div style="padding-left: 28px; color: #7e7e7e;">
                京ICP备10046444号 | 京公网安备11010802020134号 | 京ICP证110507号</div>
            <div style="display:none;">
                &nbsp;<a href="http://discuz.qq.com/service/security" target="_blank" title="防水墙保卫网站远离侵害"><img src="static/image/common/security.png"></a></div>
            <div style="display:none;"><div style="display:none;">
                <script src="http://s17.cnzz.com/stat.php?id=2441309&amp;web_id=2441309&amp;show=pic" type="text/javascript"></script><script src="http://c.cnzz.com/core.php?web_id=2441309&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=2441309" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="http://icon.cnzz.com/img/pic.gif"></a>
                <script src="http://w.cnzz.com/c.php?id=30049650" language="JavaScript"></script>
                <script>
                    var _hmt = _hmt || [];
                    (function() {
                        var hm = document.createElement("script");
                        hm.src = "//hm.baidu.com/hm.js?3c5ef0d4b3098aba138e8ff4e86f1329";
                        var s = document.getElementsByTagName("script")[0];
                        s.parentNode.insertBefore(hm, s);
                    })();
                </script>
            </div></div>
            <div style="display:none;">

            </div>
            <script type="text/javascript">

                var _gaq = _gaq || [];
                _gaq.push(['_setAccount', 'UA-37617644-2']);
                _gaq.push(['_trackPageview']);

                (function() {
                    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                })();

            </script><p class="xs0">
            </p>
        </div>
    </div>
</div>
<div id="scrolltop" style="left: auto; right: 0px; visibility: visible;">
    <span hidefocus="true"><a title="返回顶部" onclick="window.scrollTo('0','0')" class="scrolltopa"><b>返回顶部</b></a></span>
</div>
<script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
</body>
</html>