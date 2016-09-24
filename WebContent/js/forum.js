/**
 * Created by MJM on 2016/9/9.
 */
var hide_part_plugin = {
    auto_hide_con:function(val,con){
        var auto_hide = getcookie('auto_hide_part');
        var auto_hide_a = new Array;
        var pos = -1;
        auto_hide_a = auto_hide.split(',');
        for(var k in auto_hide_a){
            if(auto_hide_a[k] == val){
                pos = k;break;
            }
        }

        if(con == 'add' && pos == -1){
            auto_hide_a.push(val);
        }else if(con == 'del' && pos>-1){
            auto_hide_a.splice(pos,1);
        }

        setcookie('auto_hide_part', auto_hide_a.length==0?'':auto_hide_a.join(','), 2592000);
    },
    init_hide:function(){
        var auto_hide = getcookie('auto_hide_part');
        auto_hide_a = auto_hide.split(',');
        for(var k in auto_hide_a){
            if(auto_hide_a[k]){
                var t_id = auto_hide_a[k];
                $(t_id+'_cont').style.display = 'none';
                $(t_id+'_title').style.borderBottom = 'none';
                $(t_id+'_title').style.borderRadius = '5px';
                $(t_id).title = '展开';
                $(t_id).style.backgroundPosition = '30px 1px';
            }
        }
    }
}
function bd_switch(obj,t,color){
    if(t == 1){
        obj.style.background = '#fbfbfb';
        obj.setAttribute('class','in_box a_hover');
    }else{
        obj.style.background = 'transparent';
        obj.setAttribute('class','in_box');
    }
}

function bd_switch2(obj,t,color){
    if(t == 1){
        obj.style.borderColor = '#ededed';
        obj.style.background = '#fbfbfb';
    }else{
        obj.style.borderColor = 'transparent';
        obj.style.background = 'transparent';
    }
}

function hidelist(t){
    if($(t.id+'_cont').style.display != 'none'){
        $(t.id+'_cont').style.display = 'none';
        $(t.id+'_title').style.borderBottom = 'none';
        $(t.id+'_title').style.borderRadius = '5px';
        $(t.id).title = '展开';
        $(t.id).style.backgroundPosition = '30px 1px';
        hide_part_plugin.auto_hide_con(t.id,'add');
    }else{
        $(t.id+'_cont').style.display = 'block';
        $(t.id+'_title').style.borderBottom = '1px solid #EDEDED';
        $(t.id+'_title').style.borderRadius = '5px 5px 0 0';
        $(t.id).title = '收起';
        $(t.id).style.backgroundPosition = '30px -10px';
        hide_part_plugin.auto_hide_con(t.id,'del');
    }
}

var c_tab = 1000;
function coutover(t){
    $('tab_c_'+c_tab).style.display = 'none';
    $('tab_'+c_tab).setAttribute('class','bar_s1');

    $('tab_c_'+t).style.display = 'block';
    $('tab_'+t).setAttribute('class','bar_s2');
    c_tab = t;
}
coutover(c_tab);
hide_part_plugin.init_hide();
function _myslideshow(){
    var slideshows = $C('slidebox');
    for(var i=0,L=slideshows.length; i<L; i++) {
        new slideshow(slideshows[i]);
    }

    $('miui_slidebar').style.left = '265px';
    $('miui_slidebar').style.top = 'inherit';
    $('miui_slidebar').style.bottom = '9px';
    $('miui_slidebar').style.right = '10px';
}
//$F('_myslideshow', []);
$(function(){
    $(document).ready(function(){
        $(".dott a").hover(function(){
            $(this).setAttribute("color","#FD6440");
        },function(){
            $(this).setAttribute("color","#8F8F8F");
        });
    });
})
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
        $("#topic_lists ul li").hover(function(){
           $("#topic_lists li a").css("color","#fc7050")
        },function(){
            $("#topic_lists li a").css("color","#5a5a5a")
        });
    });
})