<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加UC</h4>
</div>
<div class="pop_modal_body" >
    <form id="addUcForm" class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="module" >系统模块</label>
            <div class="controls">
                <select id="module" name="module">
                    <option value="">请选择</option>
                    <option value="0000">FrameWork</option>
                    <option value="0000">Web应用</option>
                    <option value="0201">App应用</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="ucName">UC名称</label>
            <div class="controls">
                <input type="text" id="ucName" placeholder="UC名称" name="ucName">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="ucName">UC编码</label>
            <div class="controls">
                <input type="text" id="ucode" placeholder="UC编码" name="ucode">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="beanId">BeanId(Bean名称)</label>
            <div class="controls">
                <input type="text" id="beanId" placeholder="BeanId(Bean名称)" name="beanId">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="method">Method(方法)</label>
            <div class="controls">
                <input type="text" id="method" placeholder="Method(方法)" name="method">
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="iscache" name="iscache" value="1">是否缓存
                </label>
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
    var data = $("#addUcForm").params();
    var $mask = loadMask("myModal");
    $.request("UC_ADD_UC",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
        PoupWindows.close(true);
    });
}
</script>


