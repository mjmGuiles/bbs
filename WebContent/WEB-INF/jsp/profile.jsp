<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${user.userName }的个人资料</title>
    <link href="css/profile.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" rel="script" src="js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="js/footer.js"></script>
</head>
<body>
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div id="toptb" class="cl">
    <div class="y">
        <a href="perspace" class="xw1" target="_blank" title="访问我的空间">${user.userName }</a>
        <a href="javascript:;" id="myspace" class="showmenu cur1" onmouseout="document.getElementById('myspace_menu').style.display='none';" onmouseover="document.getElementById('myspace_menu').style.display='block';" initialized="true">快捷导航</a>
        <a href="setup">设置</a>
        <a href="" id="pm_ntc" target="_blank">消息</a>
        <a href="" id="myprompt" target="_blank">提醒</a><span id="myprompt_check"></span>
        <a href="quit">退出</a>
        <a id="diy-tg" href="javascript:openDiy();" title="装扮空间">DIY</a></div>
    <div class="z">
        <a href="" title="MIUI论坛" class="xw1">MIUI论坛</a>
        <a style="background-position:80px 12px;" href="forum.php" id="navs" class="showmenu" onmouseout="document.getElementById('navs_menu').style.display='none';" onmouseover="document.getElementById('navs_menu').style.display='block';" initialized="true">返回论坛首页</a>
    </div>
</div>
<div id="hd" class="wp cl">

    <h2 id="spaceinfoshow"><strong id="spacename" class="mbn">
        ${user.userName }的个人空间</strong>
<span class="xs0 xw0">
<a id="domainurl" href="" onclick="setCopy('http://www.miui.com/index.php?243748688', '空间地址复制成功');return false;">http://www.miui.com/index.php?243748688</a>
                                <span class="pipe" style="display:inline-block;color:#ebebeb;">|</span>
<a href="javascript:;" onclick="addFavorite(location.href, document.title)">收藏</a>
<a id="domainurl" href="" onclick="setCopy('http://www.miui.com/index.php?243748688', '空间地址复制成功');return false;">复制</a>
</span>
        <span id="spacedescription" class="xs1 xw0 mtn"></span>
    </h2><div id="nv">
    <ul>
        <li><a href="perspace">空间首页</a></li>
        <li><a href="">动态</a></li>
        <li><a href="">记录</a></li>
        <li><a href="">相册</a></li>
        <li><a href="">主题</a></li>
        <li><a href="">分享</a></li>
        <li><a href="">留言板</a></li>
        <li><a href="setup">个人资料</a></li>
    </ul>
</div>
</div>
<ul id="navs_menu" class="p_pop topnav_pop" style="position: absolute; z-index: 301; left: 72px; top: 28px; display: none;" initialized="true" onmouseout="document.getElementById('navs_menu').style.display='none';" onmouseover="document.getElementById('navs_menu').style.display='block';">
    <li id="mn_Neacf"><a href="index" hidefocus="true" class=" hidefocus">首页</a></li>
    <li id="mn_forum"><a href="newpost" hidefocus="true">新帖</a></li>
    <li id="mn_N30f4"><a href="forum" hidefocus="true">版块</a></li>
    <li id="mn_N8e4f"><a href="" hidefocus="true" title="MIUI">MIUI专区<span>MIUI</span></a></li>
    <li id="mn_N8a77"><a href="" hidefocus="true" title="Share">资源分享<span>Share</span></a></li>
    <li id="mn_Nef49"><a href="" hidefocus="true" title="Chat">谈天说地<span>Chat</span></a></li>
    <li id="mn_group"><a href="" hidefocus="true" title="Club">俱乐部<span>Club</span></a></li>
    <li id="mn_N06f4"><a href="" hidefocus="true" title="Geek">极客秀<span>Geek</span></a></li>
    <li id="mn_N75f3"><a href="" hidefocus="true" title="Download">MIUI下载<span>Download</span></a></li>
    <li id="mn_N0d29"><a href="" hidefocus="true" title="Friday">橙色星期五<span>Friday</span></a></li>
    <li id="mn_N077a"><a href="" hidefocus="true" target="_blank">论坛APP</a></li>
</ul>
<ul id="myspace_menu" class="p_pop" onmouseout="document.getElementById('myspace_menu').style.display='none';" onmouseover="document.getElementById('myspace_menu').style.display='block';" style="position: absolute; z-index: 301; left: 1085px; top: 28px; display: none;" initialized="true">
    <li><a href="perspace" class=" hidefocus">我的空间</a></li>
    <li><a href="my" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/thread_b.png) !important">帖子</a></li>
    <li><a href="" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/friend_b.png) !important">好友</a></li>
    <li><a href="" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/album_b.png) !important">相册</a></li>
    <li><a href="" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/medal_b.png) !important">勋章</a></li>
    <li><a href="favorite" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/favorite_b.png) !important">收藏</a></li>
    <li><a href="" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/task_b.png) !important">任务</a></li>
    <li><a href="" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/ranklist_b.png) !important">排行</a></li>
    <li><a href="" title="积分商城" style="background-image:url(http://attach.bbs.miui.com/common/cf/153141sa6lrbht6l55ibam.png?rxdEX4) !important">商城</a></li>
</ul>
<div id="ct" class="ct2 wp cl">
    <div class="mn">
        <div class="bm">
            <div class="bm_h">
                <h1 class="mt">个人资料</h1>
            </div>
            <div class="bm_c">
                <div class="bm_c u_profile">

                    <div class="pbm mbm bbda cl">
                        <h2 class="mbn">
                            ${user.userName }<span class="xw0">UID: 243748688</span>
                        </h2>
                        <ul class="pf_l cl mbn">
                            <li><em>空间访问量：</em><strong class="xi1">0</strong></li>
                            <li><em>邮箱状态：</em>已验证</li>
                            <li><em>视频认证：</em>未认证</li>
                        </ul>
                        <ul class="cl bbda mbm">
                            <li>
                                <em class="xg2">统计信息：</em>
                                <a href="">好友数 0</a>
                                <span class="pipe">|</span>
                                <a href="">记录数 0</a>
                                <span class="pipe">|</span>
                                <a href="">相册数 0</a>
                                <span class="pipe">|</span><a href="" target="_blank">回帖数 1</a>
                                <span class="pipe">|</span>
                                <a href="" target="_blank">主题数 0</a>
                                <span class="pipe">|</span>
                                <a href="" target="_blank">分享数 0</a>
                            </li>
                        </ul>
                        <table class="table_show" border="1" bordercolor="#f4f4f4">
                            <tbody><tr><th>性别</th>
                                <th>生日</th>
                            </tr>
                            <tr><td>保密</td>
                                <td>-</td>
                            </tr>
                            </tbody></table>
                        <ul>
                        </ul>
                    </div>
                    <div class="pbm mbm bbda cl" style="position: relative;">
                        <h2 class="mbn">活跃概况</h2>
                        <ul class="group_show">
                            <li>
                            <em class="xg1">用户组：</em>
                            <span  class="xi2" onmouseover="showTip(this)" tip="积分 203, 距离下一级还需 297 积分">
                            <a href="" target="_blank">玩机狂人</a>
                            </span>  
                            </li>
                        </ul>
                        <div style="clear: both"></div>
                        <div id="pbbs" class="pf_l">
                            <div>
                            <span class="th">在线时间</span>
                            <span>4 小时</span>
                            </div>
                            <div>
                            <span class="th">注册时间</span>
                            <span>${user.regTime }</span>
                            </div>
                            <div>
                            <span class="th">最后访问</span>
                            <span>2016-9-11 13:08</span>
                            </div>
                            <div>
                            <span class="th">注册 IP</span>
                            <span>223.81.95.71 - - 中国</span>
                            </div>
                            <div>
                            <span class="th">上次访问 IP</span>
                            <span>223.72.62.6 - - 中国</span>
                            </div>
                            <div>
                            <span class="th">上次活动时间</span>
                            <span>2016-9-11 13:06</span>
                            </div>
                            <div>
                            <span class="th">上次发表时间</span>
                            <span>2016-9-6 20:25</span>
                            </div>
                            <div>
                            <span class="th">所在时区</span>
                            <span>使用系统默认</span>
                        </div>
                        </div>
                    </div>
                    <div id="psts" class="cl">
                        <h2 class="mbn">统计信息</h2>
                        <div class="pf_l">
                            <div><span class="th">已用空间</span><span>   0 B </span></div><div><span class="th">积分</span><span>203</span></div><div><span class="th">经验</span><span>200 米</span></div>
                            <div><span class="th">威望</span><span>0 米</span></div>
                            <div><span class="th">贡献</span><span>0 米</span></div>
                            <div><span class="th">小米粒</span><span>0 米</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sd"><div id="pcd" class="bm cl"><div class="bm_c">
        <div class="hm">
            <p><a href="perspace" class="avtm"><img src="images/profile/88_avatar_middle.jpg?1" onerror="this.onerror=null;this.src='images/profile/noavatar_middle.gif'"></a></p>
            <h2 class="xs2"><a href="perspace">${user.userName }</a>

            </h2>
        </div>
        <ul class="xl xl2 cl ul_list">
            <li class="ul_diy"><a href="">装扮空间</a></li>
            <li class="ul_msg"><a href="">查看留言</a></li>
            <li class="ul_avt"><a href="">编辑头像</a></li>
            <li class="ul_profile"><a href="setup">更新资料</a></li>
        </ul>
    </div>
    </div>
    </div>
    <script type="text/javascript">
        function succeedhandle_followmod(url, msg, values) {
            var fObj = $('followmod');
            if(values['type'] == 'add') {
                fObj.innerHTML = '取消收听';
                fObj.href = 'home.php?mod=spacecp&ac=follow&op=del&fuid='+values['fuid'];
            } else if(values['type'] == 'del') {
                fObj.innerHTML = '收听TA';
                fObj.href = 'home.php?mod=spacecp&ac=follow&op=add&hash=07b25dc7&fuid='+values['fuid'];
            }
        }
    </script>
</div>
<div id="ft" class="cl">
    <!--设置footer end-->
    <div class="wp" id="footer">
        <div id="flk"><div style="float: left;"><img src="images/profile/footer_title.png"></div>
            <div style="display: inline;">
                <a href="http://www.miui.com/" target="_blank">MIUI官方网站</a>
                <span class="pipe">|</span><a href="http://www.mi.com" target="_blank">小米旗下网站</a>
                <span class="pipe">|</span><a href="http://jobs.miui.com/" target="_blank">加入小米</a>
                <span class="pipe">|</span><a href="a-69.html" target="_blank">免责声明</a>
                <span class="pipe">|</span><a href="http://www.miui.com/home.php?mod=space&amp;uid=243748688&amp;do=index&amp;mobile=yes">手机版</a>
            </div>
            <div style="float: right;color: #7e7e7e;">
                Copyright © 2016 MIUI
            </div>
            <div style="padding-left: 28px; color: #7e7e7e;">
                京ICP备10046444号 | 京公网安备11010802020134号 | 京ICP证110507号</div>
            <div style="display:none;">
                &nbsp;<a href="http://discuz.qq.com/service/security" target="_blank" title="防水墙保卫网站远离侵害"><img src="images/profile/security.png"></a></div>
            <div style="display:none;"><div style="display:none;">
                <script src="http://s17.cnzz.com/stat.php?id=2441309&amp;web_id=2441309&amp;show=pic" type="text/javascript"></script>
                <script src="http://c.cnzz.com/core.php?web_id=2441309&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script>
                <a href="http://www.cnzz.com/stat/website.php?web_id=2441309" target="_blank" title="站长统计">
                <img border="0" hspace="0" vspace="0" src="http://icon.cnzz.com/img/pic.gif"
                ></a>
                <script src="http://w.cnzz.com/c.php?id=30049650" language="JavaScript"></script>
            </div></div>
            <div style="display:none;">

            </div>
            <p class="xs0">
            </p>
        </div></div>
</div>
</body>
</html>