$(document).ready(function(){
	var data = {};
 	var myTemplate = Handlebars.compile($("#product-template").html());
 	$('#product-info').html(myTemplate(data));

	$.ajax({    
		url:'/getAllSignProduct.do',
		data: {},
		type:'post',   
		success:function(data) {
			if($.isArray(data)){
				$('#product-info').html(myTemplate(data));
			}
		},    
		error : function() {}    
	});
});

function openDetail(obj){
	window.top.jQuery('#breadcrumb').data("detail",obj);
	window.top.jQuery("#iframe-main").attr("src", "detail_auth.html");
}
