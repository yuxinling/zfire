$(document).ready(function(){
	var statues = {"Y":"已授权","N":"未授权","S":"授失败","J":"拒绝","C":"撤销"};
	
	Handlebars.registerHelper('detail', function (index,options) {
		var obj = options.data.root[index];
		return "openDetail("+JSON.stringify(obj)+")";
	});
	
	Handlebars.registerHelper('status', function (s,options) {
		return new Handlebars.SafeString(s+"-"+statues[s]);
	});
	
	var data = {};
 	var myTemplate = Handlebars.compile($("#auth-template").html());
 	$('#auth-info').html(myTemplate(data));
 	
 	var authType = [{"id":"Y","name":"已授权"},{"id":"N","name":"未授权"},{"id":"S","name":"授失败"},{"id":"J","name":"拒绝"},{"id":"C","name":"撤销"}];
 	
 	var str = "<option value='' selected='selected'>--请选择--</option>";
	$.each(authType, function(index, obj){
		str += "<option value ='" + obj.id + "'>" + obj.name + "</option>"
	});
	var $auth = $("#transAuth");
	$auth.html(str);
	$auth.select2();
 	
    $("#queryBtn").on("click",function(){
    	var type = $("#transAuth").val();
    	$.ajax({    
    		url:'/getAuthInfo.do',
    		data: {"transAuth": type},
    		type:'post',   
    		success:function(data) {
    			if($.isArray(data)){
    				$('#auth-info').html(myTemplate(data));
    			}
    		},    
    		error : function() {}    
    	});
    });  
});

function openDetail(obj){
	window.top.jQuery('#breadcrumb').data("detail",obj);
	window.top.jQuery("#iframe-main").attr("src", "detail_auth.html");
}
