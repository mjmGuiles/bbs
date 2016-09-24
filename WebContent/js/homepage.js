function menuFixed(id){
    var obj = document.getElementById(id);
    var _getHeight = obj.offsetTop;

    window.onscroll = function(){
        changePos(id,_getHeight);
    }
}
function changePos(id,height){
    var obj = document.getElementById(id);
    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    if(scrollTop < height){
        obj.style.position = 'relative';
    }else{
        obj.style.position = 'fixed';
    }
}
window.onload = function(){
    menuFixed('nv');
}
$(function(){
    $(document).ready(function(){
        $("#nv ul li").hover(function(){
            $(this).css("background-color","#F75733");
        },function(){
            $(this).css("background-color","#fc7050");
        });
        $(".py_lunbo_container").hover(function(){
        	$(".prev").style.display='block';
        	$(".next").style.display='block';
        },function(){
        	$(".prev").style.display='none';
        	$(".next").style.display='none';
        });
    });
})
function uinfoHoverIn(t){
    var span = t.getElementsByTagName('span');
    var p_x = span[0].style.backgroundPosition.split(" ");
    span[0].style.backgroundPosition =p_x[0] + ' -57px';
    t.style.color = '#ff5f19';
}
function uinfoHoverOut(t){
    var span = t.getElementsByTagName('span');
    var p_x = span[0].style.backgroundPosition.split(" ");
    span[0].style.backgroundPosition =p_x[0] + ' -40px';
    t.style.color = '#666666';
}
function changeImage(){
	var i=0;
	var sid;
    i++;
    if(i==4)
        i=0;
    $(".py_lunbo_container").style.left='-960px'*''+i+'';
    sid=setTimeout("changeImage()",3000);
};
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
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-37617644-2']);
_gaq.push(['_trackPageview']);
(function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
var _hmt = _hmt || [];
(function() {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?3c5ef0d4b3098aba138e8ff4e86f1329";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();


