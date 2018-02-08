<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加菜单</h4>
</div>
<div class="pop_modal_body" >
    <form id="addMenuForm" class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="pMenu">父菜单</label>
            <div class="controls">
                <input type="hidden" id="pid" placeholder="" name="pid">
                <input type="text" id="pMenu" placeholder="" name="pMenu" onclick="showMenu(); return false;">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="name">菜单名称</label>
            <div class="controls">
                <input type="text" id="name" placeholder="" name="name">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="code">菜单编码</label>
            <div class="controls">
                <input type="text" id="code" placeholder="" name="code">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="hreflink">菜单URL</label>
            <div class="controls">
                <input type="text" id="hreflink" placeholder="" name="hreflink">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="params">参数</label>
            <div class="controls">
                <input type="text" id="params" placeholder="" name="params">
            </div>
        </div>
    </form>
<div id="menuTreeDiv" class="menuTreeDiv" style="display:none; position: fixed;">
	<ul id="menuTree" class="ztree" style="margin-top:0; width:100%;"></ul>
</div>
</div>
<div class="modal-footer" >
    <button class="btn" onclick="PoupWindows.close()">取消</button>
    <button class="btn btn-primary" data-callback="true" onclick="save()">确定</button>
</div>
<script type="text/javascript">
function save(){
    var data = $("#addMenuForm").params();
    var $mask = loadMask("myModal");
    $.request("UC_ADD_MENU",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
        PoupWindows.close(true);
    });
}

var setting = { 
        data: {  
            /* simpleData: {  
                enable: true,   //设置是否使用简单数据模式(Array)  
                idKey: "id",    //设置节点唯一标识属性名称  
                pIdKey: "pid"      //设置父节点唯一标识属性名称  
            }, */  
            key: {  
                name: "name",//zTree 节点数据保存节点名称的属性名称  
                title: "name"//zTree 节点数据保存节点提示信息的属性名称        
            }  
        },  
        /* async: {  
            enable: true,//开启异步加载  
            url:"/execute.do",//设置异步获取节点的 URL 地址 
            data:{"ucname":"UC_QUERY_MENUS"},
            autoParam:["treeId"]//设置父节点数据需要自动提交的参数  
        }, */  
    	callback: {
    		beforeClick: beforeClick,
    		onClick: onClick
    	}
    };  

function beforeClick(treeId, treeNode) {
	/* var check = (treeNode && !treeNode.isParent);
	if (!check) alert("只能选择叶子节点");
	return check; */
}

function onClick(e, treeId, treeNode) {
	var zTree = $.fn.zTree.getZTreeObj("menuTree"),
	nodes = zTree.getSelectedNodes(),
	v = "";
	id = "";
	nodes.sort(function compare(a,b){return a.id-b.id;});
	for (var i=0, l= nodes.length; i<l; i++) {
		v = nodes[i].name;
		id = nodes[i].id;
	}
	if (v.length > 0 ) v = v.substring(0, v.length-1);
	$("#pMenu").attr("value", v);
	$("#pid").attr("value", id);
}

function showMenu() {
	var $pmenu = $("#pMenu");
	var offset = $pmenu.offset();
	var width = $pmenu.width() + 2;
	$("#menuTreeDiv").css({left:offset.left + "px", top:offset.top + $pmenu.outerHeight() + "px", width: width + "px"}).slideDown("fast");
	$("body").bind("mousedown", onBodyDown);
}
function hideMenu() {
	$("#menuTreeDiv").fadeOut("fast");
	$("body").unbind("mousedown", onBodyDown);
}
function onBodyDown(event) {
	if (!(event.target.id == "menuBtn" || event.target.id == "menuTreeDiv" || $(event.target).parents("#menuTreeDiv").length>0)) {
		hideMenu();
	}
}

$(function() {
	$.request("UC_QUERY_MENUS", {"pageflag" : 0 }, function(result) {
		if (result['data']) {
			datas = result['data'];
			$.fn.zTree.init($("#menuTree"), setting, datas);
		}
	});
});
</script>


