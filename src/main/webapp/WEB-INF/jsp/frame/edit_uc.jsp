<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ucslqCfg" value="${data['data'].rows[0]}"/>
<div class="container-fluid">
  <div class="row-fluid">
      <div class="widget-box">
	      <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	        <h5>UC信息维护</h5>
	      </div>
	      <div class="widget-content">
			<form id="editUcForm">
			   <input type="hidden" id="ucId" name="ucId" value="${ucslqCfg.id}"/>
			   <input type="hidden" id="sqlId" name="sqlId" value="${ucslqCfg.sqlId}"/>
		       <div class="control-group controls-row">
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">UC名称 :</label>
		            <input type="text" id="ucName" name="ucName" class="span4 m-wrap" style="margin-left: 10px;" value="${ucslqCfg.ucName}" required/>
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">UC编码 :</label>
		            <input type="text" id="ucode" name="ucode" class="span4 m-wrap" style="margin-left: 10px;" value="${ucslqCfg.ucode}" required/>
		       </div>
		       <div class="control-group controls-row">
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">BeanId :</label>
		            <input type="text" id="beanId" name="beanId" class="span4 m-wrap" style="margin-left: 10px;" value="${ucslqCfg.beanId}" required/>
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">Method :</label>
		            <input type="text" id="method" name="method" class="span4 m-wrap" style="margin-left: 10px;" value="${ucslqCfg.method}" required/>
		       </div>
		       <div class="control-group controls-row">
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">SQL类型 :</label>
       	            <div class="span4 m-wrap" style="margin-left: 10px;">
             			<select id="type" name="type" style="width: 100%" required>
  						    <option value="">请选择</option>
		                    <option value="1">sql语句</option>
		                    <option value="2">存储过程</option>
             			</select>
         			</div>
       	            <div class="span6 m-wrap" style="margin-left: 10px;">
	                	<button class="btn btn-success" type="button" onclick="save();" style="float:right;margin-left:30px;">保存</button>
	                	<button class="btn btn-primary" type="button" onclick="initFunctionData()" style="float:right;">初始化</button>
         			</div>
		       </div>
		       <div class="control-group controls-row">
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">SQL语句 :</label>
       	            <div class="span10 m-wrap" style="margin-left: 10px;padding-right:20px;">
		                <textarea rows="10" style="width: 100%" name="csql" id="csql">${ucslqCfg.csql}</textarea>
         			</div>
		       </div>
			</form>
	      </div>
      </div>
  </div>
</div>
<script type="text/javascript">
$(function(){
    $("#type").dictSel({data: [], defvalue: '${ucslqCfg.type}'});
});

function save(){
    var data = $("#editUcForm").params();
    var $mask = loadMask("editUcForm");
    $.request("UC_EDIT_UCANDSQL",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
    });
}

function initFunctionData(){
    $.request("UC_UPDATE_UCCVSVIEW",{"ucid":"${params['ucId']}"},function(result){
        reloadListData("507e6f8416c8422ea0d6772d678264bb");
        reloadListData("1b3d6a7d32004961894223a2d9667069");

    });
}
</script>


