<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发表帖子</title>
    <link type="text/css" href="css/post.css" rel="stylesheet">
    <link rel="stylesheet" href="css/header.css" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css">
    <script type="text/javascript" rel="script" src="js/jquery-3.1.0.min.js"></script>
    <script rel="script" src="js/post.js" type="text/javascript"></script>
</head>
<body style="overflow: auto">
<div id="typeid_ctrl_menu" class="sltm" initialized="true" style="width: 111px; position: absolute; z-index: 301; left: 13.4844px; top: 338px; display: none;">
    <ul>
        <li class="current">选择主题分类</li>
        <li>求助</li>
        <li>教程</li>
        <li>资讯</li>
        <li>测评</li>
        <li>晒机</li>
        <li>软件</li>
        <li>游戏</li>
        <li>聊聊</li>
        <li>ROM</li>
        <li>其他</li>
    </ul>
</div>
    <div class="header">
        <div id="um">
            <div class="p">
                <div class="hd_di1">
                    <c:if test="${empty user}">
						<a href="">登录</a>
                    <span class="pipe">|</span>
					</c:if> 
					<c:if test="${!empty user}">
            <div class="avt y" id="header_user_info" onmouseover="document.getElementById('header_user_info_box').style.display='block'"; onmouseout="document.getElementById('header_user_info_box').style.display='none'">
                    <div class="avt y hd_t_a" style="z-index: 0;">
                        <a class="header_avatar" href="home.php?mod=space&amp;uid=243748688">
                        <img src="images/homepage/${user.userHeader }" onerror="this.onerror=null;this.src='images/homepage/noavatar_small.gif'">
                        </a>
                    </div>
                    <div class="hd_t_a vwmy" style="z-index: 0;">
                        <a id="hd_u_name" href="perspace?uid=${user.userId }" target="_blank" title="访问我的空间" style="color: rgb(124, 124, 124);">${user.userName }</a>
                        <span id="arrowup2" style="margin:0;"></span>
                    </div>

                    <div id="header_user_info_box" style="display: none;" onmouseover="document.getElementById('header_user_info_box').style.display='block'"; onmouseout="document.getElementById('header_user_info_box').style.display='none'">
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
                                    <a href="home.php?mod=space&amp;do=pm" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);"><span class="uinfo_list_icon" style="background-position:-90px -40px;"></span>消息
                                    </a>
                                </li>
                                <li class="r_m">
                                    <a href="home.php?mod=task&amp;item=new" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);"><span class="uinfo_list_icon" style="background-position:-110px -40px;"></span>任务
                                    </a>
                                </li>
                                <li><a href="home.php?mod=space&amp;do=favorite&amp;view=me" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);" style="color: rgb(102, 102, 102);"><span class="uinfo_list_icon" style="background-position: -130px -40px;"></span>收藏</a></li>
                                <li class="r_m"><a href="home.php?mod=medal" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);"><span class="uinfo_list_icon" style="background-position:-150px -40px;"></span>勋章</a></li>
                                <li><a href="home.php?mod=spacecp&amp;ac=profile" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);" style="color: rgb(102, 102, 102);"><span class="uinfo_list_icon" style="background-position: -170px -40px;"></span>设置</a></li>
                                <li class="r_m"><a href="member.php?mod=logging&amp;action=logout&amp;formhash=f2641434" onmouseover="uinfoHoverIn(this);" onmouseout="uinfoHoverOut(this);" style="color: rgb(102, 102, 102);"><span class="uinfo_list_icon" style="background-position: -190px -40px;"></span>退出</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
					</c:if>
                </div>
                <div class="hd_di1" style="line-height:28px;">
                    <a href="javascript:;" id="switchwidth" onclick="widthauto(this)" title="切换到窄版" class="switchwidth">切换到窄版</a>
                </div>
            </div>
            <div style="clear:both"></div>
            <div id="searchbar">
                <form id="scbar_form" method="post" autocomplete="off" onsubmit="searchFocus($('scbar_txt'))" action="search.php?searchsubmit=yes" target="_blank">
                    <input type="hidden" name="mod" id="scbar_mod" value="search">
                    <input type="hidden" name="formhash" value="58b95d53">
                    <input type="hidden" name="srchtype" value="title">
                    <input type="hidden" name="srhfid" value="0">
                    <input type="hidden" name="srhlocality" value="forum::newindex">
                    <input type="text" name="srchtxt" id="scbar_txt" autocomplete="off" placeholder="搜索">
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
            <a href="javascript:;" id="qmenu" onmouseover="delayShow(this, function () {showMenu({'ctrlid':'qmenu','pos':'34!','ctrlclass':'a','duration':2});showForummenu(0);}, 0)" initialized="true" class=""></a>
            <ul>
                <li class="a" id="mn_Neacf"><a href="index" hidefocus="true">首页</a></li>
                <li id="mn_forum"><a href="#" hidefocus="true">新帖</a></li>
                <li id="mn_N30f4"><a href="#" hidefocus="true">版块</a></li>
                <li id="mn_N8e4f"><a href="#" hidefocus="true" title="MIUI">MIUI专区<span>MIUI</span></a></li>
                <li id="mn_N8a77"><a href="#" hidefocus="true" title="Share">资源分享<span>Share</span></a></li>
                <li id="mn_Nef49"><a href="#" hidefocus="true" title="Chat">谈天说地<span>Chat</span></a></li>
                <li id="mn_group"><a href="#" hidefocus="true" title="Club">俱乐部<span>Club</span></a></li>
                <li id="mn_N06f4"><a href="#" hidefocus="true" title="Geek">极客秀<span>Geek</span></a></li>
                <li id="mn_N75f3"><a href="#" hidefocus="true" title="Download">MIUI下载<span>Download</span></a></li>
                <li id="mn_Nbd05"><a href="#" hidefocus="true" title="Friday">橙色星期五<span>Friday</span></a></li>
                <li id="mn_N077a"><a href="#" hidefocus="true" target="_blank">论坛APP</a></li>
            </ul>
        </div>
    </div>
    <div id="content">
        <div id="pt" class="bm cl">
            <div class="z">
                <a href="" class="nvhm" title="首页">MIUI论坛</a>
                <em>›</em>
                <a href="">资源分享</a>
                <em>›</em>
                <a href="">软件</a>
                <em>›</em>
                发表帖子
            </div>
            <div id="ct" class="ct2_a ct2_a_r wp cl">
                <input type="hidden" name="formhash" id="formhash" value="07bed461">
                <input type="hidden" name="posttime" id="posttime" value="1473326829">
                <input type="hidden" name="wysiwyg" id="e_mode" value="1">
                <div class="bm bw0 cl" id="editorbox">
                    <ul class="tb_miui cl mbw">
                        <li class="a">
                            <a style="font-family: 'Microsoft YaHei';font-weight: bold;color: black" href="javascript:;" onclick="switchpost('forum.php?mod=post&amp;action=newthread')">发表帖子</a>
                        </li>
                    </ul>
                    <div id="draftlist_menu" style="display:none">
                        <ul class="xl xl1">
                            <li class="xi2">
                                <a href="forum.php?mod=guide&amp;view=my&amp;type=thread&amp;filter=save&amp;fid=0" target="_blank">查看所有草稿</a>
                            </li>
                        </ul>
                    </div>
                    <div id="postbox">
                        <div class="pbt cl">
                            <div class="ftid_miui_sel">
                                <select name="typeid" id="typeid" width="111" selecti="0" style="display: none;">
                                    <option value="0"></option>
                                </select>
                                <a href="javascript:;" id="typeid_ctrl" style="width:111px" tabindex="1" initialized="true"  onclick="document.getElementById('typeid_ctrl_menu').style.display=document.getElementById('typeid_ctrl_menu').style.display=='block' ? 'none':'block';">选择主题分类</a>
                            </div>
                            <div class="z">
                                <span>
                                    <input type="text" name="subject" id="subject" class="miui_bd" value="" onblur="if($('tags')){relatekw('-1','-1');doane();}" onkeyup="strLenCalc(this, 'checklen', 80);" style="width: 35em;text-align:left;" tabindex="1">
                                </span>
                                <span id="subjectchk">还可输入 <strong id="checklen">80</strong> 个字符</span>
                                <script type="text/javascript">strLenCalc($('subject'), 'checklen', 80)</script>
                            </div>
                        </div>
                        <IFRAME scrolling="no" frameborder="0" NAME="content_frame" width=100% height=753px SRC="ueditor/_examples/completeDemo.html" ></IFRAME>
                        <div id="e_bbar" class="bbar">
                                <em id="e_tip">&nbsp;数据已于 20:03 保存</em>
                                <span id="e_svdsecond">
                                    <a title="点击关闭自动保存" href="javascript:;" onclick="setAutosave()">10 秒后保存</a>
                                </span>
                                <a href="javascript:;" onclick="discuzcode('svd');return false;" id="e_svd">保存数据</a> |
                                <a href="javascript:;" onclick="discuzcode('rst');return false;" id="e_rst">恢复数据</a> &nbsp;&nbsp;
                                <a href="javascript:;" onclick="discuzcode('chck');return false;" id="e_chck">字数检查</a> |
                                <a href="javascript:;" onclick="discuzcode('tpr');return false;" id="e_tpr">清除内容</a> &nbsp;&nbsp;
                                <span id="e_resize">
                                    <a href="javascript:;" onclick="editorsize('+');return false;">加大编辑框</a>
                                    |
                                    <a href="javascript:;" onclick="editorsize('-');return false;">
                                        缩小编辑框
                                    </a>
                                    <img src="images/post/resize.gif" onmousedown="editorresize(event)">
                                </span>
                            </div>
                    </div>
                        <div id="post_extra" class="ptm cl">
                            <div id="post_extra_tb" class="cl" onselectstart="return false">
                                <label id="extra_additional_b" onclick="showExtra('extra_additional')" class="">
                                    <span id="extra_additional_chk">附加选项</span>
                                </label>
                            </div>
                            <div id="post_extra_c">
                                <div class="exfm cl" id="extra_additional_c" style="display: none;">
                                    <table cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td class="xw1" valign="top">基本属性</td>
                                            <td>
                                                <label for="hiddenreplies">
                                                    <input type="checkbox" name="hiddenreplies" id="hiddenreplies" class="pc" value="1">
                                                    回帖仅作者可见
                                                </label>
                                                <label for="ordertype">
                                                    <input type="checkbox" name="ordertype" id="ordertype" class="pc" value="1">
                                                    回帖倒序排列
                                                </label>
                                                <label for="allownoticeauthor">
                                                    <input type="checkbox" name="allownoticeauthor" id="allownoticeauthor" class="pc" value="1" checked="checked">
                                                    接收回复通知
                                                </label>
                                                <label for="addfeed">
                                                    <input type="checkbox" name="addfeed" id="addfeed" class="pc" value="1" checked="checked">
                                                    发送动态
                                                </label>
                                                <label for="usesig">
                                                    <input type="checkbox" name="usesig" id="usesig" class="pc" value="1" checked="checked">
                                                    使用个人签名
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="xw1" valign="top">文本特性</td>
                                            <td>
                                                <label for="htmlon">
                                                    <input type="checkbox" name="htmlon" id="htmlon" class="pc" value="0" disabled="disabled">
                                                    HTML 代码
                                                </label>
                                                <label for="allowimgcode">
                                                    <input type="checkbox" id="allowimgcode" class="pc" disabled="disabled" checked="checked">
                                                    [img] 代码
                                                </label>
                                                <label for="allowimgurl">
                                                    <input type="checkbox" id="allowimgurl" class="pc" checked="checked">
                                                    解析图片链接
                                                </label>
                                                <label for="parseurloff">
                                                    <input type="checkbox" name="parseurloff" id="parseurloff" class="pc" value="1">
                                                    禁用链接识别
                                                </label>
                                                <label for="smileyoff">
                                                    <input type="checkbox" name="smileyoff" id="smileyoff" class="pc" value="1">
                                                    禁用表情
                                                </label>
                                                <label for="bbcodeoff">
                                                    <input type="checkbox" name="bbcodeoff" id="bbcodeoff" class="pc" value="1">
                                                    禁用编辑器代码
                                                </label>
                                                <label for="imgcontent">
                                                    <input type="checkbox" name="imgcontent" id="imgcontent" class="pc" value="0" disabled="disabled">
                                                    内容生成图片
                                                </label>
                                            </td>
                                        </tr>
                                        </tbody></table>
                                </div>
                            </div>
                        </div>
                        <div class="mtm mbm pnpost">
                            <a href="home.php?mod=spacecp&amp;ac=credit&amp;op=rule&amp;fid=577" class="y" target="_blank">本版积分规则</a>
                            <button type="submit" id="postsubmit" class="pn pnc mi_post" value="true" name="topicsubmit">
                                <span>发表帖子</span>
                            </button>
                            <input type="hidden" id="postsave" name="save" value="">
                            <button type="button" id="postsubmit" class="pn mi_save" value="true" onclick="$('postsave').value = 1;$('postsubmit').click();">
                                <em>保存草稿</em>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
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
        <span>
            <a href="forum.php?forumlist=1" hidefocus="true" class="returnboard" title="返回首页"><b>返回首页</b></a>
        </span>
    </div>
    <script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
</body>
</html>