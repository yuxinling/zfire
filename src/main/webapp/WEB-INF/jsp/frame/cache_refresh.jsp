<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="loadCacheForm" class="form-horizontal">
    <div class="inline-columns-one">
        <div class="control-group">
            <label class="control-label">请选择</label>
            <div class="controls">
                <label class="checkbox"> <input type="checkbox" name="reCache" value="dict">字典数据</label>
            </div>
        </div>
    </div>
    <div class="inline-columns-one">
        <div class="control-group">
            <label class="control-label"></label>
            <div class="controls">
                <label class="checkbox"> <input type="checkbox" name="reCache" value="ucCfg">UC配置数据</label>
            </div>
        </div>
    </div>
    <div class="inline-columns-one">
        <div class="control-group">
            <label class="control-label"></label>
            <div class="controls">
                <label class="checkbox"> <input type="checkbox" name="reCache" value="pageCfg">页面(page)配置数据</label>
            </div>
        </div>
    </div>
    <div class="inline-columns-one">
        <div class="control-group">
            <label class="control-label"></label>
            <div class="controls">
                <label class="checkbox"> <input type="checkbox" name="reCache" value="layoutCfg">布局(layout)配置数据</label>
            </div>
        </div>
    </div>
    <div class="inline-columns-one">
        <div class="control-group">
            <label class="control-label"></label>
            <div class="controls">
                <input class="btn" type="button" value="刷新" onclick='reloadCache()'>
            </div>
        </div>
    </div>
</form>

<script type="text/javascript">
function reloadCache(){
    var data = $("#loadCacheForm").params();
    var reCache = data["reCache"];
    if(!reCache) data["reCache"] = [];
    else  data["reCache"] = $.makeArray(reCache);
    var $mask = loadMask("loadCacheForm");
    $.request("UC_LOAD_CACHES",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
    });
}
</script>
<style>

</style>


