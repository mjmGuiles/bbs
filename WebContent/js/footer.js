//<!--页面高度不能撑满屏幕时，设置footer的位置在最底边-->
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
var _hmt = _hmt || [];
(function() {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?3c5ef0d4b3098aba138e8ff4e86f1329";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-37617644-2']);
_gaq.push(['_trackPageview']);
(function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();