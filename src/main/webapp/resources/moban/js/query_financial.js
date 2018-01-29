$(document).ready(function(){
	var data = {};
 	var myTemplate = Handlebars.compile($("#client-template").html());
 	$('#client-info').html(myTemplate(data));
 	
 	init_sel();
    $('.datepicker').datepicker();
    
    $("#queryBtn").on("click",function(){
		 var param =  $("#queryParam").val();
			$.ajax({    
				url:'/getPersonByCondition.do?clientId='+param,
				data: {},
				type:'post',   
				success:function(data) {
					$('#client-info').html(myTemplate(data));
					init_sel();
				},    
				error : function() {}    
		 });
     });  
    
});

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
