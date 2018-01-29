<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="editSqlFrom" class="form-horizontal">
    <div class="inline-columns-tow">
        <div class="control-group">
            <label class="control-label" for="module" >系统模块</label>
            <div class="controls">
                <select id="module" name="module">
                    <option value="">请选择</option>
                    <option value="0000">FrameWork</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label"></label>
            <div class="controls">
                <input class="btn align-right" type="button" value="添加" onclick='showPoupWindows({"page":"00000002"})'>
            </div>
        </div>
    </div>
    <div class="inline-columns-one">
        <div class="control-group">
            <label class="control-label" for="module" >系统模块</label>
            <div class="controls">
                <textarea rows="10" style="width: 98%"></textarea>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript">
function save(){
    var data = $("#addUcForm").params();
    console.log(data);
    $.request("UC_ADD_UC",{"data":JSON.stringify(data)},function(result){
        alert("ok");
    });
}
</script>
<style>

</style>


