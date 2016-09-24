<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${user.userName }的空间</title>
    <link href="css/perspace.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	$(".god").click(function(){
    		doCart($(".friId").val())
    	})
    })
    function doCart(friId){
		$.ajax({
			type : "POST",
			url : "deleteFri",
			data : {
				friId :friId
			},
			dataType : "json",
			success : function(data) {

			}

		})
	}
    </script>
</head>
<body>
<div id="message_face_menu" class="p_pop facel" style="position: absolute; z-index: 1001; left: 400.5px; top: 864px;display: none" >
    <ul>
        <li><img src="images/perspace/1.gif" onclick="insertFace('message_face',1, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/2.gif" onclick="insertFace('message_face',2, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/3.gif" onclick="insertFace('message_face',3, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/4.gif" onclick="insertFace('message_face',4, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/5.gif" onclick="insertFace('message_face',5, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/6.gif" onclick="insertFace('message_face',6, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/7.gif" onclick="insertFace('message_face',7, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/8.gif" onclick="insertFace('message_face',8, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/9.gif" onclick="insertFace('message_face',9, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/10.gif" onclick="insertFace('message_face',10, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/11.gif" onclick="insertFace('message_face',11, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/12.gif" onclick="insertFace('message_face',12, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/13.gif" onclick="insertFace('message_face',13, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/14.gif" onclick="insertFace('message_face',14, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/15.gif" onclick="insertFace('message_face',15, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/16.gif" onclick="insertFace('message_face',16, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/17.gif" onclick="insertFace('message_face',17, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/18.gif" onclick="insertFace('message_face',18, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/19.gif" onclick="insertFace('message_face',19, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/20.gif" onclick="insertFace('message_face',20, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/21.gif" onclick="insertFace('message_face',21, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/22.gif" onclick="insertFace('message_face',22, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/23.gif" onclick="insertFace('message_face',23, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/24.gif" onclick="insertFace('message_face',24, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/25.gif" onclick="insertFace('message_face',25, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/26.gif" onclick="insertFace('message_face',26, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/27.gif" onclick="insertFace('message_face',27, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/28.gif" onclick="insertFace('message_face',28, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/29.gif" onclick="insertFace('message_face',29, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
        <li><img src="images/perspace/30.gif" onclick="insertFace('message_face',30, 'comment_message', 'undefined')" style="cursor:pointer; position:relative;"></li>
    </ul>
</div>
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div id="toptb" class="cl">
    <div class="y">
        <a href="perspace" class="xw1" target="_blank" title="访问我的空间">${user.userName }</a>
        <a href="javascript:;" id="myspace" class="showmenu cur1" onmouseout="document.getElementById('myspace_menu').style.display='none';" onmouseover="document.getElementById('myspace_menu').style.display='block';" initialized="true">快捷导航</a>
        <a href="setup">设置</a>
        <a href="message" id="pm_ntc" target="_blank">消息</a>
        <a href="" id="myprompt" target="_blank">提醒</a><span id="myprompt_check"></span>
        <a href="quit">退出</a>
        <a id="diy-tg" href="javascript:openDiy();" title="装扮空间">DIY</a></div>
    <div class="z">
        <a href="./forum.php" title="MIUI论坛" class="xw1">MIUI论坛</a>
        <a style="background-position:80px 12px;" href="forum.php" id="navs" class="showmenu" onmouseout="document.getElementById('navs_menu').style.display='none';" onmouseover="document.getElementById('navs_menu').style.display='block';" initialized="true">返回论坛首页</a>
    </div>
</div>
<div id="hd" class="wp cl">

    <h2 id="spaceinfoshow"><strong id="spacename" class="mbn">
        ${user.userName }的个人空间</strong>
<span class="xs0 xw0">
<a id="domainurl" href="http://www.miui.com/index.php?243748688" onclick="setCopy('http://www.miui.com/index.php?243748688', '空间地址复制成功');return false;">http://www.miui.com/index.php?243748688</a>
                                <span class="pipe" style="display:inline-block;color:#ebebeb;">|</span>
<a >收藏</a>
<a id="domainurl" href="http://www.miui.com/index.php?243748688" onclick="setCopy('http://www.miui.com/index.php?243748688', '空间地址复制成功');return false;">复制</a>
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
        <li><a href="profile">个人资料</a></li>
    </ul>
</div>
</div>
<ul id="navs_menu" class="p_pop topnav_pop" style="position: absolute; z-index: 301; left: 72px; top: 28px; display: none;" initialized="true" onmouseout="document.getElementById('navs_menu').style.display='none';" onmouseover="document.getElementById('navs_menu').style.display='block';">
    <li id="mn_Neacf"><a href="index"  class=" hidefocus">首页</a></li>
    <li id="mn_forum"><a href="newpost" >新帖</a></li>
    <li id="mn_N30f4"><a href="forum" >版块</a></li>
    <li id="mn_N8e4f"><a href="gid-19.html" title="MIUI">MIUI专区<span>MIUI</span></a></li>
    <li id="mn_N8a77"><a href="gid-20.html" title="Share">资源分享<span>Share</span></a></li>
    <li id="mn_Nef49"><a href="gid-14.html"  title="Chat">谈天说地<span>Chat</span></a></li>
    <li id="mn_group"><a href="group.php"  title="Club">俱乐部<span>Club</span></a></li>
    <li id="mn_N06f4"><a href="http://geek.miui.com"  title="Geek">极客秀<span>Geek</span></a></li>
    <li id="mn_N75f3"><a href=""  title="Download">MIUI下载<span>Download</span></a></li>
    <li id="mn_N0d29"><a href=""  title="Friday">橙色星期五<span>Friday</span></a></li>
    <li id="mn_N077a"><a href=""  target="_blank">论坛APP</a></li>
</ul>
<ul id="myspace_menu" class="p_pop" onmouseout="document.getElementById('myspace_menu').style.display='none';" onmouseover="document.getElementById('myspace_menu').style.display='block';" style="position: absolute; z-index: 301; left: 1085px; top: 28px; display: none;" initialized="true">
    <li><a href="perspace" class=" hidefocus">我的空间</a></li>
    <li><a href="my" style="background-image:url(images/yessearch/thread_b.png) !important">帖子</a></li>
    <li><a href="" style="background-image:url(images/yessearch/friend_b.png) !important">好友</a></li>
    <li><a href="" style="background-image:url(images/yessearch/album_b.png) !important">相册</a></li>
    <li><a href="" style="background-image:url(images/yessearch/medal_b.png) !important">勋章</a></li>
    <li><a href="favorite" style="background-image:url(images/yessearch/favorite_b.png) !important">收藏</a></li>
    <li><a href="" style="background-image:url(images/yessearch/task_b.png) !important">任务</a></li>
    <li><a href="" style="background-image:url(images/yessearch/ranklist_b.png) !important">排行</a></li>
    <li><a href="" title="积分商城" style="background-image:url(images/yessearch/153141sa6lrbht6l55ibam.png?rxdEX4) !important">商城</a></li>
</ul>
<div id="ct" class="wp w cl">
    <div id="diypage" class="area">
        <div id="frame1" class="frame cl" noedit="1">
            <div id="frame1_left" style="width:200px" class="z column">
                <div id="profile" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="profile">头像</a></span>
                    </div>
                    <div id="profile_content" class="dxb_bc">
                        <div>
                            <div class="hm">
                                <p>
                                    <a href="perspace?userId=${user.userId }" target="_blank">
                                        <img src="images/perspace/88_avatar_middle.jpg?1" onerror="this.onerror=null;this.src='images/homepage/noavatar_middle.gif'">
                                    </a>
                                </p>
                                <h2 class="mbn"><a href="perspace?userId=${user.userId }" target="_blank">${user.userName }</a></h2>
                            </div>
                            <ul class="xl xl2 cl ul_list">
                                <li class="ul_diy"><a href="">装扮空间</a></li>
                                <li class="ul_msg"><a href="message">查看留言</a></li>
                                <li class="ul_avt"><a href="">编辑头像</a></li>
                                <li class="ul_profile"><a href="setup">更新资料</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="statistic" class="block move-span">
                    <div class="blocktitle title">
                        <span>统计信息</span>
                    </div>
                    <div id="statistic_content" class="dxb_bc">
                        <div>
                            <p class="mbm xw1">已有 <strong class="xi1">--</strong> 人来访过</p>
                            <ul class="xl xl2 cl">
                                <li>积分: <a href="">203</a></li>
                                <li>经验: <a href="">200</a></li>
                                <li>威望: <a href="">--</a></li>
                                <li>贡献: <a href="">--</a></li>
                                <li>小米粒: <a href="">--</a></li>
                                <li>好友: <a href="">--</a></li>
                                <li>主题: <a href="">--</a></li>
                                <li>日志: <a href="">--</a></li>
                                <li>相册: <a href="">--</a></li>
                                <li>分享: <a href="">--</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="album" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="home.php?mod=space&amp;uid=243748688&amp;do=album&amp;view=me&amp;from=space">相册</a></span>
                    </div>
                    <div id="album_content" class="dxb_bc">
                        <ul class="ml cl">
                            <p class="emp">现在还没有相册，<a href="home.php?mod=spacecp&amp;ac=upload">上传图片</a></p>
                        </ul>
                    </div>
                </div>
                <div id="doing" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="home.php?mod=space&amp;uid=243748688&amp;do=doing&amp;view=me&amp;from=space">记录</a></span>
                    </div>
                    <div id="doing_content" class="dxb_bc">
                        <ul class="xl">
                            <p class="emp">现在还没有记录，<a href="home.php?mod=space&amp;uid=243748688&amp;do=doing&amp;view=me&amp;from=space">更新记录</a></p>
                        </ul>
                    </div>
                </div>
            </div>

            <div id="frame1_center" style="width:520px" class="z column">
                <div id="personalinfo" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="profile">个人资料</a></span>
                        <span class="y xw0"><a href="setup">编辑我的资料</a></span>
                    </div>
                    <div id="personalinfo_content" class="dxb_bc">
                        <ul id="pprl" class="mbm pbm bbda cl">
                            <li><em>性别</em>${user.userGender }</li>
                            <li><em>生日</em>${user.userBirth }</li>
                            <li><em>QQ</em>${user.userQq }</li>
                        </ul>
                        <p style="text-align: right;"><a href="profile">查看全部个人资料</a></p>
                    </div>
                </div>
                <div id="feed" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="home.php?mod=space&amp;uid=243748688&amp;do=home&amp;view=me&amp;from=space">动态</a></span>
                    </div>
                    <ul id="feed_content" class="dxb_bc el">
                        <li class="cl " id="feed_63770605_li">
                            <div class="cl">
                                <a class="t" href="home.php?mod=space&amp;uid=243748688&amp;do=home&amp;view=&amp;appid=0&amp;icon=post" title="只看此类动态">
                                    <img src="images/perspace/post.gif">
                                </a>
                                <a href="space-uid-243748688.html" target="_blank">${user.userName }</a>
                                回复了
                                <a href="space-uid-8.html" target="_blank">扫地僧</a>
                                的话题
                                <a href="forum.php?mod=redirect&amp;goto=findpost&amp;pid=134546265&amp;ptid=5382586" target="_blank">【2016年9月2日】MIUI 第300周发布公告及更新日志</a>
                                <span class="xg1">9-6 20:25</span>
                                <div class="ec_1">
                                    <div style="clear:both;"></div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="share" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="">分享</a></span>
                    </div>
                    <div id="share_content" class="dxb_bc"><p class="emp">现在还没有分享</p></div>
                </div>
                <div id="blog" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="">日志</a></span>
                    </div>
                    <div id="blog_content" class="dxb_bc xld">
                        <p class="emp">现在还没有日志，<a href="">发布日志</a></p>
                    </div>
                </div>
                <div id="thread" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="">主题</a></span>
                    </div>
                    <div id="thread_content" class="dxb_bc">
                        <p class="emp">现在还没有主题，<a href="" onclick="showWindow('nav', this.href);return false;">发布主题</a></p>
                    </div>
                </div>
                <div id="wall" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="home.php?mod=space&amp;uid=243748688&amp;do=wall">留言板</a></span>
                        <span class="y xw0"><a href="home.php?mod=space&amp;uid=243748688&amp;do=wall">全部</a></span>
                    </div>
                    <div id="wall_content" class="dxb_bc">
                        <div class="space_wall_post">
                            <form action="home.php?mod=spacecp&amp;ac=comment" id="quickcommentform_243748688" name="quickcommentform_243748688" method="post" autocomplete="off" onsubmit="ajaxpost('quickcommentform_243748688', 'return_commentwall_243748688');doane(event);">
                                <span id="message_face" onclick="showFace(this.id, 'comment_message');return false;" class="cur1">
                                    <img src="images/perspace/facelist.gif" alt="facelist" class="mbn vm">
                                </span>
                                <br>
                                <textarea name="message" id="comment_message" class="pt" rows="3" cols="60" onkeydown="ctrlEnter(event, 'commentsubmit_btn');" style="width: 90%;"></textarea>
                                <input type="hidden" name="refer" value="home.php?mod=space&amp;uid=243748688">
                                <input type="hidden" name="id" value="243748688">
                                <input type="hidden" name="idtype" value="uid">
                                <input type="hidden" name="commentsubmit" value="true">
                                <p class="ptn">
                                    <button type="submit" name="commentsubmit_btn" value="true" id="commentsubmit_btn" class="pn">
                                        <strong>留言</strong>
                                    </button>
                                </p>
                                <input type="hidden" name="handlekey" value="commentwall_243748688">
                                <span id="return_commentwall_243748688"></span>
                                <input type="hidden" name="formhash" value="07b25dc7">
                            </form>
                            <script type="text/javascript">
                                function succeedhandle_commentwall_243748688(url, msg, values)
                                {
                                    wall_add(values['cid']);
                                }
                            </script>
                </div><hr class="da mtm m0"><div class="xld xlda el" id="comment_ul"><p class="emp">现在还没有留言</p></div></div></div>
            </div>

            <div id="frame1_right" style="width:240px" class="z column">
                <div id="friend" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="home.php?mod=space&amp;uid=243748688&amp;do=friend&amp;view=me&amp;from=space">好友</a></span>
                    </div>
                    <div id="friend_content" class="dxb_bc">
                    <ul class="ml mls cl">
                    <c:forEach items="${gf }" var="friend">
                        <li>
                        <input type="hidden" value="${friend.userId }" name="priId" class="friId">
                            <a href="" target="_blank" class="avt">
                                <em class=""></em>
                                <em class="god" title="删除好友"></em>
                                <img src="images/homepage/${friend.userHeader }" onerror="this.onerror=null;this.src='images/homepage/noavatar_small.gif'">
                            </a>
                            <p>
                                <a href="" title="${friend.userName }">${friend.userName }</a>
                            </p>
                        </li>
                    </c:forEach>
                    </ul>
                      <!--<p class="emp">现在还没有好友，<a href="home.php?mod=spacecp&amp;ac=search">查找好友</a> 或-->
                            <!--<a href="home.php?mod=spacecp&amp;ac=invite">邀请好友</a>-->
                        <!--</p>-->
                    </div>
                </div>
                <div id="visitor" class="block move-span">
                    <div class="blocktitle title">
                        <span><a href="home.php?mod=space&amp;uid=243748688&amp;do=friend&amp;view=visitor">最近访客</a></span>
                    </div>
                    <div id="visitor_content" class="dxb_bc">
                    <!--<p class="emp">现在还没有访客，<a href="home.php?mod=space&amp;do=friend&amp;view=online&amp;type=member">去串串门</a></p>-->
                    <ul class="ml mls cl">
                        <li>
                            <a href="space-uid-243748688.html" target="_blank" class="avt">
                                <em class=""></em>
                                <em class="god" onclick="javascript:removeVisitor(event, 914279237);" title="删除访问足迹"></em>
                                <img src="images/homepage/88_avatar_small.jpg?1" onerror="this.onerror=null;this.src='images/homepage/noavatar_small.gif'">
                            </a>
                            <p>
                                <a href="" title="卡塞马拉">卡塞马拉</a>
                            </p>
                            <span class="xg2">
                                <span title="2016-09-17">刚刚</span>
                            </span>
                        </li>
                    </ul>
                </div>
                </div>
                <div id="group" class="block move-span">
                    <div class="blocktitle title">
                        <span>俱乐部</span>
                    </div>
                    <div id="group_content" class="dxb_bc">
                        <p class="emp">现在还没有群组，<a href="group.php?mod=index">加入群组</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function succeedhandle_followmod(url, msg, values) {
        var fObj = $('followmod');
        if(values['type'] == 'add') {
            fObj.innerHTML = '取消收听';
            fObj.className = 'flw_btn_unfo';
            fObj.href = 'home.php?mod=spacecp&ac=follow&op=del&fuid='+values['fuid'];
        } else if(values['type'] == 'del') {
            fObj.innerHTML = '收听TA';
            fObj.className = 'flw_btn_fo';
            fObj.href = 'home.php?mod=spacecp&ac=follow&op=add&hash=07b25dc7&fuid='+values['fuid'];
        }
    }
</script>
<div id="ft" class="cl">
    <!--设置footer end-->
    <div class="wp" id="footer">
        <div id="flk"><div style="float: left;"><img src="http://static.bbs.miui.com/static/image/miui/base/footer_title.png"></div>
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
                &nbsp;<a href="http://discuz.qq.com/service/security" target="_blank" title="防水墙保卫网站远离侵害">
                <img src="static/image/common/security.png">
                </a>
            </div>
            <div style="display:none;"><div style="display:none;">
                <script src="http://s17.cnzz.com/stat.php?id=2441309&amp;web_id=2441309&amp;show=pic" type="text/javascript"></script>
                <script src="http://c.cnzz.com/core.php?web_id=2441309&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script>
                <a href="http://www.cnzz.com/stat/website.php?web_id=2441309" target="_blank" title="站长统计">
                <img border="0" hspace="0" vspace="0" src="http://icon.cnzz.com/img/pic.gif">
                </a>
                <script src="http://w.cnzz.com/c.php?id=30049650" language="JavaScript"></script>
            </div></div>
            <p class="xs0"></p>
        </div>
    </div>
</div>
</body>
</html>