<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="css/homepage.css">
    <script type="text/javascript" rel="script" src="js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" rel="script" src="js/homepage.js"></script>
    <script type="text/javascript">
    $(document).ready(function($) {
        $('.big_post_btn').click(function(){
            $('.theme-mask').fadeIn(100);
            $('.theme').slideDown(200);
        })
        $('.theme-poptit .close').click(function(){
            $('.theme-mask').fadeOut(100);
            $('.theme').slideUp(200);
        })

    })
    </script>
</head>
<body>
<div id="container">
<jsp:include page="header.jsp"></jsp:include>
    <div class="main">
        <div class="py_lunbo">
            <div class="py_lunbo_container" value="0" style="left: 0px;">
                <a href=""><img src="http://attach.bbs.miui.com/album/201609/13/140100stfr6y17w2uiy2bw.jpg" alt="今天下午5:30，美女主播佩戴华米智能运动手表奥森实战开跑~" title="今天下午5:30，美女主播佩戴华米智能运动手表奥森实战开跑~"></a>
                <a href=""><img src="images/homepage/153535dfwc0fk6qnbbo6fk.png" alt="【2016年9月2日】MIUI 第300周发布公告及更新日志" title="【2016年9月2日】MIUI 第300周发布公告及更新日志"></a>
                <a href="" target="_blank"><img src="http://attach.bbs.miui.com/album/201609/12/100019jr6smv2xt211ortx.jpeg" alt="小米5 黑科技 隐私双系统，一部手机当两部用" title="小米5 黑科技 隐私双系统，一部手机当两部用"></a>
                <a href=""><img src="http://attach.bbs.miui.com/album/201609/09/105322ox2bpp7z7jnd2anb.png" alt="【2016年9月9日】MIUI 第301周发布公告及更新日志" title="【2016年9月9日】MIUI 第301周发布公告及更新日志"></a>
            </div>
            <div class="prev" style="display: none;"></div>
            <div class="next" style="display: none"></div>
            <div class="points">
            <div class=""></div>
            <div class=""></div>
            <div class=""></div>
            <div class="current_pointer">
            </div></div>
        </div>
        <div class="banner_links">
            <a href="#"><img src="images/homepage/183544cvzsja8j99e8awfl.png" alt="全球首家！小米手机既可当银行卡又可当公交卡" title="全球首家！小米手机既可当银行卡又可当公交卡"></a>
            <a href="#"><img src="images/homepage/183948vqsprsmrb4bmhpiz.png" alt="一张图看懂MIUI 8之一个计算器的自我修养" title="一张图看懂MIUI 8之一个计算器的自我修养"></a>
            <a href="#" class="banner_link_last"><img src="images/homepage/182436yibr81t02cz5krht.png" alt="一张图看懂小米支付" title="一张图看懂小米支付"></a>
        </div>
        <div class="main_content">
            <div id="left_content" class="left">
            <c:forEach items="${postList }" var="post" end="${endNumber-1 }" begin="${startNumber  }">
                <div class="article">
                    <h3>
                        <a href="">${post.postHeader }</a>
                    </h3>
                    <a href="">
                        <img width="627" src="images/homepage/194736a2928ae699eu4k8i.jpg" alt="${post.postHeader }" title="${post.postHeader }">
                    </a>
                    <p>
                        ${post.postContent }
                    </p>
                    <div class="article_info clearfix">
                        <p class="article_info_left">
                            <a href="">
                                <img src="images/homepage/${post.user.userHeader }" onerror="this.onerror=null;this.src='images/homepage/noavatar_middle.gif'">
                                <span class="author">${post.user.userName }</span>
                            </a>
                            <span>发布于 ${post.postTime }</span>
                        </p>
                        <p class="article_info_right">
                            <span class="article_info_right_0">16743</span>
                            <span class="article_info_right_1">367</span>
                            <span class="article_info_right_2">&nbsp;
                                <strong class="share_notice">
                                    <em class="share_sina">新浪</em>
                                    <em class="share_weixin">微信</em>
                                    <em class="share_tencent">腾讯</em>
                                </strong>
                            </span>
                        </p>
                    </div>
                </div>
                </c:forEach>
                <div class="pages">
                <a href="getPost?p=${upIndex }" title="上一页" class="page_prev">&lt;</a>
                <a href="getPost?p=${nextIndex }" title="下一页" class="page_next">&gt;</a>               
                </div>
            </div>
            <div id="float_right" class="right" style="top: 58px; left: 905px;">
            <c:if test="${empty user}">
                <div class="big_post_btn">
                    <a></a>
                </div>
                </c:if>
                <c:if test="${!empty user}">
                <div class="big_post_btn">
                   <a href="post"></a>
                </div>
                </c:if>
                <div class="theme" style="display:none;">
            <div class="theme-poptit">
                <a href="javascript:;" title="关闭" class="close">×</a>
                <h3>你需要先登录才能继续本操作</h3>
            </div>
            <div class="theme-popbod dform">
                <ol>
                    <li><h4>此时此刻，是该做出你的选择了</h4></li>
                    <li class="easy_l"><a href="#" class="easyl"></a><a class="pikai">登录</a></li>
                    <li class="easy_ll"><a href="#" class="easyll"></a><a class="pika">注册</a></li>
                </ol>
            </div>
        </div>
        <div class="theme-mask" style="display:none;"></div>
                <div class="punch_card">
                    <div class="part part_0" style="position:relative">
                        <div style="position:absolute;top:-90px;z-index:100" id="sign_show_area">
                        </div>
                        <div class="part_footer pf_sign" id="sign_area">
                            <p class="pf_num">
                                <span>5020582</span>
                            </p>
                            <p class="pf_day">打卡领奖</p>
                            <a href="javascript:;" class="pf_sign_link link_no_cursor"></a>
                            <a href="javascript:;" class="pf_sign_rank pf_sign_link"></a>
                        </div>
                    </div>
                </div>
                <div class="update_version">
                    <h2>MIUI已持续更新300周</h2>
                    <h3>
                        <a href="http://www.miui.com/thread-5382586-1-1.html" target="_blank">最新版：6.9.1</a>
                    </h3>
                    <div class="clearfix">
                        <a href="download.html" class="download_link">ROM下载</a>
                        <a href="shuaji.html" class="version_rec">刷机教程</a>
                    </div>
                </div>
                <div class="recommend_section">
                    <h2 class="right_title">推荐版块</h2>
                    <div class="clearfix">
                        <div class="module cl xl xl2">
                            <ul>
                                <li class="lc">
                                    <a href="" title="红米Note 4" target="_self">红米Note 4</a>
                                </li>
                                <li>
                                    <a href="" title="红米Pro" target="_self">红米Pro</a>
                                </li>
                                <li class="lc">
                                    <a href="" title="小米手机4" target="_self">小米手机4</a>
                                </li>
                                <li>
                                    <a href="" title="小米笔记本" target="_self">小米笔记本</a>
                                </li>
                                <li class="lc">
                                    <a href="" title="小米手机5" target="_self">小米手机5</a>
                                </li>
                                <li>
                                    <a href="" title="小米Max" target="_self">小米Max</a>
                                </li>
                                <li class="lc">
                                    <a href="" title="贴图自拍" target="_self">贴图自拍</a>
                                </li>
                                <li>
                                    <a href="" title="汉化资源" target="_self">汉化资源</a>
                                </li>
                                <li class="lc">
                                    <a href="" title="新功能讨论" target="_self">新功能讨论</a>
                                </li>
                                <li>
                                    <a href="" title="特殊组申请" target="_self">特殊组申请</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <a href="forum.php?forumlist=1" target="_self" class="all_section">所有版块&nbsp;&gt;</a>
                </div>
                <div class="hot_activity" style="display: block;">
                    <h2 class="right_title">热门活动</h2>
                    <a href="">
                        <img src="images/homepage/180042swewrpuiu9rz26b2.png" title="一起来找“8”！">
                        <p>一起来找“8”！</p>
                    </a>
                    <a href="">
                        <img src="images/homepage/175258e6wyn1p8wu8yw61x.png" title="MIUI论坛APP体验">
                        <p>MIUI论坛APP体验</p>
                    </a>
                </div>
                <div class="hot_posts" style="display: block;">
                    <h2 class="right_title">热帖排行</h2>
                    <div class="hot_posts_article">
                        <ul class="u_article" style="margin-top:8px">
                        <c:forEach items="${hotPostList }" var="hotpost" step="2">
                            <li>
                                <a href="${hotpost.postId }" title="${hotpost.postHeader }" target="_blank">${hotpost.postHeader }</a>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="focus_us" style="display: block;">
                    <h2 class="right_title">关注我们</h2>
                    <ul class="our_focus clearfix">
                        <li class="focus_list_left">
                            <a target="_blank" href="http://weibo.com/miui">新浪微博</a>
                            <span class="sp_line">|</span>
                        </li>
                        <li>
                            <a target="_blank" href="http://weibo.com/miuiweb">社区微博</a>
                            <span class="sp_line">|</span>
                        </li>
                        <li>
                            <a target="_blank" href="http://tieba.baidu.com/f?kw=miui">百度贴吧</a>
                        </li>
                        <li class="focus_list_left">
                            <a target="_blank" href="http://user.qzone.qq.com/2043524145">QQ空间</a>
                            <span class="sp_line">|</span>
                        </li>
                        <li>
                            <a target="_blank" href="https://www.baidu.com/s?wd=miui7">百度搜索</a>
                            <span class="sp_line">|</span>
                        </li>
                        <li>
                            <a id="weixin_title" href="javascript:;">微信</a>
                        </li>
                        <li class="focus_list_left">
                            <a target="_blank" href="http://www.facebook.com/miuiromchina">Facebook</a>
                            <span class="sp_line">|</span>
                        </li>
                        <li>
                            <a target="_blank" href="http://twitter.com/#!/miuirom">twitter</a>
                            <span class="sp_line">|</span>
                        </li>
                        <li>
                            <a target="_blank" href="http://gplus.to/miuiofficial">Google+</a>
                        </li>
                    </ul>
                    <div id="weixin_logo" style="display:none;">
                        <a href="javascript:;">
                            <img width="210 " src="images/miui_wx_pic.png " class="wx_pic ">
                        </a>
                        <div style="text-align:center;margin:5px;color:#666666; ">MIUI微信二维码</div>
                    </div>
                </div>
            </div>
            <div style="clear: both; "></div>
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
</div>
</body>
</html>