<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>搜索 - MIUI论坛</title>
    <link href="css/BBS.css" rel="stylesheet">
</head>
<body id="nv_search" onkeydown="if(event.keyCode==27) return false;">
<div id="append_parent"></div><div id="ajaxwaitid"></div>
<div id="toptb" class="cl">
    <div class="z" style="display:none;">
        <a href="./" id="navs" class="showmenu xi2" onmouseover="showMenu(this.id)">返回首页</a>
    </div>
    <div class="z" style="margin:6px 0 0 2px;">
        <a href="search.php" title="MIUI论坛"><img src="images/yessearch/logo_sc_s.png" alt="MIUI论坛"></a>
    </div>
    <div class="y">
        <strong><a href="home.php?mod=space" target="_blank" title="访问我的空间">卡塞马拉</a></strong>
        <a href="javascript:;" id="myspace" class="showmenu xi2" onmouseover="showMenu(this.id);" initialized="true" onclick="document.getElementById('myspace_menu').style.display=document.getElementById('myspace_menu').style.display=='block' ? 'none':'block';">快捷导航</a>
        <a href="home.php?mod=spacecp">设置</a>
        <a href="member.php?mod=logging&amp;action=logout&amp;formhash=07b25dc7">退出</a>
    </div>
</div>
<div class="p_pop h_pop" id="mn_userapp_menu" style="display: none"></div>
<ul class="p_pop h_pop" id="navs_menu" style="display: none">            <li id="mn_Neacf"><a href="index.html" hidefocus="true">首页</a></li>            <li id="mn_forum"><a href="forum.php" hidefocus="true">新帖</a></li>            <li id="mn_N30f4"><a href="forum.php?forumlist=1" hidefocus="true">版块</a></li>            <li id="mn_N8e4f"><a href="gid-19.html" hidefocus="true" title="MIUI">MIUI专区<span>MIUI</span></a></li>            <li id="mn_N8a77"><a href="gid-20.html" hidefocus="true" title="Share">资源分享<span>Share</span></a></li>            <li id="mn_Nef49"><a href="gid-14.html" hidefocus="true" title="Chat">谈天说地<span>Chat</span></a></li>            <li id="mn_group"><a href="group.php" hidefocus="true" title="Club">俱乐部<span>Club</span></a></li>            <li id="mn_N06f4"><a href="http://geek.miui.com" hidefocus="true" title="Geek">极客秀<span>Geek</span></a></li>            <li id="mn_N75f3"><a href="download.html" hidefocus="true" title="Download">MIUI下载<span>Download</span></a></li>                        <li id="mn_N21c3"><a href="extra.php?mod=signcard/index" hidefocus="true">四格报告</a></li>                                                                                                            <li id="mn_N077a"><a href="http://api.bbs.miui.com/app/index/downloadApp?fromdaohang" hidefocus="true" target="_blank">论坛APP</a></li></ul>

<ul id="myspace_menu" class="p_pop" style="position: absolute; z-index: 301; left: 1024px; top: 28px; display: none;" initialized="true"><li><a href="forum.php?mod=guide&amp;view=my" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/thread_b.png) !important" class="">帖子</a></li>
    <li><a href="home.php?mod=space&amp;do=friend" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/friend_b.png) !important">好友</a></li>
    <li><a href="home.php?mod=space&amp;do=album" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/album_b.png) !important">相册</a></li>
    <li><a href="home.php?mod=medal" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/medal_b.png) !important">勋章</a></li>
    <li><a href="home.php?mod=space&amp;do=favorite&amp;view=me" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/favorite_b.png) !important">收藏</a></li>
    <li><a href="home.php?mod=task" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/task_b.png) !important">任务</a></li>
    <li><a href="misc.php?mod=ranklist" style="background-image:url(http://www.miui.com/static//image/miui/base/feed/ranklist_b.png) !important">排行</a></li>
    <li><a href="shop.html" title="积分商城" style="background-image:url(http://attach.bbs.miui.com/common/cf/153141sa6lrbht6l55ibam.png?kFvKH9) !important">商城</a></li>
</ul><div id="ct" class="cl w">
    <div class="mw">
        <form class="searchform" method="post" autocomplete="off" action="search.php?mod=forum" onsubmit="if($('scform_srchtxt')) searchFocus($('scform_srchtxt'));">
            <input type="hidden" name="formhash" value="07b25dc7"><table id="scform" class="mbm" cellspacing="0" cellpadding="0">
            <tbody><tr>
                <td><h1 style="display:none;"><a href="search.php" title="MIUI论坛"><img src="images/yessearch/logo_sc_s.png" alt="MIUI论坛"></a></h1></td>
                <td>
                    <div id="scform_tb" class="cl">
                        <a href="search.php?mod=forum&amp;srchtxt=%E9%A2%9D&amp;searchsubmit=yes" class="a">帖子</a><a href="search.php?mod=user&amp;srchtxt=%E9%A2%9D&amp;searchsubmit=yes">用户</a></div>
                    <table id="scform_form" cellspacing="0" cellpadding="0">
                        <tbody><tr>
                            <td class="td_srchtxt"><input type="text" id="scform_srchtxt" name="srchtxt" size="45" maxlength="40" value="额" tabindex="1" x-webkit-speech="" speech="" class=" xg1" placeholder="请输入搜索内容"><script type="text/javascript">initSearchmenu('scform_srchtxt');$('scform_srchtxt').focus();</script></td>
                            <td class="td_srchbtn"><input type="hidden" name="searchsubmit" value="yes"><button type="submit" id="scform_submit" class="schbtn"><strong>搜索</strong></button></td>
                            <td>
                                                            <span class="y">
                                                                    &nbsp;&nbsp;
                                                                    <a href="javascript:;" id="quick_sch" class="showmenu" onclick="document.getElementById('quick_sch_menu').style.display=document.getElementById('quick_sch_menu').style.display=='block' ? 'none':'block';">快速</a>
                                                                                                                                                <a href="search.php?mod=forum&amp;adv=yes&amp;srchtxt=%E9%A2%9D">高级</a>
                                                                                                                                        <input type="checkbox" name="refineSearch" id="refineSearch" style="display:none;" value="1">
                                                                    <span class="miui_ckb" onclick="switch_chk('refineSearch',this);" style="background-position: 0px -93px;"></span>模糊搜索
                                                            </span>
                            </td>
                        </tr>
                        </tbody></table>
                </td>
            </tr>
            </tbody></table>
            <ul id="quick_sch_menu" class="p_pop" style="position: absolute;z-index: 301;left: 750px;top: 103px;display: none;">
                <li><a href="search.php?mod=forum&amp;srchfrom=3600&amp;searchsubmit=yes&amp;srchtxt=额">1 小时以内的新帖</a></li>
                <li><a href="search.php?mod=forum&amp;srchfrom=14400&amp;searchsubmit=yes&amp;srchtxt=额">4 小时以内的新帖</a></li>
                <li><a href="search.php?mod=forum&amp;srchfrom=28800&amp;searchsubmit=yes&amp;srchtxt=额">8 小时以内的新帖</a></li>
                <li><a href="search.php?mod=forum&amp;srchfrom=86400&amp;searchsubmit=yes&amp;srchtxt=额">24 小时以内的新帖</a></li>
                <li><a href="search.php?mod=forum&amp;srchfrom=604800&amp;searchsubmit=yes&amp;srchtxt=额">1 周内帖子</a></li>
                <li><a href="search.php?mod=forum&amp;srchfrom=2592000&amp;searchsubmit=yes&amp;srchtxt=额">1 月内帖子</a></li>
                <li><a href="search.php?mod=forum&amp;srchfrom=15552000&amp;searchsubmit=yes&amp;srchtxt=额">6 月内帖子</a></li>
                <li><a href="search.php?mod=forum&amp;srchfrom=31536000&amp;searchsubmit=yes&amp;srchtxt=额">1 年内帖子</a></li>
            </ul>
        </form>

        <div class="tl">
            <div class="sttl mbn">
                <h2>结果: <em>找到 “<span class="emfont">额</span>” 相关内容 1341 个</em></h2>
            </div><div class="slst mtw" id="threadlist">
            <ul><li class="pbw" id="5525422">
                <h3 class="xs3">
                    <a href="forum.php?mod=viewthread&amp;tid=5525422&amp;highlight=%E9%A2%9D" target="_blank">你们什么时候提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                </h3>
                <p class="xg1"><span class="s_re_nums1 s_re">4</span>   <span class="s_re_nums1 s_vi">4</span></p>
                <p class="search_msg">昨天第一次手动还款没有提<strong><font color="#ff0000">额</font></strong></p>
                <p>
                    <span>2016-9-11 16:31</span>
                    -
<span>
<a href="space-uid-1584972769.html" target="_blank">gpm6</a>
</span>
                    -
                    <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                </p>
            </li>
                <li class="pbw" id="5510520">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5510520&amp;highlight=%E9%A2%9D" target="_blank">开热点为什么不能控制连接人数，和控制流量<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">4</span>   <span class="s_re_nums1 s_vi">4</span></p>
                    <p class="search_msg">--</p>
                    <p>
                        <span>2016-9-10 16:16</span>
                        -
<span>
<a href="space-uid-906157905.html" target="_blank">八嘎，，</a>
</span>
                        -
                        <span><a href="forum-110-1.html" target="_blank" class="xi1">设置</a></span>
                    </p>
                </li>
                <li class="pbw" id="5534955">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5534955&amp;highlight=%E9%A2%9D" target="_blank">耗电，<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>发热严重</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">0</span>   <span class="s_re_nums1 s_vi">0</span></p>
                    <p class="search_msg">--</p>
                    <p>
                        <span>2016-9-12 11:03</span>
                        -
<span>
<a href="space-uid-2222222414.html" target="_blank">楼管大妈</a>
</span>
                        -
                        <span><a href="forum-512-1.html" target="_blank" class="xi1">耗电</a></span>
                    </p>
                </li>
                <li class="pbw" id="5509772">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5509772&amp;highlight=%E9%A2%9D" target="_blank">不提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>啊，太少了</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">28</span>   <span class="s_re_nums1 s_vi">144</span></p>
                    <p class="search_msg">需要我把欠款都还了才能提<strong><font color="#ff0000">额</font></strong>么？
                        </p>
                    <p>
                        <span>2016-9-10 15:10</span>
                        -
<span>
<a href="space-uid-452933131.html" target="_blank">FGFG110</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5026282">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5026282&amp;highlight=%E9%A2%9D" target="_blank">小米贷款用多久会提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>？</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">19</span>   <span class="s_re_nums1 s_vi">394</span></p>
                    <p class="search_msg">从七月初到现在，每天活跃好像也没多大用，从红米1s到2a，到小米2s又用回红米，如果换个4s会不会提<strong><font color="#ff0000">额</font></strong>?家里红米手机4个，小米的也有3个，是不是用贵一点的提<strong><font color="#ff0000">额</font></strong>快些？ ...</p>
                    <p>
                        <span>2016-7-31 12:45</span>
                        -
<span>
<a href="space-uid-813358039.html" target="_blank">donald_duan</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5524216">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5524216&amp;highlight=%E9%A2%9D" target="_blank">关于提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">5</span>   <span class="s_re_nums1 s_vi">20</span></p>
                    <p class="search_msg">我想问问大神们！就好像在分期还款中，会不会提升<strong><font color="#ff0000">额</font></strong>度？</p>
                    <p>
                        <span>2016-9-11 14:42</span>
                        -
<span>
<a href="space-uid-59157826.html" target="_blank">骆氏菠萝啤</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5513348">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5513348&amp;highlight=%E9%A2%9D" target="_blank"><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>，中奖了手机客户端不能私信吗</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">3</span>   <span class="s_re_nums1 s_vi">3</span></p>
                    <p class="search_msg">。。最近中奖了，，但是 在手机客户端找不到私信</p>
                    <p>
                        <span>2016-9-10 19:55</span>
                        -
<span>
<a href="space-uid-945954230.html" target="_blank">笑癌晚期</a>
</span>
                        -
                        <span><a href="forum-5-1.html" target="_blank" class="xi1">灌者为王</a></span>
                    </p>
                </li>
                <li class="pbw" id="5517102">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5517102&amp;highlight=%E9%A2%9D" target="_blank"><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">0</span>   <span class="s_re_nums1 s_vi">0</span></p>
                    <p class="search_msg">--</p>
                    <p>
                        <span>2016-9-11 00:20</span>
                        -
<span>
<a href="space-uid-193703683.html" target="_blank">jakey5429</a>
</span>
                        -
                        <span><a href="forum-614-1.html" target="_blank" class="xi1">BUG反馈</a></span>
                    </p>
                </li>
                <li class="pbw" id="5515370">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5515370&amp;highlight=%E9%A2%9D" target="_blank">手机系统<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>是不是有问题</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">0</span>   <span class="s_re_nums1 s_vi">0</span></p>
                    <p class="search_msg">来自 MIUI 用户反馈 的940805559</p>
                    <p>
                        <span>2016-9-10 22:14</span>
                        -
<span>
<a href="space-uid-709390083.html" target="_blank">未登录帐户</a>
</span>
                        -
                        <span><a href="forum-614-1.html" target="_blank" class="xi1">BUG反馈</a></span>
                    </p>
                </li>
                <li class="pbw" id="5511730">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5511730&amp;highlight=%E9%A2%9D" target="_blank"><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>，都一个月没充电了</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">0</span>   <span class="s_re_nums1 s_vi">0</span></p>
                    <p class="search_msg"></p>
                    <p>
                        <span>2016-9-10 17:53</span>
                        -
<span>
<a href="space-uid-705707172.html" target="_blank">@影子爱人-</a>
</span>
                        -
                        <span><a href="forum-39-1.html" target="_blank" class="xi1">极客播报</a></span>
                    </p>
                </li>
                <li class="pbw" id="4069082">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=4069082&amp;highlight=%E9%A2%9D" target="_blank">米NOTE 16G改64G内存！！想改<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>可以看看！！大家多提问！</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">260</span>   <span class="s_re_nums1 s_vi">9814</span></p>
                    <p class="search_msg">16G的一直够用，后悔买的内存小了，又不想换机，看见淘宝上可以换，问了问觉得可以试试，就定换了   机子拿回来用了3天一切正常  很稳定！刷机什么的都没事！

                        这是没换的时候


                        **** 本内容被作者隐藏 ****[/hid ...</p>
                    <p>
                        <span>2016-4-13 00:40</span>
                        -
<span>
<a href="space-uid-70238339.html" target="_blank">唔.涡</a>
</span>
                        -
                        <span><a href="forum-529-1.html" target="_blank" class="xi1">小米Note/顶配</a></span>
                    </p>
                </li>
                <li class="pbw" id="5467121">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5467121&amp;highlight=%E9%A2%9D" target="_blank">小米贷款一般什么时候可以提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">14</span>   <span class="s_re_nums1 s_vi">173</span></p>
                    <p class="search_msg">哪位师傅知道</p>
                    <p>
                        <span>2016-9-7 15:50</span>
                        -
<span>
<a href="space-uid-530816737.html" target="_blank">阳光男孩198025</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5497358">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5497358&amp;highlight=%E9%A2%9D" target="_blank"><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>，更新不提示。</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">7</span>   <span class="s_re_nums1 s_vi">17</span></p>
                    <p class="search_msg">系统更新没提示而且手动检查显示当前系统已经是最新的</p>
                    <p>
                        <span>2016-9-9 19:14</span>
                        -
<span>
<a href="space-uid-1148651398.html" target="_blank">衰落雨了我</a>
</span>
                        -
                        <span><a href="forum-606-1.html" target="_blank" class="xi1">小米手机5</a></span>
                    </p>
                </li>
                <li class="pbw" id="5415444">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5415444&amp;highlight=%E9%A2%9D" target="_blank"><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>，这是不是bug？</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">1</span>   <span class="s_re_nums1 s_vi">51</span></p>
                    <p class="search_msg"></p>
                    <p>
                        <span>2016-9-3 20:02</span>
                        -
<span>
<a href="space-uid-554982412.html" target="_blank">宋一明</a>
</span>
                        -
                        <span><a href="forum-97-1.html" target="_blank" class="xi1">状态栏</a></span>
                    </p>
                </li>
                <li class="pbw" id="5469263">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5469263&amp;highlight=%E9%A2%9D" target="_blank"><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>(⊙o⊙)…，王者荣耀。。。</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">25</span>   <span class="s_re_nums1 s_vi">328</span></p>
                    <p class="search_msg">王者荣耀这游戏，说实话刚开始挺好玩的，感觉还不错，可以是后来越玩越没有意思，开了八核打团卡，改了温控打团卡，楼楼好像和卡过不去了</p>
                    <p>
                        <span>2016-9-7 18:56</span>
                        -
<span>
<a href="space-uid-1111025519.html" target="_blank">好卡饿哦</a>
</span>
                        -
                        <span><a href="forum-600-1.html" target="_blank" class="xi1">红米手机3</a></span>
                    </p>
                </li>
                <li class="pbw" id="5475067">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5475067&amp;highlight=%E9%A2%9D" target="_blank">提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>都是几号？</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">6</span>   <span class="s_re_nums1 s_vi">107</span></p>
                    <p class="search_msg">有提过<strong><font color="#ff0000">额</font></strong>的来回答一下都是几号提的？</p>
                    <p>
                        <span>2016-9-8 07:07</span>
                        -
<span>
<a href="space-uid-254721615.html" target="_blank">我是谁松</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5448463">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5448463&amp;highlight=%E9%A2%9D" target="_blank">有没有今天提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>的</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">32</span>   <span class="s_re_nums1 s_vi">125</span></p>
                    <p class="search_msg">有没有今天<strong><font color="#ff0000">额</font></strong>度提了的啊？？？</p>
                    <p>
                        <span>2016-9-6 09:23</span>
                        -
<span>
<a href="space-uid-1550655771.html" target="_blank">小月哉三书</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5471430">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5471430&amp;highlight=%E9%A2%9D" target="_blank">我是!8mo<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>的dtapqcf</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">0</span>   <span class="s_re_nums1 s_vi">0</span></p>
                    <p class="search_msg">--</p>
                    <p>
                        <span>2016-9-7 21:40</span>
                        -
<span>
<a href="space-uid-173579898.html" target="_blank">173579898</a>
</span>
                        -
                        <span><a href="forum-614-1.html" target="_blank" class="xi1">BUG反馈</a></span>
                    </p>
                </li>
                <li class="pbw" id="5470879">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5470879&amp;highlight=%E9%A2%9D" target="_blank">i@t<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">0</span>   <span class="s_re_nums1 s_vi">0</span></p>
                    <p class="search_msg">--</p>
                    <p>
                        <span>2016-9-7 21:01</span>
                        -
<span>
<a href="space-uid-173579898.html" target="_blank">173579898</a>
</span>
                        -
                        <span><a href="forum-614-1.html" target="_blank" class="xi1">BUG反馈</a></span>
                    </p>
                </li>
                <li class="pbw" id="4954147">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=4954147&amp;highlight=%E9%A2%9D" target="_blank">提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>22000</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">59</span>   <span class="s_re_nums1 s_vi">308</span></p>
                    <p class="search_msg">6000变…
                        </p>
                    <p>
                        <span>2016-7-21 23:23</span>
                        -
<span>
<a href="space-uid-3172791.html" target="_blank">小平小呆</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5465818">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5465818&amp;highlight=%E9%A2%9D" target="_blank"><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong><strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">1</span>   <span class="s_re_nums1 s_vi">9</span></p>
                    <p class="search_msg">么得</p>
                    <p>
                        <span>2016-9-7 13:48</span>
                        -
<span>
<a href="space-uid-957873330.html" target="_blank">惑学</a>
</span>
                        -
                        <span><a href="forum-483-1.html" target="_blank" class="xi1">小米手机4</a></span>
                    </p>
                </li>
                <li class="pbw" id="5431206">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5431206&amp;highlight=%E9%A2%9D" target="_blank">小米贷款什么时候可以提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong></a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">12</span>   <span class="s_re_nums1 s_vi">158</span></p>
                    <p class="search_msg">我的<strong><font color="#ff0000">额</font></strong>度不够用，怎么样才可以提<strong><font color="#ff0000">额</font></strong>度啊，请指教</p>
                    <p>
                        <span>2016-9-4 21:55</span>
                        -
<span>
<a href="space-uid-530816737.html" target="_blank">阳光男孩198025</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5450138">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5450138&amp;highlight=%E9%A2%9D" target="_blank">小米贷款怎么提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>了</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">6</span>   <span class="s_re_nums1 s_vi">171</span></p>
                    <p class="search_msg">请指教小米贷款怎么提<strong><font color="#ff0000">额</font></strong>啊</p>
                    <p>
                        <span>2016-9-6 11:44</span>
                        -
<span>
<a href="space-uid-530816737.html" target="_blank">阳光男孩198025</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
                <li class="pbw" id="5306816">
                    <h3 class="xs3">
                        <a href="forum.php?mod=viewthread&amp;tid=5306816&amp;highlight=%E9%A2%9D" target="_blank">我提<strong><font color="#ff0000"><font color="#ff0000">额</font></font></strong>了，，，，，，，发表一点小心得</a>
                    </h3>
                    <p class="xg1"><span class="s_re_nums1 s_re">26</span>   <span class="s_re_nums1 s_vi">225</span></p>
                    <p class="search_msg">多买小米商城的东西，衣服，净化器，电灯，插线板，水壶，电饭煲，发现我<strong><font color="#ff0000">额</font></strong>度提升了。

                        不知道是不是我心里作用，还是纯属巧合。</p>
                    <p>
                        <span>2016-8-28 12:13</span>
                        -
<span>
<a href="space-uid-168999937.html" target="_blank">雨夜紫风铃</a>
</span>
                        -
                        <span><a href="forum-547-1.html" target="_blank" class="xi1">小米金融</a></span>
                    </p>
                </li>
            </ul>
        </div>
            <div class="pgs cl mbm"><div class="pg"><strong>1</strong><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=2">2</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=3">3</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=4">4</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=5">5</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=6">6</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=7">7</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=8">8</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=9">9</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=10">10</a><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=56" class="last">... 56</a><label><input type="text" name="custompage" class="px" size="2" title="输入页码，按回车快速跳转" value="1" onkeydown="if(event.keyCode==13) {window.location='search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page='+this.value;; doane(event);}"><span title="共 56 页"> / 56 页</span></label><a href="search.php?mod=forum&amp;searchid=15418&amp;orderby=lastpost&amp;ascdesc=desc&amp;searchsubmit=yes&amp;refineSearch=0&amp;page=2" class="nxt">下一页</a></div></div></div>
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