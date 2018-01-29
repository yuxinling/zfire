$.extend($.validator.messages, {
    required: "&nbsp;"
});
$(document).ready(function(){
	init_sel();
    $('.datepicker').datepicker();
    
    $("#addOrgForm").validate({
		errorPlacement: function(error, element) {
			var top = element.position().top;
			var left = element.position().left;
			var margin = 30;
			if(!element.hasClass("span4")){
				var $div = element.closest(".span4");
				left = $div.position().left;
				
				if($div.find(".datepicker")[0]){
					margin = 55;
				}
				
			}
			if(element[0].tagName == 'SELECT'){
				element =  element.next();
				margin = 17;
			}
			var height = element.height()/2;
			var width = element.width();
			error.appendTo(element.parent());
			error.css({position: "absolute",'top':top+height-4,'left':left+width+margin,'z-index':2});
		},
		success: function(label) {
			label.remove(".error");
		},
		highlight: function(element, errorClass) {
			$(element).parent().next().find("." + errorClass).removeClass("checked");
		}
	});
    
    $("#saveBtn").on("click",function(){
    	if($("#addOrgForm").valid()){
    		save();
    	}else{
    		show_alert("warning","缺少必填项！");
    	}
    });   
    
    $("#resetBtn").on("click",function(){
    	$("#addOrgForm")[0].reset();
    	$("select").val(null).trigger('change');
    });  
});

function save(){
    var data = $("#addOrgForm").params();
    data.transDesc = "新增企业客户信息";
	data.transName = "addOrg";
	
	 // 用来保存所有的属性名称和值
	var params = "";
	for(var p in data){ 
		if(typeof(data[p])=="function"){ 
			data[p]();
		}else{ 
			params+= p + "=" + data[p] + "&";
		} 
	} 
  	var $btn = Ladda.create( document.querySelector( '.ladda-button' ) );
	$.ajax({    
		url:'/addAuthInfo.do?'+params,
		data: {},
		type:'post',
		beforeSend:function(){
			$btn.start();
		},
		success:function(data) {
			show_alert("success","提交成功！");
			$btn.stop();
			openAuth(data);
			
		},    
		error : function() {
			$btn.stop();
		}    
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

function show_alert(type,message){
	$.toast({
	    heading: '提示',
	    text: message,
	    icon: type,  
	    hideAfter : 2000,
	    loader: false,
	    position : 'mid-center' 
	})
}

