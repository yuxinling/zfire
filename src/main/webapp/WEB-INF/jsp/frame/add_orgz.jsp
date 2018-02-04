<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加组织机构</h4>
</div>
<div class="pop_modal_body" >
    <form id="addOrgzForm" class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="code">组织机构编码</label>
            <div class="controls">
                <input type="text" id="code" placeholder="" name="code">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="oname">组织机构名称</label>
            <div class="controls">
                <input type="text" id="oname" placeholder="" name="oname">
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
    var data = $("#addOrgzForm").params();
    var $mask = loadMask("myModal");
    $.request("UC_ADD_ORGZ",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
        PoupWindows.close(true);
    });
}
</script>


