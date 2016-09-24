simulateSelect('privacy_field4',48);
simulateSelect('privacy_gender',48);
simulateSelect('gender',38);
simulateSelect('privacy_birthday',48);
simulateSelect('birthyear');
simulateSelect('birthmonth');
simulateSelect('birthday');
simulateSelect('privacy_realname',48);
simulateSelect('privacy_birthcity',48);
var bi1=0,bi2=0,bi3=0,bi4=0;
simulateSelect('birthprovince',110,function(sid,d){custom_dis(sid,d);});
simulateSelect('privacy_bloodtype',48);
simulateSelect('bloodtype',100);
simulateSelect('privacy_lookingfor',48);
simulateSelect('privacy_residecity',48);
var cbi1=0,cbi2=0,cbi3=0,cbi4=0;
simulateSelect('resideprovince',140,function(sid,d){custom_res_dis(sid,d);});
simulateSelect('privacy_affectivestatus',48);
simulateSelect('privacy_field3',48);
function custom_res_dis(sid,d){
    var pid = cbi1>0?cbi1:0;
    var cid = cbi2>0?cbi2:0;
    var did = cbi3>0?cbi3:0;
    var coid =cbi4>0?cbi4:0;
    var container = 'residedistrictbox';
    var containertype = 'reside';
    var elems =  ['resideprovince', 'residecity', 'residedist', 'residecommunity'];
    var totallevel;
    if(sid == 'resideprovince'){
        cid=did=coid = 0;
        totallevel = 1;pid=cbi1=d;
    }else if(sid == 'residecity'){
        did=coid=0;
        totallevel = 2;cid=cbi2=d;
    }else if(sid == 'residedist'){
        coid=0;
        totallevel = 3;did=cbi3=d;
    }else if(sid == 'residecommunity'){
        totallevel = 4;coid=cbi4=d;
    }

    var url = 'home.php?mod=misc&ac=ajax&op=district&container='+container+'&containertype='+containertype
        +"&province="+elems[0]+"&city="+elems[1]+"&district="+elems[2]+"&community="+elems[3]
        +"&pid="+pid + "&cid="+cid+"&did="+did+"&coid="+coid+'&level='+totallevel+'&handlekey='+container+'&inajax=1&ajaxtarget=birthdistrictbox';
    ajaxget(url, container,'','','',function(){
        init_res_menu();
    });

}

function remove_res_menu(){
    if($('resideprovince_ctrl_menu')!=null){
        var tp = $('resideprovince_ctrl_menu').parentNode;
        tp.removeChild($('resideprovince_ctrl_menu'));
    }
    if($('residecity_ctrl_menu')!=null){
        var tp = $('residecity_ctrl_menu').parentNode;
        tp.removeChild($('residecity_ctrl_menu'));
    }
    if($('residedist_ctrl_menu')!=null){
        var tp = $('residedist_ctrl_menu').parentNode;
        tp.removeChild($('residedist_ctrl_menu'));
    }
    if($('residecommunity_ctrl_menu')!=null){
        var tp = $('residecommunity_ctrl_menu').parentNode;
        tp.removeChild($('residecommunity_ctrl_menu'));
    }
}
function init_res_menu(){
    remove_res_menu();
    simulateSelect('resideprovince',110,function(sid,d){custom_res_dis(sid,d);});
    if(typeof $('residecity')!='undefined'){
        simulateSelect('residecity',110,function(sid,d){custom_res_dis(sid,d);});
    }
    if(typeof $('residedist')!='undefined'){
        simulateSelect('residedist',110,function(sid,d){custom_res_dis(sid,d);});
    }
    if(typeof $('residecommunity')!='undefined'){
        simulateSelect('residecommunity',110,function(sid,d){custom_res_dis(sid,d);});
    }
}
function custom_dis(sid,d){
    var pid = bi1>0?bi1:0;
    var cid = bi2>0?bi2:0;
    var did = bi3>0?bi3:0;
    var coid =bi4>0?bi4:0;
    var container = 'birthdistrictbox';
    var containertype = 'birth';
    var elems = ['birthprovince', 'birthcity', 'birthdist', 'birthcommunity'];
    var totallevel;
    if(sid == 'birthprovince'){
        cid=did=coid = 0;
        totallevel = 1;pid=bi1=d;
    }else if(sid == 'birthcity'){
        did=coid=0;
        totallevel = 2;cid=d;bi2=d;
    }else if(sid == 'birthdist'){
        coid=0;
        totallevel = 3;did=bi3=d;
    }else if(sid == 'birthcommunity'){
        totallevel = 4;coid=bi4=d;
    }

    var url = 'home.php?mod=misc&ac=ajax&op=district&container='+container+'&containertype='+containertype
        +"&province="+elems[0]+"&city="+elems[1]+"&district="+elems[2]+"&community="+elems[3]
        +"&pid="+pid + "&cid="+cid+"&did="+did+"&coid="+coid+'&level='+totallevel+'&handlekey='+container+'&inajax=1&ajaxtarget=birthdistrictbox';
    ajaxget(url, container,'','','',function(){
        init_birth_menu();
    });

}

function remove_birth_menu(){
    if($('birthprovince_ctrl_menu')!=null){
        var tp = $('birthprovince_ctrl_menu').parentNode;
        tp.removeChild($('birthprovince_ctrl_menu'));
    }
    if($('birthcity_ctrl_menu')!=null){
        var tp = $('birthcity_ctrl_menu').parentNode;
        tp.removeChild($('birthcity_ctrl_menu'));
    }
    if($('birthdist_ctrl_menu')!=null){
        var tp = $('birthdist_ctrl_menu').parentNode;
        tp.removeChild($('birthdist_ctrl_menu'));
    }
    if($('birthcommunity_ctrl_menu')!=null){
        var tp = $('birthcommunity_ctrl_menu').parentNode;
        tp.removeChild($('birthcommunity_ctrl_menu'));
    }
}
function init_birth_menu(){
    remove_birth_menu();
    simulateSelect('birthprovince',110,function(sid,d){custom_dis(sid,d);});
    if(typeof $('birthcity')!='undefined'){
        simulateSelect('birthcity',110,function(sid,d){custom_dis(sid,d);});
    }
    if(typeof $('birthdist')!='undefined'){
        simulateSelect('birthdist',110,function(sid,d){custom_dis(sid,d);});
    }
    if(typeof $('birthcommunity')!='undefined'){
        simulateSelect('birthcommunity',110,function(sid,d){custom_dis(sid,d);});
    }
}
function show_error(fieldid, extrainfo) {
    var elem = $('th_'+fieldid);
    if(elem) {
        elem.className = "rq";
        fieldname = elem.innerHTML;
        extrainfo = (typeof extrainfo == "string") ? extrainfo : "";
        $('showerror_'+fieldid).innerHTML = "请检查该资料项 " + extrainfo;
        $(fieldid).focus();
    }
}
function show_success(message) {
    message = message == '' ? '资料更新成功' : message;
    showDialog(message, 'right', '提示信息', function(){
        top.window.location.href = top.window.location.href;
    }, 0, null, '', '', '', '', 3);
}
function clearErrorInfo() {
    var spanObj = $('profilelist').getElementsByTagName("div");
    for(var i in spanObj) {
        if(typeof spanObj[i].id != "undefined" && spanObj[i].id.indexOf("_")) {
            var ids = explode('_', spanObj[i].id);
            if(ids[0] == "showerror") {
                spanObj[i].innerHTML = '';
                $('th_'+ids[1]).className = '';
            }
        }
    }
}