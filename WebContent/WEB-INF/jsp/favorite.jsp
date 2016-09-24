<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>收藏</title>
    <link href="css/favorite.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/header.css" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css">
    <script type="text/javascript" src="js/header.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wp" class="wp" style="min-height: 438px;">
    <div id="pt" class="bm cl">
        <div class="z">
            <a href="./" class="nvhm" title="首页">MIUI论坛</a> <em>›</em>
            <a href="home.php?mod=space&amp;do=favorite">收藏</a>
        </div>
    </div>

    <style id="diy_style" type="text/css"></style>
    <div class="wp">
        <!--[diy=diy1]--><div id="diy1" class="area"></div><!--[/diy]-->
    </div>

    <div id="ct" class="ct2_a wp cl">
        <div class="mn">
            <!--[diy=diycontenttop]--><div id="diycontenttop" class="area"></div><!--[/diy]-->
            <div class="bm bw0">
                <h1 class="mt bbs">
                    <img alt="favorite" src="images/favorite/favorite.gif" class="vm">
                    全部收藏</h1>

                <form method="post" autocomplete="off" name="delform" id="delform" action="home.php?mod=spacecp&amp;ac=favorite&amp;op=delete&amp;type=all&amp;checkall=1" onsubmit="showDialog('确定要删除选中的收藏吗？', 'confirm', '', '$(\'delform\').submit();'); return false;">
                    <input type="hidden" name="formhash" value="07b25dc7">
                    <input type="hidden" name="delfavorite" value="true">
                    <p class="mtm pns">
                        <span class="miui_ckb" onclick="switch_chkall('checkall_1',this);" id="mckb_1" style="background-position: 0px -93px;"></span>全选
                        <label for="chkall" style="display:none;" onclick="checkall(this.form, 'favorite')"><input type="checkbox" id="checkall_1" name="chkall" class="pc vm"></label>
                        <button type="submit" name="delsubmit" value="true" class="pn4">删除选中收藏</button>
                    </p>
                    <ul id="favorite_ul" class="miui_favorite_ul"><li id="fav_2431880" class="bbda ptm pbm"><span class="miui_ckb" id="chkss_0" onclick="switch_chk('chks_0',this);" style="background-position: 0px -93px;"></span>
                        <a class="y a_delete" id="a_delete_2431880" href="home.php?mod=spacecp&amp;ac=favorite&amp;op=delete&amp;favid=2431880" onclick="showWindow(this.id, this.href, 'get', 0);" title="删除"></a>
                        <input type="checkbox" name="favorite[]" class="pc" value="2431880" id="chks_0" style="display: none;">
                        <span style="display:none;"><img src="images/favorite/discuz.gif" alt="forum" class="t"> </span><a href="forum-5-1.html" target="_blank">灌者为王</a> <span class="xg1"><span title="2016-9-10 17:25">昨天&nbsp;17:25</span></span>
                    </li>
                    </ul>
                    <p class="mtm pns">
                        <span class="miui_ckb" onclick="switch_chkall('checkall_1',this);" id="mckb_2" style="background-position: 0px -93px;"></span>全选
                        <button type="submit" name="delsubmit" value="true" class="pn4">删除选中收藏</button>
                    </p>
                </form>
            </div>
            <!--[diy=diycontentbottom]--><div id="diycontentbottom" class="area"></div><!--[/diy]-->
        </div>
        <div class="appl">
            <div class="tbn">
                <h2 class="mt bbda">收藏</h2>
                <ul>
                    <li class="a"><a href="home.php?mod=space&amp;do=favorite&amp;type=all">全部收藏</a></li>
                    <li><a href="home.php?mod=space&amp;do=favorite&amp;type=thread">帖子</a></li>
                    <li><a href="home.php?mod=space&amp;do=favorite&amp;type=forum">版块</a></li>
                    <li><a href="home.php?mod=space&amp;do=favorite&amp;type=group">俱乐部</a></li><li><a href="home.php?mod=space&amp;do=favorite&amp;type=album">相册</a></li><li><a href="home.php?mod=space&amp;do=favorite&amp;type=article">文章</a></li></ul>
            </div>
        </div>
    </div>

    <div class="wp mtn">
        <!--[diy=diy3]--><div id="diy3" class="area"></div><!--[/diy]-->
    </div>

    <script type="text/javascript">
        function favorite_delete(favid) {
            var el = $('fav_' + favid);
            if(el) {
                el.style.display = "none";
            }
        }

        var fav_chks = document.getElementsByName('favorite[]');
        if(fav_chks.length > 0){
            for(var i=0;i<fav_chks.length;i++){
                fav_chks[i].id = 'chks_'+i;
                fav_chks[i].style.display = 'none';
                var thtml = fav_chks[i].parentNode.innerHTML;
                fav_chks[i].parentNode.innerHTML = '<span class="miui_ckb" id="chkss_'+i+'" onclick="switch_chk(\'chks_'+i+'\',this);" style="background-position: 0px -93px;"></span>'+thtml;
            }
        }


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

        function miui_chkall(){
            var fav_chks = document.getElementsByName('favorite[]');
            if(fav_chks.length > 0){
                for(var i=0;i<fav_chks.length;i++){
                    switch_chk('chks_'+i,$('chkss_'+i));
                }
            }
        }

        function switch_chkall(id){
            var cked = $(id).getAttribute('checked');
            if(cked){
                $(id).setAttribute('checked','');
                $('mckb_1').style.backgroundPosition = '0px -93px';
                $('mckb_2').style.backgroundPosition = '0px -93px';
                miui_chkall();
            }else{
                $(id).setAttribute('checked','checked');
                $('mckb_1').style.backgroundPosition = '-25px -93px';
                $('mckb_2').style.backgroundPosition = '-25px -93px';
                miui_chkall();
            }
        }

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