<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-list" style="margin-bottom: 10px;">
    <li class="active"><a>应用配置</a></li>
</ul>
<form id="appConfigForm" class="form-horizontal">
    <div class="control-group">
        <div style="margin-left: 80px;">应用名称：ImageView  ID： 0a528d4d328e4491830e8997e884d888</div>
        <input type="hidden" value="0a528d4d328e4491830e8997e884d888" name="appId" id="appId">
    </div>
    <div class="inline-columns-three">
        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="imageIndex" name="imageIndex" value="1"> main page
                </label>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="imageCategory" name="imageCategory" value="1"> category and tag
                </label>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="imageHot" name="imageHot" value="1"> hot search
                </label>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="topApps" name="topApps" value="1"> top rank app
                </label>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="advShow" name="advShow" value="1"> adv view
                </label>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="version" name="version" checked="checked" value="2.2"> V2.2
                </label>
            </div>
        </div>
    </div>

    <div class="form-actions">
        <button type="button" class="btn btn-primary" onclick="saveAppConfig();">保存</button>&nbsp;&nbsp;</span>
        <button type="button" class="btn">取消</button>
    </div>
</form>
<script type="text/javascript">
function saveAppConfig(){
    var data = $("#appConfigForm").params();
    $.request("UC_EIDT_APPCONFIG",{"data":JSON.stringify(data)},function(result){
        alert("ok");
    });
}
</script>
<script>

</script>
<style>
</style>


