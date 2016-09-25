<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link type="text/css" rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/login.css" media="all">
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/header.js"></script>
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
<body>
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
<div id="qmenu_menu" class="p_pop " onmouseover="document.getElementById('qmenu_menu').style.display='block'"; onmouseout="document.getElementById('qmenu_menu').style.display='none'" style="position: absolute; z-index: 301; left: 1075px; top: 150px; display: none;" initialized="true" ctrlid="qmenu" ctrlclass="a">
<c:if test="${!empty user}">
<ul class="cl nav">
<li><a href="my" style="background-image:url(images/homepage/thread_b.png) !important" class=" hidefocus">帖子</a></li>
<li><a href="friend" style="background-image:url(images/homepage/friend_b.png) !important">好友</a></li>
<li><a href="" style="background-image:url(images/homepage/album_b.png) !important">相册</a></li>
<li><a href="" style="background-image:url(images/homepage/medal_b.png) !important">勋章</a></li>
<li><a href="favorite" style="background-image:url(images/homepage/favorite_b.png) !important">收藏</a></li>
<li><a href="" style="background-image:url(images/homepage/task_b.png) !important">任务</a></li>
<li><a href="" style="background-image:url(images/homepage/ranklist_b.png) !important">排行</a></li>
<li><a href="" title="积分商城" style="background-image:url(images/homepage/153141sa6lrbht6l55ibam.png?Til9H7) !important">商城</a></li>
</ul>
</c:if>
<c:if test="${empty user}">
<div class="ptm pbw hm">
请 <a class="xi2 theme-login"><strong>登录</strong></a> 后使用快捷导航<br>没有帐号？<a href="member.php?mod=register" class="xi2 xw1">注册</a>
</div>
</c:if>
</div>
<div class="header">
<div id="um">
<div class="p">
<div class="hd_di1">
<c:if test="${empty user}">
						<a class="btn btn-primary btn-large theme-login">登录</a>
<span class="pipe">|</span>
					</c:if> 
					<c:if test="${!empty user}">
<div class="avt y" id="header_user_info" onmouseover="document.getElementById('header_user_info_box').style.display='block'" onmouseout="document.getElementById('header_user_info_box').style.display='none'">
<c:if test="${empty user.userHeader}">
<div class="avt y hd_t_a" style="z-index: 0;">
<a class="header_avatar" href="perspace?userId=${user.userId }">
<img height="24px" width="24px" src="images/homepage/noavatar_small.gif">
</a>
</div>
</c:if>
 <c:if test="${!empty user.userHeader}">
<div class="avt y hd_t_a" style="z-index: 0;">
<a class="header_avatar" href="perspace?userId=${user.userId }">
<img height="24px" width="24px" src="images/homepage/${user.userHeader }">
</a>
</div>
</c:if>
<div class="hd_t_a vwmy" style="z-index: 0;">
<a id="hd_u_name" href="perspace?userId=${user.userId }" target="_blank" title="访问我的空间" style="color: rgb(124, 124, 124);">${user.userName }</a>
<span id="arrowup2" style="margin:0;"></span>
</div>

<div id="header_user_info_box" style="display: none;" onmouseover="document.getElementById('header_user_info_box').style.display='block'" onmouseout="document.getElementById('header_user_info_box').style.display='none'">
<!-- <div class="uinfo_t_bg"> -->
<div class="uinfo_t_box">
<ul class="uinfo_t_box_other">
<li>用户组：玩机狂人</li>
<li>积&nbsp;&nbsp;&nbsp;分：204</li>
<li>帖&nbsp;&nbsp;&nbsp;子：1</li>
<li>好&nbsp;&nbsp;&nbsp;友：0</li>
</ul>
<ul class="uinfo_t_box_btn">
<li>
<a href="message" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);"><span class="uinfo_list_icon" style="background-position:-90px -40px;"></span>消息
</a>
</li>
<li class="r_m">
<a href="#" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);"><span class="uinfo_list_icon" style="background-position:-110px -40px;"></span>任务
</a>
</li>
<li><a href="favorite" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);" style="color: rgb(102, 102, 102);"><span class="uinfo_list_icon" style="background-position: -130px -40px;"></span>收藏</a></li>
<li class="r_m"><a href="" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);"><span class="uinfo_list_icon" style="background-position:-150px -40px;"></span>勋章</a></li>
<li><a href="setup" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);" style="color: rgb(102, 102, 102);"><span class="uinfo_list_icon" style="background-position: -170px -40px;"></span>设置</a></li>
<li class="r_m"><a href="quit" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);" style="color: rgb(102, 102, 102);"><span class="uinfo_list_icon" style="background-position: -190px -40px;"></span>退出</a></li>
</ul>
</div>
</div>
</div>
					</c:if>
</div>
<div class="hd_di1" style="margin-right:2px;">
<div class="header_topic" id="header_topic">
<a href="#" id="hd_pop_btn" class="hd_t_a" style="color: rgb(124, 124, 124); z-index: 101;" onmouseover="document.getElementById('topic_lists').style.display='block';" onmouseout="document.getElementById('topic_lists').style.display='none';">
MIUI官网
</a>
<div id="topic_lists" style="display: none;" onmouseover="document.getElementById('topic_lists').style.display='block';" onmouseout="document.getElementById('topic_lists').style.display='none';">
<ul class="hd_pop">
<li><div class="uinfo_t_bg"></div></li>
<li class="hd_first_content_li"><a href="http://en.miui.com/forum.php" target="_blank">English Forum</a></li>
<li><a href="http://www.mi.com">小米官网</a></li>
<li><a href="extra.php?mod=signcard/index">四格报告</a></li>
<li><a href="shop.html">积分商城</a></li>
<li><a href="joinus.html" target="_blank">特殊组申请</a></li>
<li><a href="joinus-4.html" target="_blank">MIUI内测申请</a></li>
<!--<li style="height:8px;background:url(http://static.bbs.miui.com/static/image/miui/base/head_topic_b_bg.png);border-radius:2px;"></li>-->
</ul>
</div>
</div>
</div>
<div class="hd_di1" style="line-height:28px;">
<a href="javascript:;" id="switchwidth" onclick="widthauto(this)" title="切换到窄版" class="switchwidth">切换到窄版</a>
</div>
</div>
<div style="clear:both"></div>
<div id="searchbar">
<form id="scbar_form" method="post" autocomplete="off" onsubmit="searchFocus($('scbar_txt'))" action="search" target="_blank">
<input type="hidden" name="mod" id="scbar_mod" value="search">
<input type="hidden" name="formhash" value="58b95d53">
<input type="hidden" name="srchtype" value="title">
<input type="hidden" name="srhfid" value="0">
<input type="hidden" name="srhlocality" value="forum::newindex">
<input type="text" name="postContent" id="scbar_txt" autocomplete="off" placeholder="搜索">
<input type="submit" name="searchsubmit" id="scbar_submit" value="1">
<script type="text/javascript">
MIUI_initSearchmenu('scbar', '');
</script>
</form>
</div>
</div>
 <a href="#" title="MIUI论坛" style="padding-left: 20px"><img src="images/homepage/logo.png" alt="MIUI论坛" border="0"></a>

<!-- QRCodeTest -->
<div id="downloadAppTest" onmouseover="document.getElementById('QRCodeTest').style.display='block';" onmouseout="document.getElementById('QRCodeTest').style.display='none';">
下载APP
<div id="QRCodeTest" style="display: none;">
<img style="width: 159px;height: 159px;" src="images/homepage/app_QRCode.png">
<span>扫描下载MIUI论坛APP</span>
</div>
</div>
<div id="nv">
<a href="javascript:;" id="qmenu" onmouseover="document.getElementById('qmenu_menu').style.display='block'" onmouseout="document.getElementById('qmenu_menu').style.display='none'" initialized="true" class=""></a>
<ul>
<li class="a" id="mn_Neacf"><a href="index" >首页</a></li>
<li id="mn_forum"><a href="getNewPost" >新帖</a></li>
<li id="mn_N30f4"><a href="getSection" >版块</a></li>
<li id="mn_N8e4f"><a href="#" title="MIUI">MIUI专区<span>MIUI</span></a></li>
<li id="mn_N8a77"><a href="#" title="Share">资源分享<span>Share</span></a></li>
<li id="mn_Nef49"><a href="#" title="Chat">谈天说地<span>Chat</span></a></li>
<li id="mn_group"><a href="#" title="Club">俱乐部<span>Club</span></a></li>
<li id="mn_N06f4"><a href="#" title="Geek">极客秀<span>Geek</span></a></li>
<li id="mn_N75f3"><a href="#" title="Download">MIUI下载<span>Download</span></a></li>
<li id="mn_Nbd05"><a href="#" title="Friday">橙色星期五<span>Friday</span></a></li>
<li id="mn_N077a"><a href="#" target="_blank">论坛APP</a></li>
</ul>
</div>
</div>
</body>
</html>
