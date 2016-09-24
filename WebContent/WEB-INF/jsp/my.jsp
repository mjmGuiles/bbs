<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的帖子</title>
    <link rel="stylesheet" href="css/my.css" type="text/css">
    <link rel="stylesheet" href="css/header.css" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css">
    <style type="text/css">
        .xl2 { background: url(images/my/vline.png) repeat-y 50% 0; }
        .xl2 li { width: 49.9%; }
        .xl2 li em { padding-right: 10px; }
        .xl2 .xl2_r em { padding-right: 0; }
        .xl2 .xl2_r i { padding-left: 10px; }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wp" class="wp">
    <div id="pt" class="bm cl">
        <div class="z">
            <a href="index" class="nvhm" title="首页">MIUI论坛</a> 
            <em>›</em> 
            <a href="my">我的帖子</a>
        </div>
    </div>
    <div class="boardnav">
        <div id="ct" class="ct2_a wp cl">
            <div class="appl">
                <div class="tbn">
                    <h2 class="mt bbda">帖子</h2>
                    <ul id="thread_types">
                        <li><a href="forum.php?mod=guide&amp;view=hot">最新热门</a></li>
                        <li><a href="forum.php?mod=guide&amp;view=digest">最新精华</a></li>
                        <li><a href="forum.php?mod=guide&amp;view=new">最新回复</a></li>
                        <li><a href="forum.php?mod=guide&amp;view=newthread">最新发表</a></li>
                        <li><a href="forum.php?mod=guide&amp;view=sofa">抢沙发</a></li>
                        <li class="xw1 a"><a id="filter_special" href="my" onmouseover="showMenu(this.id)">我的帖子</a></li>
                    </ul>
                </div>
            </div>
            <div class="mn">
                <div class="bm bml pbn" style="display:none;">
                    <div class="bm_h cl">
                        <h1 class="xs2">
                            我的帖子</h1>
                    </div>
                </div>
                <div style="height:15px;"></div>
                <div id="pgt" class="bm bw0 pgs cl">
                    <a onclick="showWindow('nav', this.href, 'get', 0)" href="post"><img src="images/my/pn_post_2.png" alt="发新帖"></a>
                </div>
                <div id="threadlist" class="tl bm bmw" style="position: relative;border:0px;">
                    <div class="th" style="border-top:2px solid #efefef;border-bottom:1px solid #efefef;">
                        <table cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <th colspan="2">
                                    标题
                                    &nbsp;&nbsp;&nbsp;
                                    <a href="forum.php?mod=guide&amp;view=my&amp;type=thread">主题</a><span class="pipe">|</span>
                                    <a href="forum.php?mod=guide&amp;view=my&amp;type=reply" style="font-weight:bold;color:#ff6f3d;">回复</a><span class="pipe">|</span>
                                    <a href="forum.php?mod=guide&amp;view=my&amp;type=postcomment">点评</a>
                                </th>
                            </tr>
                            </tbody><tbody class="bw0_all" id="searchbody">
                        <tr>
                            <th colspan="6">&nbsp;
                                <form method="get" action="forum.php">
                                    <input type="hidden" name="mod" value="guide">
                                    <input type="hidden" name="view" value="my">
                                    <input type="hidden" name="type" value="reply">
                                    状态:
                                    <div class="ftid_spacecp_prav ftids">
                                        <select name="filter" id="filter" selecti="0" style="display: none;">
                                            <option value=""></option></select><a href="javascript:;" id="filter_ctrl" style="width:48px" tabindex="1">全部</a>
                                    </div>
                                    &nbsp;&nbsp;选择版块:
                                    <div class="ftid_spacecp_level1 ftids">
                                        <select name="fid" id="forumlist" selecti="0" style="display: none;">

                                            <optgroup label="--机型专区"></optgroup>
                                            <optgroup label="--谈天说地"></optgroup>
                                            <optgroup label="--MIUI专区"></optgroup>
                                            <optgroup label="--智能硬件"></optgroup>
                                            <optgroup label="--资源分享"></optgroup>
                                            <optgroup label="--站务专区"></optgroup>
                                            <optgroup label="--独立应用"></optgroup>
                                            <option value="0"></option>
                                            </select>
                                            <a href="javascript:;" id="forumlist_ctrl" style="width:180px" tabindex="1">全部</a>
                                    </div>
                                    <button class="pn vm" style="background:#007cd5;"><em style="color:white;">搜索</em></button>
                                </form>
                            </th>
                        </tr>
                        </tbody>
                        </table>
                    </div>
                    <div>
                        <div id="forumnew" style="display:none"></div>
                        <table cellspacing="0" cellpadding="0">
                            <tbody id="normalthread_5382586">
                        <tr>
                            <td class="icn" style="display:none;">
                                <a href="thread-5382586-1-1.html" title="新窗口打开" target="_blank">
                                    <img src="images/my/folder_common.gif">
                                </a>
                            </td>
                            <th class="common">
                                <div>
                                    <div class="">
                                        <a style="color:black;" href="forum.php?mod=viewthread&amp;tid=5382586&amp;extra=" target="_blank" class="xst">【2016年9月2日】MIUI 第300周发布公告及更新日志</a>                                                                                &nbsp;
                                        <img src="images/my/image_s.gif" alt="attach_img" title="图片附件" align="absmiddle">
                                        <img src="images/my/hot_3.gif" align="absmiddle" alt="heatlevel" title="3 热度">
                                        <img src="images/my/agree.gif" align="absmiddle" alt="agree" title="帖子被加分">
                                        <span class="tps">&nbsp;...<a href="thread-5382586-2-1.html">2</a><a href="thread-5382586-3-1.html">3</a><a href="thread-5382586-4-1.html">4</a><a href="thread-5382586-5-1.html">5</a><a href="thread-5382586-6-1.html">6</a>..<a href="thread-5382586-3262-1.html">3262</a></span>
                                    </div>
                                    <div class="sub_infos_guide">
                                        <a href="space-uid-8.html" c="1" mid="card_621">扫地僧</a>                                                                                                                                &nbsp;
                                        <span>2016-9-1</span>
                                        &nbsp;
                                        <a href="space-username-MR%252F%25E5%25BE%2590.html" c="1" mid="card_8470">MR/徐</a>                                                                &nbsp;
                                        <a href="forum.php?mod=redirect&amp;tid=5382586&amp;goto=lastpost#lastpost"><span title="2016-9-11 15:22">半小时前</span></a>
                                    </div>
                                </div>
                            </th>

                            <td class="num" style="text-align:center;"><a style="color:#ff5f19;" href="forum.php?mod=viewthread&amp;tid=5382586&amp;extra=" class="xi2">32619</a><em>516903</em></td>
                            <td class="by"><a href="forum-37-1.html" target="_blank">产品发布</a></td>
                        </tr>
                        </tbody>
                            <tbody class="bw0_all">
                            <tr>
                                <td colspan="3"><div class="tl_reply pbm xg1"><a href="forum.php?mod=redirect&amp;goto=findpost&amp;ptid=5382586&amp;pid=134546265" target="_blank">很好很强大</a></div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="bm bw0 pgs cl">
                    <span class="pgb y"><a href="forum.php?mod=guide">导读首页</a></span>
                </div>
            </div>
        </div>
    </div>
    <div id="filter_special_menu" class="p_pop" style="display:none">
        <ul>
            <li><a href="home.php?mod=space&amp;do=poll&amp;view=me" target="_blank">投票</a></li>
            <li><a href="home.php?mod=space&amp;do=trade&amp;view=me" target="_blank">商品</a></li>
            <li><a href="home.php?mod=space&amp;do=reward&amp;view=me" target="_blank">悬赏</a></li>
            <li><a href="home.php?mod=space&amp;do=activity&amp;view=me" target="_blank">活动</a></li>
        </ul>
    </div>
    <script type="text/javascript">
        simulateSelect('filter',48);
        simulateSelect('forumlist',180);
    </script>
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
        <span>
            <a href="forum.php?forumlist=1" hidefocus="true" class="returnboard" title="返回首页"><b>返回首页</b></a>
        </span>
</div>
<script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
</body>
</html>