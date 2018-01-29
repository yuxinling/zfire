$(function(){
        $(".shaixuan-tj span.crumb-select-item").live('hover',function(event){
            if(event.type=='mouseenter'){ 
            $(this).addClass("crumb-select-itemon");
            }else{ 
            $(this).removeClass("crumb-select-itemon");
            } 
        });
        $(".shaixuan-tj span.crumb-select-item").live('click', function(event){
            event.preventDefault();
			var TTR = $(this).find("em").text();
			var THTR = $(this).find("b").text();
            $(this).css("display","none");
            $(this).html("");
			$(this).nextUntil("span[name='sinput']").html("");
			$(this).nextUntil("span[name='sinput']").css("display","none");
			
			
			if(THTR == "查询方式："){
				$("#page-search-store").find("dl[name]").css("display","block");
			}else if(THTR == "证件类型："){
				$("#page-search-store").find("dl[name='id_type']").css("display","block");
			}else if(THTR == "认证类型："){
				$("#page-search-store").find("dl[name='auth_type']").css("display","block");
			}else{
			}
			
            $(".show-con a").each(function(){
                var TT = $(this).text();
                    THI = $(this);
                    THIPP = $(this).parents("dl");
                if(TTR==TT){
                    THI.removeClass("nzw12");
                }
            })
        });
        $(document).on("click",".show-con a",function(event){
            event.preventDefault();
            THIP = $(this).parents("dl");
			var type_name = THIP.attr("name");
            if($(this).hasClass("nzw12")){
            }else{
                $(this).addClass("nzw12");
                var zhiclass = $(this).parents("dd").siblings("dt").find("a").text();
				var zhicon = $(this).text();
				var tianjaneir="<a href='/'><b>"+zhiclass+"</b><em>"+zhicon+"</em><i class='icon-remove'></i></a>";
				
                $(".shaixuan-tj").children('span[name="'+type_name+'"]').css("display","block").addClass("crumb-select-item").html(tianjaneir);
				if(zhiclass == "查询方式："){
					if(zhicon == "根据客户号查询" || zhicon == "根据卡号查询" || zhicon == "根据账号查询"){
						THIP.closest("div").children('dl[name="query_type"]').css("display","none");
						THIP.closest("div").children('dl[name="id_type"]').css("display","none");
						THIP.closest("div").children('dl[name="auth_type"]').css("display","none");
					}else if(zhicon == "根据证件信息查询"){
						THIP.closest("div").children('dl[name="query_type"]').css("display","none");
						THIP.closest("div").children('dl[name="auth_type"]').css("display","none");
					}else if( zhicon == "根据认证信息查询"){
						THIP.closest("div").children('dl[name="query_type"]').css("display","none");
						THIP.closest("div").children('dl[name="id_type"]').css("display","none");
					}else{
						THIP.css("display","none");
					}
				}else if(zhiclass == "证件类型："){
					
					var $queryType = $(".shaixuan-tj").children('span[name="query_type"]');
					
					var display = $queryType.css('display');
					if(display == 'none'){
						var typeHtml ="<a href='/'><b>查询方式：</b><em>根据证件信息查询</em><i class='icon-remove'></i></a>";
						$queryType.css("display","block").html(typeHtml);
					}
					
					THIP.closest("div").children('dl[name="query_type"]').css("display","none");
					THIP.closest("div").children('dl[name="id_type"]').css("display","none");
					THIP.closest("div").children('dl[name="auth_type"]').css("display","none");
				
				}else{
					var $queryType = $(".shaixuan-tj").children('span[name="query_type"]');
					
					var display = $queryType.css('display');
					if(display == 'none'){
						var typeHtml ="<a href='/'><b>查询方式：</b><em>根据认证信息查询</em><i class='icon-remove'></i></a>";
						$queryType.css("display","block").html(typeHtml);
					}
					
					THIP.closest("div").children('dl[name="query_type"]').css("display","none");
					THIP.closest("div").children('dl[name="id_type"]').css("display","none");
					THIP.closest("div").children('dl[name="auth_type"]').css("display","none");
				
				}
            }
        });
        $(".show-more").click(function(event){
            event.preventDefault();
            var ticon = $(this).find("i");
                tspan = $(this).find("span");
                if($(this).hasClass("zk")){
                    $(this).siblings(".show-con").css("height","30px");
                    ticon.removeClass("icon-angle-up");
                    ticon.addClass("icon-angle-down");
                    tspan.html("更多");
                    $(this).removeClass("zk")
                }else{
                    $(this).siblings(".show-con").css("height","auto");
                    ticon.removeClass("icon-angle-down");
                    ticon.addClass("icon-angle-up");
                    tspan.html("收起");
                    $(this).addClass("zk")
                }
        });
        $("#sxbtn").click(function(event){
            event.preventDefault();
            var xicon = $(this).find("span i");
                xspan = $(this).find("span em");
            if($(this).hasClass("zkon")){
                xspan.text("收起筛选");
                xicon.removeClass("icon-angle-down");
                xicon.addClass("icon-angle-up");
                $(".sxcon").slideDown();
                $(this).removeClass("zkon")
            }else{
                xspan.text("查看筛选");
                xicon.removeClass("icon-angle-up");
                xicon.addClass("icon-angle-down");
                $(".sxcon").slideUp();
                $(this).addClass("zkon")
            }
        })
});

function getQueryParameters(){
	var $Odiv = $(".shaixuan-tj");
	var param = $("#queryParam").val();
	
	var qtype = $Odiv.find("span[name='query_type']").text();
	if(qtype == ''){
		show_alert("warning","请选择查询方式");
	}else if(qtype == '查询方式：根据客户号查询'){
		if(param != ''){
			return {"clientId":param}
		}
		show_alert("warning","请输入查询的客户号");
	}else if(qtype == "查询方式：根据卡号查询"){
		if(param != ''){
			return {"mediumNo":param}
		}
		show_alert("warning","请输入查询的卡号");
	}else if(qtype == "查询方式：根据账号查询"){
		if(param != ''){
			return {"acctNo":param}
		}
		show_alert("warning","请输入查询的账号");
	}else if(qtype == "查询方式：根据证件信息查询"){
		var idtypeText = $Odiv.find("span[name='id_type']").text();
		if(idtypeText == ""){
			show_alert("warning","请选择证件类型");
		}else{
			if(param != ''){
				var idtype = idtypeText.substring(5,8);
				return {"idTpCd":idtype,"idNum":param}
			}
			show_alert("warning","请输入查询的证件号");
		}
		
	}else if(qtype == "查询方式：根据认证信息查询"){
		var authTypeText = $Odiv.find("span[name='auth_type']").text();
		if(authTypeText == ""){
			
		}
		//var idtype = authTypeText.substring(5,6);
		//certCatTpCd:5
		//certNum:12012542154
		//certTpCd:0
		show_alert("error","暂时不支持");
	}else{
		show_alert("error","暂时不支持");
	}
}

function paramString(data){
	var params = "";
	if(data){
		for(var p in data){ 
			if(typeof(data[p])=="function"){ 
				data[p]();
			}else{ 
				params+= p + "=" + data[p] + "&";
			} 
		} 
	}
	
	return params;
}

function show_alert(type,msg){
	$.toast({
	    heading: '提示',
	    text: msg,
	    icon: type,  //warning
	    hideAfter : 1000,
	    loader: false,
	    position : 'mid-center' 
	})
}

