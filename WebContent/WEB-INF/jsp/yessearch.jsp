<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>搜索 - MIUI论坛</title>
    <link href="css/BBS.css" rel="stylesheet">
    <link rel="stylesheet" href="css/login.css" media="all">
    <script src="js/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function($) {
	$('.theme-login').click(function(){
	$('.theme-popover-mask').fadeIn(100);
	$('.theme-popover').slideDown(200);
	})
	$('.theme-poptit .close').click(function(){
	$('.theme-popover-mask').fadeOut(100);
	$('.theme-popover').slideUp(200);
	})
	
	})
	</script>
</head>
<body id="nv_search" onkeydown="if(event.keyCode==27) return false;">
<div class="theme-popover">
<div class="theme-poptit">
<a href="javascript:;" title="关闭" class="close">×</a>
<h3>登录 是一种态度</h3>
</div>
<div class="theme-popbod dform">
<form class="theme-signin" name="loginform" action="login" method="post">
<ol>
<li><h4>你必须先登录！要不怎么发言!</h4></li>
<li><strong>用户名：</strong><input class="ipt" type="text" name="userName" placeholder="输入用户名" size="20" /></li>
<li><strong>密码：</strong><input class="ipt" type="password" name="userPassword" placeholder="输入您的密码" size="20" /></li>
<li><input class="btn btn-primary" type="submit" name="submit" value=" 登 录 " /><a href="#" class="btn btn-primary" >注 册</a></li>
</ol>
</form>
</div>
</div>
<div class="theme-popover-mask"></div>
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div id="toptb" class="cl">
    <div class="z" style="display:none;">
        <a href="./" id="navs" class="showmenu xi2" onmouseover="showMenu(this.id)">返回首页</a>
    </div>
    <div class="z" style="margin:6px 0 0 2px;">
        <a href="" title="MIUI论坛"><img src="images/yessearch/logo_sc_s.png" alt="MIUI论坛"></a>
    </div>
    <div class="y">
    <c:if test="${!empty user }">
        <strong><a href="" target="_blank" title="访问我的空间">${user.userName }</a></strong>
        <a href="javascript:;" id="myspace" class="showmenu xi2" onmouseover="showMenu(this.id);" initialized="true" onclick="document.getElementById('myspace_menu').style.display=document.getElementById('myspace_menu').style.display=='block' ? 'none':'block';">快捷导航</a>
        <a href="setup">设置</a>
        <a href="quit">退出</a>
        </c:if>
        <c:if test="${empty user }">
        <a href="">注册</a>
        <a class="theme-login">登录</a>
        </c:if>
    </div>
</div>
<div class="p_pop h_pop" id="mn_userapp_menu" style="display: none"></div>
<ul class="p_pop h_pop" id="navs_menu" style="display: none">
    <li id="mn_Neacf"><a href="" >首页</a></li>
    <li id="mn_forum"><a href="" >新帖</a></li>
    <li id="mn_N30f4"><a href="" >版块</a></li>
    <li id="mn_N8e4f"><a href="" title="MIUI">MIUI专区<span>MIUI</span></a></li>
    <li id="mn_N8a77"><a href="" title="Share">资源分享<span>Share</span></a></li>
    <li id="mn_Nef49"><a href="" title="Chat">谈天说地<span>Chat</span></a></li>
    <li id="mn_group"><a href="" title="Club">俱乐部<span>Club</span></a></li>
    <li id="mn_N06f4"><a href="" title="Geek">极客秀<span>Geek</span></a></li>
    <li id="mn_N75f3"><a href="" title="Download">MIUI下载<span>Download</span></a></li>
    <li id="mn_N21c3"><a href="" >四格报告</a></li>
    <li id="mn_N077a"><a href="" target="_blank">论坛APP</a></li>
</ul>
<ul id="myspace_menu" class="p_pop" style="position: absolute; z-index: 301; left: 1024px; top: 28px; display: none;" initialized="true">
    <li><a href="forum.php?mod=guide&amp;view=my" style="background-image:url(images/homepage/thread_b.png) !important" class="">帖子</a></li>
    <li><a href="" style="background-image:url(images/homepage/friend_b.png) !important">好友</a></li>
    <li><a href="" style="background-image:url(images/homepage/album_b.png) !important">相册</a></li>
    <li><a href="" style="background-image:url(images/homepage/medal_b.png) !important">勋章</a></li>
    <li><a href="" style="background-image:url(images/homepage/favorite_b.png) !important">收藏</a></li>
    <li><a href="" style="background-image:url(images/homepage/task_b.png) !important">任务</a></li>
    <li><a href="" style="background-image:url(images/homepage/ranklist_b.png) !important">排行</a></li>
    <li><a href="" title="积分商城" style="background-image:url(images/homepage/153141sa6lrbht6l55ibam.png?kFvKH9) !important">商城</a></li>
</ul>
<div id="ct" class="cl w">
    <div class="mw">
        <form class="searchform" method="post" autocomplete="off" action="search" onsubmit="if($('scform_srchtxt')) searchFocus($('scform_srchtxt'));">
            <input type="hidden" name="formhash" value="07b25dc7">
            <table id="scform" class="mbm" cellspacing="0" cellpadding="0">
                <tbody>
                <tr>
                    <td>
                        <h1 style="display:none;">
                            <a href="search.php" title="MIUI论坛">
                                <img src="images/yessearch/logo_sc_s.png" alt="MIUI论坛">
                            </a>
                        </h1>
                    </td>
                    <td>
                        <div id="scform_tb" class="cl">
                            <a href="" class="a">帖子</a>
                            <a href="">用户</a>
                        </div>
                        <table id="scform_form" cellspacing="0" cellpadding="0">
                            <tbody></tbody>
                            <tr>
                                <td class="td_srchtxt">
                                    <input type="text" id="scform_srchtxt" name="postContent" size="45" maxlength="40" value="${postContent }" tabindex="1" x-webkit-speech="" speech="" class=" xg1" placeholder="请输入搜索内容">
                                    <script type="text/javascript">initSearchmenu('scform_srchtxt');$('scform_srchtxt').focus();</script>
                                </td>
                                <td class="td_srchbtn">
                                    <input type="hidden" name="searchsubmit" value="yes">
                                    <button type="submit" id="scform_submit" class="schbtn"><strong>搜索</strong></button>
                                </td>
                                <td>
                                    <span class="y">&nbsp;&nbsp;
                                        <a href="javascript:;" id="quick_sch" class="showmenu" onclick="document.getElementById('quick_sch_menu').style.display=document.getElementById('quick_sch_menu').style.display=='block' ? 'none':'block';">快速</a>
                                        <a href="">高级</a>
                                        <input type="checkbox" name="refineSearch" id="refineSearch" style="display:none;" value="1">
                                        <span class="miui_ckb" onclick="switch_chk('refineSearch',this);" style="background-position: 0px -93px;"></span>模糊搜索</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            <ul id="quick_sch_menu" class="p_pop" style="position: absolute;z-index: 301;left: 750px;top: 103px;display: none;">
                <li><a href="">1 小时以内的新帖</a></li>
                <li><a href="">4 小时以内的新帖</a></li>
                <li><a href="">8 小时以内的新帖</a></li>
                <li><a href="">24 小时以内的新帖</a></li>
                <li><a href="">1 周内帖子</a></li>
                <li><a href="">1 月内帖子</a></li>
                <li><a href="">6 月内帖子</a></li>
                <li><a href="">1 年内帖子</a></li>
            </ul>
        </form>
        <div class="tl">
            <div class="sttl mbn">
                <h2>结果: <em>找到 “<span class="emfont">${postContent }</span>” 相关内容 ${searchPostCount } 个</em></h2>
            </div>
            <div class="slst mtw" id="threadlist">
                <ul>
                <c:forEach items="${searchPostList }" var="searchPost" end="${endNumber-1 }" begin="${startNumber }">
                    <li class="pbw" id="5306816">
                        <h3 class="xs3">
                            <a href="" target="_blank">
                            ${searchPost.postHeader }
                            </a>
                        </h3>
                        <p class="xg1">
                            <span class="s_re_nums1 s_re">26</span>  
                            <span class="s_re_nums1 s_vi">225</span>
                        </p>
                        <p class="search_msg">
                        ${searchPost.postContent }
                        </p>
                        <p>
                            <span>${searchPost.postTime }</span>-
                            <span>
                                <a href="" target="_blank">雨夜紫风铃</a>
                            </span>-
                            <span>
                                <a href="" target="_blank" class="xi1">小米金融</a>
                            </span>
                        </p>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="pgs cl mbm">
                <div class="pg">
                    <a href="search?p=${upIndex }&postContent=${postContent }" class="pre">上一页</a>
                    <a href="search?p=${nextIndex }&postContent=${postContent }" class="nxt">下一页</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function switch_chk(id,obj){
        var cked = $(id).checked;
        if(cked){
            $(id).checked = false;
            obj.style.backgroundPosition = '0px -93px';
        }else{
            $(id).checked = true;
            obj.style.backgroundPosition = '-25px -93px';
        }
    }
</script>
<div id="ft" class="w cl sft">
    <div id="flk" class="sfooter"><div style="float: left;"><img src="images/yessearch/footer_title.png"></div>
        <div style="display: inline;">
            <a href="http://www.miui.com/" target="_blank">MIUI官方网站</a>
            <span class="pipe">|</span><a href="http://www.mi.com" target="_blank">小米旗下网站</a>
            <span class="pipe">|</span><a href="http://jobs.miui.com/" target="_blank">加入小米</a>
            <span class="pipe">|</span><a href="a-69.html" target="_blank">免责声明</a>
            <span class="pipe">|</span><a href="http://www.miui.com/search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;kw=%E9%A2%9D&amp;month=&amp;refineSearch=0&amp;mobile=yes">手机版</a>
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

        </script></div>
</div>
<script src="http://static.bbs.miui.com/static/js/footer_extend.js?do6" type="text/javascript"></script>
<script src="home.php?mod=spacecp&amp;ac=pm&amp;op=checknewpm&amp;rand=1473679694" type="text/javascript"></script>
<div id="discuz_tips" style="display:none;"></div>
<script type="text/javascript">
    var tipsinfo = '10755402|X3|0.6||0||243748688|25|1473679694|fea2a6232462628867ff1457cc4e5045|2';
</script>
<script src="http://discuz.gtimg.cn/cloud/scripts/discuz_tips.js?v=1" type="text/javascript" charset="UTF-8"></script>
</body>
</html>