$(document).ready(function(){
	init_sel();
    $('.datepicker').datepicker();
    
    
    $("#addClientForm").validate({
		rules:{
			clientName:{
				required:true
			},			
			idNum:{
				required:true
			}
		},
		highlight:function(element, errorClass, validClass) {
			$(element).parents('.control-group').addClass('error');
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parents('.control-group').removeClass('error');
			$(element).parents('.controls-row').addClass('success');
		}
	});
    
    $("#saveBtn").on("click",function(){

    });  
});

function save(){
	
	
	
	
    var data = $("#addClientForm").params();
    data.transDesc = "新增个人信息";
	data.transName = "addPerson";
	
	 // 用来保存所有的属性名称和值
	var params = "";
	for(var p in data){ 
		if(typeof(data[p])=="function"){ 
			data[p]();
		}else{ 
			params+= p + "=" + data[p] + "&";
		} 
	} 
	
	console.log(params);
    
	$.ajax({    
		url:'/addAuthInfo.do?'+params,
		data: {},
		type:'post',   
		success:function(data) {
			console.log(data);
		},    
		error : function() {}    
	});
}


var tpCdCache = {};
$.data(tpCdCache,"cdYorNTp",[{"name":"是","cdTp":"Y"},{"name":"否","cdTp":"N"}]);
function init_sel(){
	$("select").each(function(){
		var $sel = $(this);
		var s_list = $sel.attr("s-list");
		if($.data(tpCdCache,s_list)){
			var data = $.data(tpCdCache,s_list);
			var str = "";
			$.each( data, function(index, obj){
				str += "<option value ='" + obj.cdTp + "'>" + obj.name + "</option>"
			});
			$sel.html(str)
			$sel.select2();
		}else{
			$.ajax({    
				url:'/getTpCdByType.do?tableName='+s_list,
				data: {},
				type:'post',   
				success:function(data) {
					if($.isArray(data)){
						var str = "";
						$.each( data, function(index, obj){
							str += "<option value ='" + obj.cdTp + "'>" + obj.name + "</option>"
						});
						$sel.html(str)
						$sel.select2();
						
						$.data(tpCdCache,s_list,data);
					}
				},    
				error : function() {}    
			});
		}
	});
}
