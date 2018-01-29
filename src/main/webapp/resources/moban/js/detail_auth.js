
var authInfoId = null;
$(document).ready(function(){
	var holder = window.top.jQuery('#breadcrumb');
	var detail = holder.data("detail");
	var user = holder.data("user");
	
	Handlebars.registerHelper('divStart', function (index,options) {
	   var length = options.data.root.nvals.length;
	   if(index % 2 == 0){
		   return options.fn(this);
	   }else{
		   return options.inverse(this);
	   }
	});
	Handlebars.registerHelper('divEnd', function (index,options) {
		var length = options.data.root.nvals.length;
		if (index == length - 1) {
			return options.fn(this);
		}else if(index % 2 == 1){
			return options.fn(this);
		}else{
			return options.inverse(this);
		}
	});
	
	Handlebars.registerHelper('checkStatue', function (options) {
		var user = holder.data("user");
		if(!user) return new Handlebars.SafeString(''); 
		if(user["operator"] == true){
			if(detail["transAuth"] == 'N') {
				return new Handlebars.SafeString('<button name="cancelBtn" type="button" class="btn btn-success ladda-button" data-style="zoom-in">撤回</button>');
			}else if(detail["transAuth"] == 'Y'){
				return new Handlebars.SafeString(''); 
			}else{
				return new Handlebars.SafeString('<button name="updateBtn" type="button" class="btn btn-success ladda-button" data-style="zoom-in">修改</button>');
			}
		}else if(user["checker"] == true){
			if(detail["transAuth"] == 'N'){
				var html = '<button name="commitBtn" type="button" class="btn btn-success ladda-button" data-style="zoom-in">提交</button>';
				html += '&nbsp;<button name="refuseBtn" type="button" class="btn btn-warning ladda-button" data-style="zoom-in">拒绝</button>'; 
				return new Handlebars.SafeString(html);
			}else{
				return new Handlebars.SafeString(''); 
			}
		}else return new Handlebars.SafeString(''); 
	});
	
	$(document).on("click","button[name='cancelBtn']",function(){
		var data = {"authInfoId": authInfoId, "transAuth": "C", "reason": "撤销"}
		var $ladda = Ladda.create(this);
		$.ajax({    
			url:'/updateAuthInfo.do',
			data: data,
			type:'post',
			beforeSend:function(){
				$ladda.start();
			},
			success:function(data) {
				show_alert("success","撤回成功！");
				$ladda.stop();
				document.getElementById('iframe-main').contentWindow.history.back();
			},    
			error : function() {
				$ladda.stop();
			}    
		});
		
     }); 
	$(document).on("click","button[name='updateBtn']",function(){
		
		
	}); 
	$(document).on("click","button[name='commitBtn']",function(){
		
		
	}); 
	$(document).on("click","button[name='refuseBtn']",function(){
		
		
	}); 
	
	var nvals = new Array();
 	var myTemplate = Handlebars.compile($("#auth-template").html());

 	if(detail){
 		var opType = detail["transName"];
 		authInfoId = detail["authInfoId"];
 		
		var data = JSON.parse(detail["transRequstStr"]);
		console.log(data);
		var nvaps = $.data(labelCache,opType);
		if(nvaps){
			$.each(nvaps, function(i, nvap){
				var name = nvap["name"];
				var label = nvap["label"];
				var s_list = nvap["s-list"];
				var value = data[name];
				if(value == "null"){
					value = null;
				}
				if(value && s_list){
					var sels = holder.data(s_list);
					if(sels){
						$.each(sels,function(index,sel){
							if(sel["cdTp"] == value){
								value = value + "-" + sel["name"];
								return true;
							}
						});
					}
				}
				var nval = {"name":name,"value":value,"label":label};
				nvals.push(nval);
			});
		}
		console.log(nvals);
 	}
 	$('#auth-info').html(myTemplate({"nvals":nvals}));
});
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
