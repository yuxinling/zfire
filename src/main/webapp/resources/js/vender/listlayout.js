/**
 * User: yu_xinling
 * Date: 13-9-16
 * Time: 下午11:59
 */
/**
 * 分页函数
 * @param page 页面的Id
 * @param pageNumber 页数
 * @param totalRow 总共记录数
 * @param pageRow 每页记录数
 */
function doPagination(page, pageNumber,totalRow,pageRow) {
    var params = {};
    params["totalrow"] = totalRow;
    params["pagerow"] = pageRow;
    params["pagenumber"] = pageNumber;

//    var c_params = pageConfig[page]["c_params"];
//    if(c_params)params["c_params"] = c_params;

    reloadListData(page, params);
}


/**
 * 列表中，字段的超链接的处理
 * @param url
 * @param type
 * @param params
 */
function openHyperLink(url,type,params){
    //type 链接类型：1-弹出，2-跳转，3-新页面
    if(url && type){
        var regExp = new RegExp("\\{.+?\\}", "g");
        var results = url.match(regExp);
        if(results && results.length > 0) {
            for(var i = 0; i < results.length; i++){
                var result = results[i].substr(1, results[i].length - 2);
                var value = params[result];
                if(!value) value = "";
                url = url.replace(results[i], value);
            }
        }

        var $target = $(event.target);
        var $pagediv = $target.parents("table").parents("div[id^='page']");
        var pageDivId = $pagediv.attr("id");
        var pageid = pageDivId.substring(4,pageDivId.length);

        if(type == "1"){
            var index = url.indexOf("?");
            var _url = url;
            if( index > 0 ) _url = url.substring(index+1, url.length);

            var options = {};
            options["data"] = {};
            var params = _url.split("&");
            for(var i = 0; i < params.length; i++){
                var keyValue = params[i].split("=");
                if(keyValue.length == 2){
                    var key = keyValue[0];
                    var value = keyValue[1];
                    options["data"][key] = value;
                }
            }
            options["callback"] = function(){
                reloadListData(pageid);
            }
            showPoupWindows(options);
        }
        if(type == "2"){
            showPageView();
        }
        if(type == "3"){
            window.location = url;
        }
    }
}

/**
 * 列表中，删除单行记录的通用代码
 * @param listid
 * @param params
 */
function deleteRow(listid,params){
    var listconfig = pageConfig[listid]['listconfig'];
    var pk = listconfig.pk;
    var pkType = listconfig.pkType;
    var pkValue = [];

    for(var i = 0; i < pk.length ; i++){
        var value = params[pk[i]];
        if(value) pkValue.push(value);
        else pkValue.push("");
    }

    var data = {};
    data["pk"] = pk;
    data["pkType"] = pkType;
    data["pkValue"] = pkValue;

//        $.request("UC_DELETE_PAGE",{"data":JSON.stringify(data)},function(result){
    alert("ok");
//        });
}

/**
 * 表头中，添加行的，通用代码
 * @param index
 * @param listid
 */
function addRow(index,listid){
    var listConfig = pageConfig[listid]["listconfig"]
    var operationSetting = listConfig["headerOperations"][index];

    var options = urlToParams(operationSetting["url"]);
    if(operationSetting["style"])
        options["css"] = operationSetting["style"];
    options["callback"] = function(){
        reloadListData(pageConfig[listid]["pageid"]);
    }

    showPoupWindows(options);
}

/**
 * 表头中，删除多行记录的通用代码
 * @param index
 * @param listid
 */
function deleteRows(index,listid){
    var listConfig = pageConfig["listconfig"]["pagelist"]
    var operationSetting = listConfig["headerOperations"][index];
    console.log(operationSetting)
}

function urlToParams(url){
    var options = {};
    if(!url) return options;
    var index = url.indexOf("?");
    var _url = url;
    if( index > 0 ) _url = url.substring(index+1, url.length);

    options["data"] = {};
    var params = _url.split("&");
    for(var i = 0; i < params.length; i++){
        var keyValue = params[i].split("=");
        if(keyValue.length == 2){
            var key = keyValue[0];
            var value = keyValue[1];
            options["data"][key] = value;
        }
    }

    return options;
}