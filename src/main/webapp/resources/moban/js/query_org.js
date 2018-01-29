var myTemplate = Handlebars.compile($("#client-template").html());
$(document).ready(function(){
	var data = {};
 	$('#client-info').html(myTemplate(data));
 	
 	init_sel();
    $('.datepicker').datepicker({
    	format: 'yyyy-mm-dd'
    });
    
    $("#queryBtn").on("click",function(){
    	 var param = paramString(getQueryParameters());
    	 if(param != ""){
			 $.ajax({    
					url:'/getPersonByCondition.do?'+param,
					data: {},
					type:'post',   
					success:function(data) {
						if(data.clientId){
							var tabIndex ;
							$(".nav-tabs").find("li").each(function(index){
								if($(this).hasClass("active")){
									tabIndex = index
								}

							});
							$('#client-info').html(myTemplate(data));
							$(".nav-tabs").find("li").each(function(index){
								if(index != tabIndex){
									$(this).removeClass("active");
								}else{
									$(this).addClass("active");
								}
							});
							$(".tab-pane").each(function(index){
								if(index != tabIndex){
									$(this).removeClass("active");
								}else{
									$(this).addClass("active");
								}
							});
							init_sel();
						    $("#client-info").find('.datepicker').datepicker({
						    	format: 'yyyy-mm-dd'
						    });
						}else{
							$('#client-info').html("");
						}
					},    
					error : function() {}    
			 });
    	 }
     });  
    
	 $(document).on("click","button[name='addBtn']",function(){
    	var $box = $(this).closest(".widget-box");
    	var $tbody = $box.find("tbody");
    	var $tr = $($tbody.first().html());
    	var html = "<tr class='odd gradeX'>" + $tr.html() + "</tr>";
    	$tbody.append(html);
    	$tbody.find("tr").last().find("select").select2();
     });  
    
	 $(document).on("click","#saveBtn",function(){  save(this); });  
});

function resetTab(){
	var tabIndex ;
	$(".nav-tabs").find("li").each(function(index){
		if($(this).hasClass("active")){
			tabIndex = index
		}

	});
	$(".nav-tabs").find("li").each(function(index){
		if(index != tabIndex){
			$(this).removeClass("active");
		}else{
			$(this).addClass("active");
		}
	});
}

//var tpCdCache = {};
//$.data(tpCdCache,"cdYorNTp",[{"name":"是","cdTp":"Y"},{"name":"否","cdTp":"N"}]);
window.top.jQuery('#breadcrumb').data("cdYorNTp",[{"name":"是","cdTp":"Y"},{"name":"否","cdTp":"N"}]);
var holder = window.top.jQuery('#breadcrumb');
function init_sel(){
	$("select").each(function(){
		var $sel = $(this);
		var oval = $sel.attr("o-value");
		var mview = $sel.attr("m-view");
		var s_list = $sel.attr("s-list");
		if(!s_list) return false;
		//if($.data(tpCdCache,s_list)){
		if(holder.data(s_list)){
			var data = holder.data(s_list);
			//var data = $.data(tpCdCache,s_list);
			options($sel,data,oval,mview);
		}else{
			$.ajax({    
				url:'/getTpCdByType.do?tableName='+s_list,
				data: {},
				type:'post',   
				success:function(data) {
					if($.isArray(data)){
						options($sel,data,oval,mview);
						//$.data(tpCdCache,s_list,data);
						window.top.jQuery('#breadcrumb').data(s_list,data);
					}
				},    
				error : function() {}    
			});
		}
	});
}

function options($sel,data,oval,mview){
	var str = "";
	$.each( data, function(index, obj){
		if(oval && oval == obj.cdTp){
			str += "<option selected='selected' value ='" + obj.cdTp + "'>" + obj.name + "</option>"
		}else str += "<option value ='" + obj.cdTp + "'>" + obj.name + "</option>"
	});
	$sel.html(str);
	
	if(!mview) $sel.select2();
}

function editRow(obj){
	var $btn = $(obj);
	var $tr = $btn.closest("tr");
	if($(obj).text() == "更新"){
		$btn.removeClass("btn-info").addClass("btn-success").text("保存");
		$tr.find("input").removeAttr("readonly");
		$tr.find("select").prop("disabled", false);
	}else{
		var data = $tr.inputs();
		for(var p in data){ 
			if(!data[p] || data[p] == ""){
				show_alert("warning","请将信息填写完整！");
				return;
			}
		} 
		
		var $ladda = Ladda.create(obj);
		$.ajax({    
			url:'/addAuthInfo.do',
			data: data,
			type:'post',
			beforeSend:function(){
				$ladda.start();
			},
			success:function(data) {
				show_alert("success","提交成功！");
				$ladda.stop();
				$btn.removeClass("btn-success").addClass("btn-info").text("更新");
				$tr.find("input").attr("readonly","readonly");
				$tr.find("select").prop("disabled", true);
			},    
			error : function() {
				$ladda.stop();
				$btn.removeClass("btn-success").addClass("btn-info").text("更新");
				$tr.find("input").attr("readonly","readonly");
				$tr.find("select").prop("disabled", true);
			}    
		});
	}
}


function save(btn){
    var data = $("#updateClientForm").params();
    data.transDesc = "维护个人信息";
	data.transName = "updatePerson";
	
  	var $btn = Ladda.create(btn);
	$.ajax({    
		url:'/addAuthInfo.do',
		data: data,
		type:'post',
		beforeSend:function(){
			$btn.start();
		},
		success:function(data) {
			show_alert("success","提交成功！");
			$btn.stop();
			
		},    
		error : function() {
			$btn.stop();
		}    
	});
}



