/**
 * Created by MJM on 2016/9/8.
 */
$(function(){
    $(document).ready(function(){
        $("#nv ul li").hover(function(){
            $(this).css("background-color","#F75733");
        },function(){
            $(this).css("background-color","#fc7050");
        });
        $("#typeid_ctrl").hover(function(){
            $(this).css("color","#fc7050");
        },function(){
            $(this).css("color","#8F8F8F");
        });
        $('#pt .z a').hover(function(){
            $(this).css("color","#fc7050");
        },function(){
            $(this).css("color","#8F8F8F");
        });
        $('.sltm li').hover(function(){
            $(this).css("color","#fc7050");
        },function(){
            $(this).css("color","#8F8F8F");
        });
    });
})
