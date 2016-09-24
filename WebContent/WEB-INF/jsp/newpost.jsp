<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>MIUI论坛</title>
</head>
<link href="css/BBS_list.css" rel="stylesheet">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/jQuery-1.7.1.js"></script>
<script src="js/jquery.min.js"></script>
<script>
	jQuery(document).ready(function($) {
		$('.big_post_btn').click(function() {
			$('.theme-post-mask').fadeIn(100);
			$('.theme-post').slideDown(200);
		})
		$('.theme-poptit .close').click(function() {
			$('.theme-post-mask').fadeOut(100);
			$('.theme-post').slideUp(200);
		})

	})
</script>
<script>
	//负责给标签绑定事件
	$(function() {
		$("#big-1").hide();
		$("#filter_special,#big-1").hover(function() {
			$("#big-1").show();
		}, function() {
			$("#big-1").hide();
		});
		$("#big-2").hide();
		$("#filter_threadtimes,#big-2").hover(function() {
			$("#big-2").show();
		}, function() {
			$("#big-2").hide();
		});
		$("#big-3").hide();
		$("#filter_threadsort,#big-3").hover(function() {
			$("#big-3").show();
		}, function() {
			$("#big-3").hide();
		});
		$("#weixin_logo").hide();
		$("#weixin_title,#weixin_logo").hover(function() {
			$("#weixin_logo").show();
		}, function() {
			$("#weixin_logo").hide();
		})
	})
</script>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<!--中间头部-->
	<div class="start">
		<div class="start_1">
			<a href="#" class="hm" title="首页"></a> <em>›</em> <a href="#"
				class="hr">MIUI专区</a> <em>›</em> <a href="#" class="he">产品发布</a>
		</div>
	</div>

	<!--中间主体-->
	<div id="sleep" class="sleeping">

		<!--中间筛选部分-->
		<div id="mm" class="nn">
			<div class="threadlist_header">
				<div class="hl">
					<div class="filter_sel">
						<table>
							<tbody>
								<tr>
									<th>筛选</th>
									<td>
										<div class="wz">
											<a id="filter_special" href="#" class="showmenu_miui"
												initialized="true">全部主题</a>&nbsp;
											<div id="big-1">
												<a href="#" class="xll">全部主题</a> <a href="#" class="xll">投票</a>
											</div>
											<a id="filter_threadtimes" href="#" class="showmenu_miui">全部时间</a>
											<div id="big-2">
												<a href="#" class="xll">全部时间</a> <a href="#" class="xll">一天</a>
												<a href="#" class="xll">两天</a> <a href="#" class="xll">一周</a>
												<a href="#" class="xll">一个月</a> <a href="#" class="xll">三个月</a>
											</div>
											<div class="pai_x">排序:</div>
											<a id="filter_threadsort" href="#" class="showmenu_miui">发帖时间</a>
											<div id="big-3">
												<a href="#" class="xll">回复时间</a> <a href="#" class="xll">发帖时间</a>
												<a href="#" class="xll">回复数量</a> <a href="#" class="xll">查看数量</a>
											</div>
										</div>
										<div class="y">
											<a href="#" class="yy">热门</a><span class="pipe">|</span> <a
												href="#" class="yyy">精华</a> <input id="open_new_window"
												class="ww" type="checkbox"> <span title="在新窗口中打开"
												class="www">新窗</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!--帖子展示-->
				<div id="nice" class="perfect">
					<c:forEach items="${newPostList }" var="newpost" begin="${startNumber }" end="${endNumber-1 }">
						<div class="erver">
							<div class="avatarbox">
								<a href="#"><img width="40px" height="40px" class="b_rad_8"
									src="images/list/${newpost.user.userHeader }"></a>
							</div>
							<div class="avatarbox-info">
								<div class="sub-tit">
									<span class="icon"> <a href="#" title="全局置顶主题 - 新窗口打开"
										target="_blank"> <img src="images/list/pin_3.gif"
											alt="全站置顶">
									</a>
									</span> 
									<a href="#" class="showhide y" title="隐藏置顶帖"></a> 
									<a href="#" class="xst">[${newpost.theme.themeName}]${newpost.postHeader }</a> 
									<input type="hidden" value="${newpost.postId }" name="postId"> 
									<img src="images/list/common.gif">
									<!-- <img src="images/list/hot_3.gif">
                                <img src="images/list/agree.gif">-->
								</div>
								<div class="sub-infos">
									<a href="" class="card_5012">${newpost.user.userName }</a> <span class="pipe">|</span>
									浏览：<span class="number_d">1965</span> <span class="pipe">|</span>
									回复：<span class="number_d"><a href="#" class="xi2">113</a></span>
									<span class="pipe">|</span> <a href="#" class="card_669">
										令狐醉香</a><span></span> <a href="#" class="card_679">${newpost.postTime }</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!--右侧展框-->
		<div class="sd">

			<!--发表新帖-->
			<c:if test="${empty user }">
			<div class="big_post_btn">
				<a href="#" title="发新帖"></a>
			</div>
            </c:if>
            <c:if test="${!empty user }">
            <div class="big_post_btn">
            <a href="post" title="发新帖"></a>
            </div>
            </c:if>
			<!--推荐版块-->
			<div class="mini">
				<h2 class="b_t">推荐版块</h2>
				<div class="modulexl2">
					<ul>
						<li class="lc"><a href="#" title="红米Note 4" target="_self">红米Note
								4</a></li>
						<li class="lc"><a href="#" title="红米Pro" target="_self">红米Pro</a>
						</li>
						<li class="lc"><a href="#" title="小米手机4" target="_self">小米手机4</a>
						</li>
						<li class="lc"><a href="#" title="小米笔记本" target="_self">小米笔记本</a>
						</li>
						<li class="lc"><a href="#" title="小米手机5" target="_self">小米手机5</a>
						</li>
						<li class="lc"><a href="#" title="小米Max" target="_self">小米Max</a>
						</li>
						<li class="lc"><a href="#" title="贴图自拍" target="_self">贴图自拍</a>
						</li>
						<li class="lc"><a href="#" title="汉化资源" target="_self">汉化资源</a>
						</li>
						<li class="lc"><a href="#" title="新功能讨论" target="_self">新功能讨论</a>
						</li>
						<li class="lc"><a href="joinus.html" title="特殊组申请"
							target="_self">特殊组申请</a></li>
					</ul>
				</div>
			</div>

			<!--热帖排行-->
			<div class="mb_line">
				<div>
					<h2 class="bbt">热帖排行</h2>
				</div>
				<ul class="u_h">
					<li><a target="_blank" href="#"><img class="ghf"
							title="极客试用" src="images/list/mwxcz.png"></a></li>
				</ul>
				<ul class="u_article">
				<c:forEach items="${hotPostList }" var="hotpost" end="9" begin="0" >
					<li><a href="#" title="${hotpost.postHeader }" target="_blank">${hotpost.postHeader }</a></li>
				</c:forEach>
				</ul>
			</div>

			<!--活跃会员-->
			<div class="actionn" id="star_block">
				<div class="team">
					<h2 class="bmt">活跃会员</h2>
					<span class="acte"> <a href="#">换一批</a>
					</span>
				</div>
				<ul class="star_users" id="star_list">
					<li><a href="#" target="_blank"><img
							src="images/list/avatar_middle.jpg"></a> <a href="#"
						class="star_uname" target="_blank">YY吧。</a></li>
					<li><a href="#" target="_blank"><img
							src="images/list/avatar_middle1.jpg"></a> <a href="#"
						class="star_uname" target="_blank">03129443</a></li>
					<li><a href="#" target="_blank"><img
							src="images/list/avatar_middle2.gif"></a> <a href="#"
						class="star_uname" target="_blank">啦1234了</a></li>
					<li><a href="#" target="_blank"><img
							src="images/list/avatar_middle3.jpg"></a> <a href="#"
						class="star_uname" target="_blank">流畅lsc</a></li>
					<li><a href="#" target="_blank"><img
							src="images/list/avatar_middle4.jpg"></a> <a href="#"
						class="star_uname" target="_blank">晴若优昙</a></li>
					<li><a href="#" target="_blank"><img
							src="images/list/avatar_middle5.jpg"></a> <a href="#"
						class="star_uname" target="_blank">帝国水军</a></li>
				</ul>
			</div>

			<!--关注我们-->
			<div class="pad" id="floow_us_box">
				<div>
					<h2 class="bgt">关注我们</h2>
				</div>
				<div id="follow_us" class="b_mt2">
					<ul class="b_ul">
						<li class="follow_list_left fd"><a href="#" target="_blank">新浪微博</a>
							<span class="sp_line">|</span></li>
						<li class="follow_list_left"><a href="#" target="_blank">社区微博</a>
							<span class="sp_line">|</span></li>
						<li class="follow_list_left"><a href="#" target="_blank">百度贴吧</a>
						</li>
						<li class="follow_list_left fd"><a href="#" target="_blank">Facebook</a>
							<span class="sp_line">|</span></li>
						<li class="follow_list_left"><a href="#" target="_blank">twitter</a>
							<span class="sp_line">|</span></li>
						<li class="follow_list_left"><a href="#" target="_blank">Google+</a>
						</li>
						<li class="follow_list_left fd"><a href="#" target="_blank">QQ空间</a>
							<span class="sp_line">|</span></li>
						<li class="follow_list_left"><a href="#" target="_blank">百度搜索</a>
							<span class="sp_line">|</span></li>
						<li class="follow_list_left"><a href="#" id="weixin_title">微信</a>
						</li>
						<div id="weixin_logo" class="blmt">
							<a href="#"> <img class="wx_pic" src="images/list/ewm.png"
								width="210">
							</a>
							<div>扫描一下,加MIUI微信为好友</div>
						</div>
					</ul>



				</div>
			</div>
		</div>

		<!--页码-->
		<div class="happy">
			<span class="hppy"> <a href="" class="hehe">返回</a>
			</span>
			<div class="py">
			<c:if test="${pageIndex<pageCount }">
				<a href="getNewPost?p=${nextIndex }" class="nxt" title="下一页">></a>
				</c:if>
				<c:if test="${pageIndex>1 }">
				<a href="getNewPost?p=${pageIndex-1 }" class="prev" title="上一页">&lt;</a>
				</c:if>
			</div>
		</div>

		<!--发帖  外展框-->
		<div class="theme-post" style="display: none;">
			<div class="theme-poptit">
				<a href="javascript:;" title="关闭" class="close">×</a>
				<h3>人生面临了无数种选择</h3>
			</div>
			<div class="theme-popbod dform">
				<ol>
					<li><h4>此时此刻，是该做出你的选择了</h4></li>
					<li class="easy_l"><a href="#" class="easyl"></a><a
						class="pikai">登录</a></li>
					<li class="easy_ll"><a href="#" class="easyll"></a><a
						class="pika">注册</a></li>
				</ol>
			</div>
		</div>
		<div class="theme-post-mask" style="display: none;"></div>
	</div>
	<!--最右侧快捷栏-->
	<div id="scrolltop" style="left: 1154px; visibility: visible;">
		<span hidefocus="true"> <a title="返回顶部"
			onclick="window.scrollTo('0','0')" class="scrolltopa"> <b
				style="visibility: hidden; overflow: hidden">返回顶部</b>
		</a>
		</span> <span> <a href="#" hidefocus="true" class="returnboard"
			title="返回首页"> <b style="visibility: hidden; overflow: hidden">返回首页</b>
		</a>
		</span>
	</div>

	
</body>
</html>