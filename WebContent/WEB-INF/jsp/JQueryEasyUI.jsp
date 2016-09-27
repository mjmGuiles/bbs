<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>bbs论坛后台管理</title>
    <link rel="stylesheet" type="text/css" href="easyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
    <script type="text/javascript" src="easyUI/jquery.min.js"></script>
    <script type="text/javascript" src="easyUI/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="easyUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="easyUI/src/jquery-form.js"></script>
    <script>
    function formatDate(value){
    	var unixTimestamp = new Date(value);
    	return unixTimestamp.format("yyyy-MM-dd");
    	}
    	function formatDateFull(value){
    	var unixTimestamp = new Date(value);
    	return unixTimestamp.format("yyyy-MM-dd hh:mm:ss");
    	}
    	//为Date类型拓展一个format方法，用于格式化日期
    	Date.prototype.format = function (format) //author: meizz
    	{
    	var o = {
    	"M+": this.getMonth() + 1, //month
    	"d+": this.getDate(), //day
    	"h+": this.getHours(), //hour
    	"m+": this.getMinutes(), //minute
    	"s+": this.getSeconds(), //second
    	"q+": Math.floor((this.getMonth() + 3) / 3), //quarter  
    	"S": this.getMilliseconds() //millisecond
    	};
    	if (/(y+)/.test(format))
    	format = format.replace(RegExp.$1,
    	(this.getFullYear() + "").substr(4 - RegExp.$1.length));
    	for (var k in o)
    	if (new RegExp("(" + k + ")").test(format))
    	format = format.replace(RegExp.$1,
    	RegExp.$1.length == 1 ? o[k] :
    	("00" + o[k]).substr(("" + o[k]).length));
    	return format;
    	}
    var url;
    function dateFormate(val) {
        var time = '';
       var flag = true;
       for (var i in val) { 
       if (null !=val[i] && "" != val[i]) {
             flag = false;
             break;
         }
       }
       if (flag) {
         return "";
    }
       var year = parseInt(val.year)+1900;
    var month = (parseInt(val.month)+1);
    month= month > 9 ? month : ('0'+month);
    var date = parseInt(val.date);
    date = date > 9 ? date : ('0'+date);
    time = year + '-' + month + '-'+ date;
    return time;
}
    function saveOrUpdateUser(){
    	$('#fm').form('submit',{
    		url: url,
    		onSubmit: function(){
    			return $(this).form('validate');
    		},
    		success: function(result){
    			if (result == 0){
					alert("inert error");
    			} else {
    				$('#dlg').dialog('close');		// close the dialog
    				$('#dg').datagrid('reload');	// reload the user data
    			}
    		}
    	});
    }
    function editUser(){
    	var row = $('#dg').datagrid('getSelected');
    	if (row){
    		$('#dlg').dialog('open').dialog('setTitle','Edit User');
    		$('#fm').form('load',row);
    		url = 'updateUser1?userId='+row.userId;
    	}
    }
    function destroyUser(){
    	var row = $('#dg').datagrid('getSelected');
    	if (row){
    		$.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
    			if (r){
    				$.post('delUser',{id:row.userId},function(result){
    					if (result != 0){
    						$('#dg').datagrid('reload');	// reload the user data
    					} else {
    						$.messager.show({	// show error message
    							title: 'Error',
    							msg: result.errorMsg
    						});
    					}
    				},'json');
    			}
    		});
    	}
    }
    </script>
</head>
<body>
<!-- 展示商品 -->
<!-- data-options="formatter:function(v){return '<img src='+v+' width=50/>'}" -->
<table id="dg" title="用户管理" class="easyui-datagrid" style="width:100%;hight:auto"
       url="getAllUsers"
       toolbar="#toolbar"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="userId" width="50">编号</th>
        <th field="userName" width="50">名称</th>
        <th field="userPassword" width="50">密码</th>
        <th field="userEmail" width="50">邮箱</th>
        <th data-options="field:'regTime',formatter:formatDate,width:50" >注册时间</th>
        <th field="postNum" width="50">发帖数</th>
        <th field="elitepostNum" width="50">精华帖数</th>
        <th field="userType" width="50">类型</th>
        <th field="userGender" width="50">性别</th>
        <th data-options="field:'userBirth',formatter:formatDateFull,width:50">出生年月</th>
        <th field="userNativeplace" width="50">祖籍</th>
        <th field="userQq" width="50">QQ号</th>
        <th field="userSignnative" width="50">个性签名</th>
        <th field="userHeader" width="50">头像</th>
        <th field="userIntegral" width="50">积分</th>
        <th field="userPhone" width="50">电话号码</th>
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>
</div>
<!-- 添加商品 -->
<div id="dlg" class="easyui-dialog" style="width:400px;height:360px;padding:10px 20px"
     closed="true" buttons="#dlg-buttons">
    <div class="ftitle">用户信息</div>
    <form id="fm" method="post" enctype="multipart/form-data" style="outline: none;">
        <div class="fitem">
            <label>名称:</label>
            <input name="userName" class="easyui-validatebox">
        </div>
        <div class="fitem">
            <label>密码:</label>
            <input name="userPassword" class="easyui-validatebox" type="password">
        </div>
        <div class="fitem">
            <label>邮箱:</label>
            <input name="userEmail" class="easyui-validatebox" >
        </div>
        <div class="fitem">
            <label>类型:</label>
            <input name="userType" class="easyui-validatebox" placeholder="用户或管理员">
        </div>
        <div class="fitem">
            <label>性别:</label>
            <input name="userGender" class="easyui-validatebox" placeholder="男或女">
        </div>
        <div class="fitem">
            <label>生日:</label>
            <input name="userBirth" class="easyui-validatebox" >
        </div>
        <div class="fitem">
            <label>祖籍:</label>
            <input name="userNativeplace" class="easyui-validatebox">
        </div>
        <div class="fitem">
            <label>QQ号:</label>
            <input name="userQq" class="easyui-validatebox">
        </div>
         <div class="fitem">
            <label>签名:</label>
            <input name="userSignnative" class="easyui-validatebox">
        </div>
        <div class="fitem">
            <label>电话:</label>
            <input name="userPhone" class="easyui-validatebox">
        </div>
    </form>
</div>
<div id="dlg-buttons">
    <a  class="easyui-linkbutton" iconCls="icon-ok" onclick="saveOrUpdateUser()">保存</a>
    <a  class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
</div>
</body>
</html>