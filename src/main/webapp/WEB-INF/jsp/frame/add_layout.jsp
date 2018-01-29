<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加布局(Layout)</h4>
</div>
<div class="pop_modal_body" >
    <form id="addLayoutForm" class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="module" >选择模块</label>
            <div class="controls">
                <select id="module" name="module">
                    <option value="">请选择</option>
                    <option value="00">FrameWork</option>
                    <option value="02">App应用</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="lcode">布局编码</label>
            <div class="controls">
                <input type="text" id="lcode" style="width: 220px;" placeholder="布局编码" name="lcode">
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
    var data = $("#addLayoutForm").params();
    var $mask = loadMask("myModal");
    $.request("UC_ADD_LAYOUT",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
        PoupWindows.close(true);
    });
}
</script>


