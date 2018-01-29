/**
 * User: yu_xinling
 * Date: 13-9-19
 * Time: 下午8:41
 */
function reloadListData(page, params) {
    if(!page)alert("page(id/code) is required.");
    var data = {};
    data["page"] = page;
    if (params) data = $.extend(data, params);
    if(window.pageConfig && pageConfig[page]){
        var c_params = pageConfig[page]["c_params"];
        if(c_params)data["c_params"] = c_params;
    }

    var $pagediv = $("#page" + page);
    var $loadMask = loadMask("page" + page);
    $pagediv.append($loadMask);

    var $listlayoutdiv = $pagediv.parent("div");
    var url = "/page.do";
    $.ajax({
        type: "POST",
        url: url,
        data: data,
        timeout:30000,
        statusCode:{
            404: function() {
                alert("page not found");
            }
        },
        success: function(html){
            $listlayoutdiv.html(html);
            $loadMask.remove();
        },
        error:function(html){

        },
        dataType: "html"
    });
}

function showPageView(page,params){
    if(!page)alert("page(id/code) is required.");
    var data = {};
    data["page"] = page;

    if(window.pageConfig && pageConfig[page]){
        var c_params = pageConfig[page]["c_params"];
        if(c_params)data["c_params"] = c_params;
    }

    if (params) data = $.extend(data, params);
    var $htmlMain = $("#main-content-html");

    var $loadMask = loadMask("main-content-html");

    var url = "/page.do";
    $.ajax({
        type: "POST",
        url: url,
        data: data,
        timeout:30000,
        statusCode:{
            404: function() {
                alert("page not found");
            }
        },
        success: function(html){
            $htmlMain.html(html);
            $loadMask.remove();
        },
        error:function(html){
        },
        dataType: "html"
    });
}
function loadPage(url,params){
    if(!url)alert("url is required.");

    var data = {};
    if (params) data = $.extend(data, params);
    var $htmlMain = $("#main-content-html");
    var $loadMask = loadMask("main-content-html");
    $.ajax({
        type: "POST",
        url: url,
        data: data,
        timeout:30000,
        statusCode:{
            404: function() {
                alert("page not found");
            }
        },
        success: function(html){
            $htmlMain.html(html);
            $loadMask.remove();
        },
        error:function(html){
        },
        dataType: "html"
    });
}

function loadMask(id){
    var $domElement = $("#"+id);

    var $mask = $(".loading_mask", $domElement);
    if($mask.size() == 0){
        $mask = $('<div class="loading_mask"><div style="height:50%"></div><img src="/resources/images/loading-2.gif"></div>');
        var width = $domElement.width();
        var height = $domElement.height();
        var top = $domElement.offset().top;
        var position = $domElement.css("position");
        var _position = "absolute";
        if(position == "absolute") top = 0;
        if(position == "fixed") _position = "fixed";
        $mask.css({'top':top,'width':width,'height':height,'position':_position});
        $domElement.append($mask);
    }
    return $mask;
}


function showPoupWindows(params){
    var $model = $('<div id="myModal" class="modal hide fade popmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" />');
//    var $modelBody = $('<div style="min-height:100px;" class="modal-body" />');
//    var $modelBody = $('<div style="min-height:100px;padding: 10px 0px 10px 0px;" />');
//    var $modelHeader = $('<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button></div>');
//
//    if(params && params["title"])
//        $modelHeader.append('<h4 id="myModalLabel">' + params["title"] + '</h4>');
//    else
//        $modelHeader.append('<h4 id="myModalLabel">信息</h4>');
//
//    var $modelFooter = $('<div class="modal-footer" />');
//    $modelFooter.append('<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>');
//    $modelFooter.append('<button class="btn btn-primary" onclick="save()">确定</button>');

    if(params && params["css"]) $model.addClass(params['css']);

//    $model.append($modelHeader);
//    $model.append($modelBody);
//    $model.append($modelFooter);
    $model.appendTo(document.body);

//    var width = $model.width();
//    $model.css({"margin-left": -width / 2});

    if(event) event.preventDefault();
    var $target = $("#myModal");
    var option = {toggle:"modal",backdrop:"static"};
    var data = {};
    if (params) data = $.extend(data, params["data"] || {});
    var url = "/page.do";
    console.log(data)
    $.ajax({
        type: "POST",
        url: url,
        data: data,
        timeout:30000,
        statusCode:{
            404: function() {
                alert("page not found");
            }
        },
        success: function(html){
//            $modelBody.html(html);
            var closeBtn = '<button type="button" style="display: none" class="close" data-dismiss="modal" aria-hidden="true"></button>';
            $model.html(closeBtn+html);

            var width = $model.width();
            $model.css({"margin-left": -width / 2});

            $target.modal(option).one('hide', function (event) {
//                var event = $.Event('remove');
//                $target.trigger(event);
                var timeout = setTimeout(function () {
                    $target.remove();
                    if(params['docallback'] && params['callback']){
                        params['callback']();
                    }
                }, 600);
            });

            //将当前窗口放入堆栈中
            if(!window.PoupWindows){
                PoupWindows = new PoupWinStack;
                PoupWindows.init();
            }
            PoupWindows.push({"win":$target,"params":params});

            //close btn
            var $close = $(".close",$target);
            if($close)$close.on("click",function(){PoupWindows.close()});

        },
        error:function(html){
        },
        dataType: "html"
    });

    return $target;
}

//窗口堆栈的实现
var PoupWinStack = function(){}
PoupWinStack.prototype={

    init:function(){
        this.STACKMAX = 100;
        this.stack = new Array(this.STACKMACK);
        this.top = -1;
        return this.stack;
    },
    empty:function(){
        if(this.top==-1){
            return true;
        }
        else{
            return false;
        }
    },
    push:function(elem){
        if(this.top==this.STACKMAX-1){
            return "栈满";
        }
        else{
            this.top++;
            this.stack[this.top] = elem;
        }
    },
    pop:function(){
        if(this.top==-1){
            return "空栈,无法删除栈顶元素！";
        }
        else{
            var x = this.stack[this.top];
            this.top--;
            return x;
        }
    },
    top:function(){
        if(this.top!=-1){
            return this.stack[this.top];
        }
        else{
            return "空栈，顶元素无返回值！";
        }
    },
    clear:function(){
        this.top=-1;
    },
    length:function(){
        return this.top+1;
    },
    close:function(flag){
        if(this.length() > 0){
            var winObj = this.pop();
            if(flag){
                winObj['params']["docallback"] = true;
            }else{
                winObj['params']["docallback"] = false;
            }
            winObj['win'].find("button[data-dismiss='modal']")[0].click();
        }
    }
}
