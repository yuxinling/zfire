<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加布局实例(LayoutCase)</h4>
</div>
<div class="pop_modal_body" >
    <form id="addLayoutTypeForm" class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="lid" >选择布局</label>
            <div class="controls">
                <select id="lid" onchange="changeLayout();">
                    <option value="">请选择</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="ltid" >布局类型</label>
            <div class="controls">
                <select id="ltid" name="ltid">
                    <option value="">请选择</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="pageid">页面</label>
            <div class="controls">
                <select id="pageid" name="pageid">
                    <option value="">请选择</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="params">默认参数</label>
            <div class="controls">
                <input type="text" id="params" style="width: 220px;" placeholder="布局编码" name="params">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="remark">备注信息</label>
            <div class="controls">
                <textarea rows="4" style="width: 220px;" id="remark" name="remark"></textarea>
            </div>
        </div>
    </form>
</div>
<div class="modal-footer" >
    <button class="btn" onclick="PoupWindows.close()">取消</button>
    <button class="btn btn-primary" data-callback="true" onclick="save()">确定</button>
</div>
<script type="text/javascript">
function save(){
    var data = $("#addLayoutTypeForm").params();
    var $mask = loadMask("myModal");
    $.request("UC_ADD_LAYOUTCASE",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
        PoupWindows.close(true);
    });

}
function changeLayout(){
    var lid = $("#lid").val();
    if(lid){
        $.request("UC_QUERY_LAYOUTTYPE",{"lid":lid},function(result){
            if(result['data'] && result['data']['rows']){
                datas = result['data']['rows'];
                $("#ltid").dictSel({data: datas, text: 'location', value: 'id',defvalue:""});
            }
        });
    }
}

$(function(){
    $.request("UC_QUERY_LAYOUT",{},function(result){
        if(result['data'] && result['data']['rows']){
            datas = result['data']['rows'];
            $("#lid").dictSel({data: datas, text: 'lcode', value: 'id',defvalue:""});
        }
    });

    $.request("UC_QUERY_PAGES",{},function(result){
        if(result['data'] && result['data']['rows']){
            datas = result['data']['rows'];
            $("#pageid").dictSel({data: datas, text: 'cname', value: 'id',defvalue:""});
        }
    });
});
</script>


