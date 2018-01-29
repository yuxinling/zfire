$(document).ready(function(){
	var data = {};
 	var myTemplate = Handlebars.compile($("#sys-template").html());
 	$('#sys-config').html(myTemplate(data));

	$.ajax({    
		url:'/getPrams.do',
		data: {},
		type:'post',   
		success:function(data) {
			if($.isArray(data)){
				$('#sys-config').html(myTemplate(data));
				//$("select").select2({width:'auto',disabled: true});
			}
		},    
		error : function() {}    
	});
	
});
function editRow(obj,index){
	var $btn = $(obj);
	var $tr = $btn.closest("tr");
	if($(obj).text() == "更新"){
		$btn.removeClass("btn-info").addClass("btn-success").text("保存");
		$tr.find("input").removeAttr("readonly");
		$tr.find("select").prop("disabled", false);
	}else{
		$btn.removeClass("btn-success").addClass("btn-info").text("更新");
		$tr.find("input").attr("readonly","readonly");
		$tr.find("select").prop("disabled", true);
	}
}
