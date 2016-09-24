/**
 * Created by MJM on 2016/9/10.
 */
function menuFixed(id){
    var obj = document.getElementById(id);
    var _getHeight = obj.offsetTop;

    window.onscroll = function(){
        changePos(id,_getHeight);
    }
}
function changePos(id,height) {
    var obj = document.getElementById(id);
    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    if (scrollTop < height) {
        obj.style.position = 'relative';
    } else {
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