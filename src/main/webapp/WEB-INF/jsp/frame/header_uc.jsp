<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="ucQueryForm" class="form-horizontal">
<div class="widget-box">
	<div class="widget-title">
		<span class="icon"> <i class="icon-align-justify"></i></span>
		<h5>UC查询</h5>
	</div>
	
    <div class="control-group controls-row" style="height: 40px;padding-top: 10px;">
		<label class="span2 m-wrap" style="text-align: right; padding-top: 6px;">UC名称 :</label>
		<div class="span4 m-wrap" style="margin-left: 10px;">
			<input type="text" id="ucName" style="width: 100%" name="ucName"/>
		</div>
		<div class="span5 m-wrap">
			<button id="queryBtn" type="button" class="btn btn-success" onclick='query();'>查询</button>
		</div>
	</div>
	
</div>
    
    
</form>
<script type="text/javascript">
    function query(){
        var data = $("#ucQueryForm").params();
        reloadListData("${pageCfg.id}", data);
    }
</script>
<style>

</style>


