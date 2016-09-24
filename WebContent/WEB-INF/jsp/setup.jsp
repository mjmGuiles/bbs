<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
    <link rel="stylesheet" href="css/setup.css" type="text/css">
    <link href="css/header.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
    function doCart(counts,proId){
		$.ajax({
			type : "POST",
			url : "changeCount",
			data : {
				counts : counts,
				proId :proId
			},
			dataType : "json",
			success : function(data) {

			}

		})
	}
    </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wp" class="wp">
    <div id="pt" class="bm cl">
        <div class="z">
            <a href="index" class="nvhm" title="首页">MIUI论坛</a> 
            <em>›</em>
            <a href="setup">设置</a> 
            <em>›</em>个人资料
        </div>
    </div>
    <div id="ct" class="ct2_a wp cl">
        <div class="mn">
            <div class="bm bw0">
                <h1 class="mt">个人资料
                </h1>
                <!--don't close the div here--><ul class="tb2 cl">
                <li class="a"><a href="home.php?mod=spacecp&amp;ac=profile&amp;op=base">基本资料</a></li>
            </ul><iframe id="frame_profile" name="frame_profile" style="display: none"></iframe>
                <form action="updateUser" method="post" enctype="multipart/form-data" autocomplete="off" target="frame_profile" onsubmit="clearErrorInfo();">
                    <input type="hidden" value="${user.userId }" name="userId">
                    <table cellspacing="0" cellpadding="0" class="tfm" id="profilelist">
                        <tbody><tr>
                            <th class="profile_item">用户名</th>
                            <td class="profile_uname">卡塞马拉</td>
                            <td>&nbsp;</td>
                        </tr><tr id="tr_field4">
                            <th id="th_field4" class="profile_item">个性签名</th>
                            <td id="td_field4">
                               <input type="text" value="${user.userSignnative}" name="userSignnative" style="border: none;">
                            </td>
                            
                        </tr>
                        <tr id="tr_gender">
                            <th id="th_gender" class="profile_item">性别</th>
                            <td id="td_gender">
                                <div class="ftid_spacecp_levels">
                                    <input type="text" value="${user.userGender }" name="userGender" style="border: none;">
                                </div>
                                <div class="rq mtn" id="showerror_gender"></div>
                                <p class="d"></p>
                            </td>
                         
                        </tr>
                        <tr id="tr_qq">
                            <th id="th_qq" class="profile_item">QQ</th>
                            <td id="td_qq">
                                <div class="ftid_spacecp_levels">
                                    <input type="text" value="${user.userQq }" name="userQq" style="border: none;">
                                </div>
                                <div class="rq mtn" id="showerror_qq"></div>
                                <p class="d"></p>
                            </td>
                            
                        </tr>
                        <tr id="tr_birthday">
                            <th id="th_birthday" class="profile_item">生日</th>
                            <td id="td_birthday">
                                <div class="ftid_spacecp_levels">
                                    <input type="text" value="${user.userBirth }" name="userBirth" style="border: none;width: 200px;">
                                </div>
                                <div class="rq mtn" id="showerror_birthday"></div>
                                <p class="d"></p>
                            </td>
                            
                        </tr>
                        <tr id="tr_birthcity">
                            <th id="th_birthcity" class="profile_item">出生地</th>
                            <td id="td_birthcity">
                                <div class="ftid_spacecp_levels">
                                    <input type="text" value="${user.userNativeplace }" name="userNativeplace" style="border: none;">
                                </div>
                                    <div class="rq mtn" id="showerror_birthcity"></div>
                                    <p class="d"></p>
                            </td>
                            
                        </tr>
                        <tr>
                            <th>&nbsp;</th>
                            <td colspan="2">
                                <input type="hidden" name="profilesubmit" value="true">
                                <button type="submit" name="profilesubmitbtn" id="profilesubmitbtn" value="true" class="pn3">
                                <img src="images/setup/home_save_btn.png"></button>
                                <span id="submit_result" class="rq"></span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
        <div class="appl">
            <div class="tbn miui_spacecp">
                <h2 class="mt bbda">设置</h2>
                <ul>
                    <li>
                        <span style="background-position-x: 0px;"></span>
                        <a href="home.php?mod=spacecp&amp;ac=avatar">修改头像</a>
                    </li>
                    <li class="a">
                        <span style="background-position-x: -13px;"></span>
                        <a href="home.php?mod=spacecp&amp;ac=profile">个人资料</a>
                    </li>
                    <li>
                        <a href="home.php?mod=spacecp&amp;ac=credit">
                        <span style="background-position-x: -26px;"></span>积分</a>
                    </li>
                    <li><a href="home.php?mod=spacecp&amp;ac=usergroup">
                        <span style="background-position-x: -39px;"></span>用户组</a>
                    </li>
                    <li><a href="home.php?mod=spacecp&amp;ac=privacy">
                        <span style="background-position-x: -56px;"></span>隐私筛选</a>
                    </li>
                    <li>
                    <a href="account?userId=${user.userId }">
                        <span style="background-position-x: -83px;"></span>密码安全
                    </a>
                    </li>
                    <li><a href="home.php?mod=spacecp&amp;ac=promotion">
                        <span style="background-position-x: -69px;"></span>访问推广</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="ft" class="cl">
    <!--页面高度不能撑满屏幕时，设置footer的位置在最底边-->
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
            </div></div>
            <div style="display:none;">

            </div>
            <p class="xs0">
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