$(document).ready(function(){
	var data = {};
 	var myTemplate = Handlebars.compile($("#code-template").html());
 	$('#code-list').html(myTemplate(data));
 	
	$.ajax({    
		url:'/getAllTpCd.do',
		data: {},
		type:'post',   
		success:function(data) {
			if($.isArray(data)){
				var str = "";
				$.each( data, function(index, obj){
					str += "<option value ='" + obj.type + "'>" + obj.description + "</option>"
				});
				var $tpcd = $("#tpCdType")
				$tpcd.html(str)
				$tpcd.select2();
				
			}
		},    
		error : function() {}    
	});
 	
    $("#queryBtn").on("click",function(){
    	var val = $("#tpCdType").val();
    	
    	$.ajax({    
    		url:'/getTpCdByType.do',
    		data: {"tableName":val},
    		type:'post',   
    		success:function(data) {
    			if($.isArray(data)){
    				$('#code-list').html(myTemplate(data));
    			}
    		},    
    		error : function() {}    
    	});
    });  


});

function query(obj){
	window.top.jQuery('#breadcrumb').data("detail",obj);
	window.top.jQuery("#iframe-main").attr("src", "detail_auth.html");
}
