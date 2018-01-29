<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
  <div class="row-fluid">
      <div class="widget-box">
	      <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
	        <h5>UC信息维护</h5>
	      </div>
	      <div class="widget-content">
			<form id="ucQueryForm">
		       <div class="control-group controls-row">
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">输入(出) :</label>
		            <input type="text" id="ucName" name="ucName" class="span4 m-wrap" style="margin-left: 10px;" value="${ucslqCfg.ucName}" required/>
		        	<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">属性 :</label>
		            <input type="text" id="property" name="property" class="span4 m-wrap" style="margin-left: 10px;" value="${ucslqCfg.ucode}" required/>
		       </div>
			</form>
	      </div>
      </div>
  </div>
</div>
<script type="text/javascript">
    function query(){
        <%--var data = $("#ucQueryForm").params();--%>
        <%--reloadListData("${pageCfg.id}", data);--%>
    }
    function addCvscfgRow(){
        var options = {"data":{}};
        options["data"]["page"] = "00000010";
        options["data"]["ucId"] = "${params['ucId']}";
        options["callback"] = function(){
            reloadListData("${pageCfg.id}");
        }
        showPoupWindows(options);
    }
</script>
<style>

</style>


