<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>小米账号</title>
    <link href="css/account.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/login.css" media="all">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function($) {
        $('.btnChangePassword').click(function(){
            $('.changePassword-mask').fadeIn(100);
            $('.changePassword').slideDown(200);
        })
        $('.theme-poptit .close').click(function(){
            $('.changePassword-mask').fadeOut(100);
            $('.changePassword').slideUp(200);
        })
        $('.btnChangeMobile').click(function(){
        	 $('.changeMail-mask').fadeIn(100);
             $('.changeMail').slideDown(200);
         })
         $('.theme-poptit .close').click(function(){
             $('.changeMail-mask').fadeOut(100);
             $('.changeMail').slideUp(200);
         })
        $('.btnChangeMail').click(function(){
        	 $('.changePhone-mask').fadeIn(100);
             $('.changePhone').slideDown(200);
         })
         $('.theme-poptit .close').click(function(){
             $('.changePhone-mask').fadeOut(100);
             $('.changePhone').slideUp(200);
         })
    })
    </script> 
</head>
<body>
<div class="changeMail">
    <div class="theme-poptit">
        <a href="javascript:;" title="关闭" class="close">×</a>
         <h3>修改邮箱</h3>
    </div>
    <div class="theme-popbod dform">
        <form class="theme-signin" name="loginform" action="changeMail" method="post">
            <ol>
                <li><strong>新邮箱：</strong><input class="ipt" type="text" name="userEmail" placeholder="输入新邮箱" size="20" /></li>
                <li><input value="${user.userId }" type="hidden" name="userId" /></li>
                <li><input class="btn btn-primary" type="submit" name="submit" value="保存" />
            </ol>
        </form>
    </div>
</div>
<div class="changeMail-mask"></div>
<<div class="changePassword">
    <div class="theme-poptit">
        <a href="javascript:;" title="关闭" class="close">×</a>
        <h3>修改密码</h3>
    </div>
    <div class="theme-popbod dform">
        <form class="theme-signin" name="loginform" action="changePassword" method="post">
            <ol>
                <li><strong>旧密码：</strong><input class="ipt" type="password" name="oldPassword" placeholder="输入旧密码" size="20" /></li>
                <li><strong>新密码：</strong><input class="ipt" type="password" name="userPassword" placeholder="输入新密码" size="20" /></li>
                <li><input value="${user.userId }" type="hidden" name="userId" /></li>
                <li><input class="btn btn-primary" type="submit" name="submit" value="保存" />
            </ol>
        </form>
    </div>
</div>
<div class="changePassword-mask"></div>
<<div class="changePhone">
    <div class="theme-poptit">
        <a href="javascript:;" title="关闭" class="close">×</a>
        <h3>修改手机号</h3>
    </div>
    <div class="theme-popbod dform">
        <form class="theme-signin" name="loginform" action="changePhone" method="post">
            <ol>
                <li><strong>新手机号：</strong><input class="ipt" type="text" name="userPhone" placeholder="输入手机号" size="20" /></li>
                <li><input value="${user.userId }" type="hidden" name="userId" /></li>
                <li><input class="btn btn-primary" type="submit" name="submit" value="保存" />
            </ol>
        </form>
    </div>
</div>
<div class="changePhone-mask"></div>
    <div class="wrap">
        <div class="layout bugfix_ie6 dis_none">
            <div class="n-logo-area clearfix">
                <a href="/" class="fl-l"><img src="images/account/n-logo.png" srcset="images/account/n-logo.png 1x, images/account/n-logo@2x.png 2x"></a>
                <a id="logoutLink" class="fl-r logout" href="quit">退出</a>
            </div>
            <!--头像 名字-->
            <div class="n-account-area-box">
                <div class="n-account-area clearfix">
                    <div class="na-info">
                        <p class="na-name">${user.userName }</p>
                        <p class="na-num">${user.userId }</p>
                    </div>
                    <div class="na-img-area fl-l">
                        <!--na-img-bg-area不能插入任何子元素-->
                        <div class="na-img-bg-area"><img src="images/account/cuE1mBf55c44qx_320.jpg"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layout">
            <div class="n-main-nav clearfix">
                <ul>
                    <li class="current">
                        <a title="帐号安全">帐号安全</a>
                        <em class="n-nav-corner"></em>
                    </li>
                </ul>
            </div>
            <div class="n-frame">
                <div class="title-item title_security_wap">
                    <h4 class="title-big dis-inb">安全等级</h4>
                    <em class="space6"></em>
                </div>
                <ul class="device-detail-area">
                    <li id="changePassword" class="click-row">
                        <div class="font-img-item clearfix">
                            <em class="fi-ico fi-ico-lock"></em>
                            <p class="title-normal dis-inb">帐号密码</p>
                            <p class="font-default">用于保护帐号信息和登录安全</p>
                            <span class="title-normal wap-desc">修改</span>
                            <i class="arrow_r"></i>
                        </div>
                        <div class="ada-btn-area" id="btnUpdatePassword">
                            <a href="" class="n-btn btnChangePassword">修改</a>
                        </div>
                    </li>
                    <li id="changeEmail" class="click-row">
                        <div class="font-img-item clearfix">
                            <em class="fi-ico fi-ico-email"></em>
                            <p class="title-normal dis-inb">安全邮箱</p>
                            <span class="title-normal wap-desc">${email }</span>
                            <p class="font-default">安全邮箱可以用于登录小米帐号，重置密码或其他安全验证</p>
                            <i class="arrow_r"></i>
                        </div>
                        <div class="ada-btn-area" id="btnUpdateEmail">
                            <!--正常状态-->
                            <a href="" class="n-btn btnChangeMail">修改</a>
                        </div>
                    </li>
                    <li id="changeMobile" class="click-row">
                        <div class="font-img-item clearfix">
                            <em class="fi-ico fi-ico-phone"></em>
                            <p class="title-normal dis-inb">安全手机</p>
                            <span class="title-normal wap-desc">${phone }
                                <span class="ph_list_sum phone-list-sum" data-title="等<span class='ff6'>{phsum}</span>个"></span>
                            </span>
                            <p class="font-default">安全手机可以用于登录小米帐号，重置密码或其他安全验证</p>
                            <i class="arrow_r"></i>
                        </div>
                        <div class="ada-btn-area" id="btnUpdatePhone">
                            <a class="n-btn btnChangeMobile" href="" data-mode="update">修改</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="n-footer">
    <div class="nf-link-area clearfix">
        <ul class="lang-select-list">
            <li><a class="lang-select-li current" href="javascript:void(0)" data-lang="zh_CN">简体</a>|</li>
            <li><a class="lang-select-li" href="javascript:void(0)" data-lang="zh_TW">繁体</a>|</li>
            <li><a class="lang-select-li" href="javascript:void(0)" data-lang="en">English</a></li>|
            <li><a class="a_critical" href="" target="_blank"><em></em>常见问题</a></li>
        </ul>
    </div>
    <p class="nf-intro">
        <span>小米公司版权所有-京ICP备10046444-
            <a class="beianlink beian-record-link" target="_blank" href="">
                <span><img src="images/account/ghs.png"></span>
                京公网安备11010802020134号
            </a>
            -京ICP证110507号
        </span>
    </p>
</div>
</body>
</html>