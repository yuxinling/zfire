<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加布局类型(LayoutType)</h4>
</div>
<div class="pop_modal_body" >
    <form id="addLayoutTypeForm" class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="lid" >选择布局</label>
            <div class="controls">
                <select id="lid" name="lid">
                    <option value="">请选择</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="location">布局位置</label>
            <div class="controls">
                <select id="location" name="location">
                    <option value="">请选择</option>
                    <option value="left">left</option>
                    <option value="main">main</option>
                </select>
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
    $.request("UC_ADD_LAYOUTTYPE",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
        PoupWindows.close(true);
    });

}
$(function(){
    $.request("UC_QUERY_LAYOUT",{},function(result){
        if(result['data'] && result['data']['rows']){
            datas = result['data']['rows'];
            $("#lid").dictSel({data: datas, text: 'lcode', value: 'id',defvalue:""});
        }
    });
});
</script>


