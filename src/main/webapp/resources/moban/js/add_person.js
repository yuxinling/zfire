//var tpCdCache = {};
//$.data(tpCdCache,"cdYorNTp",[{"name":"是","cdTp":"Y"},{"name":"否","cdTp":"N"}]);
var holder;
$.extend($.validator.messages, {
    required: "&nbsp;"
});
$(document).ready(function(){
	holder = window.top.jQuery('#breadcrumb');
	if(holder)holder.data("cdYorNTp",[{"name":"是","cdTp":"Y"},{"name":"否","cdTp":"N"}]);
	init_sel();
    $('.datepicker').datepicker({ format: 'yyyy-mm-dd' });
    
    $("#addClientForm").validate({
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
    	if($("#addClientForm").valid()){
    		save();
    	}else{
    		show_alert("warning","缺少必填项！");
    	}
    });  
    
    $("#resetBtn").on("click",function(){
    	$("#addClientForm")[0].reset();
    	$("select").val(null).trigger('change');
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

function init_sel(){
	$("select").each(function(){
		var $sel = $(this);
		var s_list = $sel.attr("s-list");
		var filter = $sel.attr("f-list");
		//if($.data(tpCdCache,s_list)){
		if(holder && holder.data(s_list)){
			var data = holder.data(s_list);
			options($sel,data,filter)
		}else{
			$.ajax({    
				url:'/getTpCdByType.do?tableName='+s_list,
				data: {},
				type:'post',   
				success:function(data) {
					if($.isArray(data)){
						options($sel,data,filter);
						//$.data(tpCdCache,s_list,data);
						if(holder)holder.data(s_list,data);
					}
				},    
				error : function() {}    
			});
		}
	});
}

function doCallback(fn,args){    
    return fn.apply(this, args);  
}  

function options($sel,data,filter){
	var str = "<option value='' selected='selected'>--请选择--</option>";
	if(filter){
		data = doCallback(optionFilter,[data,"include",filter])
	}
	
	$.each(data, function(index, obj){
		str += "<option value ='" + obj.cdTp + "'>" + obj.name + "</option>";
	});
	$sel.html(str);
	$sel.select2();
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

function optionFilter(data,type,regex){
	if(!$.isArray(data)){
		return data;
	}
	
	var results = new Array();
	if (!$.isArray(regex)) {
		var e = eval('/^' + regex + '$/');
		$.each(data, function(index, obj) {
			if (type == "include") {
				if (e.exec(obj.cdTp)) results.push(obj);
			} else {
				if (!e.exec(obj.cdTp)) results.push(obj);
			}
		});
	} else {
		$.each(data, function(index, obj) {
			$.each(regex, function(index, reg) {
				if (type == "include") {
					if (reg == obj.cdTp) results.push(obj);
				} else {
					if (reg != obj.cdTp) results.push(obj);
				}
			});
		});
	}
	
	return results;
}

function openAuth(obj){
	window.top.jQuery('#breadcrumb').data("detail",obj);
	window.top.jQuery("#iframe-main").attr("src", "detail_auth.html");
}


