<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cvsCfg" value="${data['data'].rows[0]}"/>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加CVS配置</h4>
</div>
<div class="pop_modal_body add_page_style">
<div class="container-fluid">
	<div class="row-fluid">
	<form id="editCvsFrom">
        <input type="hidden" id="id" name="id"  value="${cvsCfg.id}">
        <input type="hidden" id="ucId" name="ucId"  value="${params['ucId']}">
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">输入(出) :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="flag" name="flag" style="width: 100%" required>
                        <option value="1">输入</option>
                        <option value="2" selected="selected">输出</option>
					</select>
				</div>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">属性 :</label>
				<input type="text" id="property" name="property" class="span2 m-wrap" style="margin-left: 10px;" value="${cvsCfg.property}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">字段 :</label>
				<input type="text" id="field" name="field" class="span2 m-wrap" style="margin-left: 10px;" value="${cvsCfg.field}" required/>
			</div>
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">字段类型 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="fieldType" name="fieldType" style="width: 100%" required>
                        <option value="">请选择</option>
					</select>
				</div>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">字段长度 :</label>
				<input type="text" id="fieldLen" name="fieldLen" class="span2 m-wrap" style="margin-left: 10px;" value="${cvsCfg.fieldLen}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">Java类型 :</label>
				<input type="text" id="javaType" name="javaType" class="span2 m-wrap" style="margin-left: 10px;" value="${cvsCfg.javaType}" required/>
				<%--<select id="javaType" name="javaType">--%>
                        <%--<option value="">请选择</option>--%>
                <%--</select>--%>
			</div>
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">参数类型 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="inType" name="inType" style="width: 100%" required>
                        <option value="1" selected="selected">普通</option>
                        <option value="2">查询条件</option>
                        <option value="3">传值变量</option>
					</select>
				</div>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">表达式 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="resType" name="resType" style="width: 100%" required>
                        <option value="">请选择</option>
					</select>
				</div>
			</div>
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">exist语句 :</label>
				<div class="span10 m-wrap" style="margin-left: 10px;padding-right:20px;">
                	<textarea rows="4" style="width: 100%" id="exist" name="exist">${cvsCfg.exist}</textarea>
				</div>
			</div>
			
	</form>
	</div>
</div>
</div>
<div class="modal-footer" >
    <button class="btn" onclick="PoupWindows.close()">取消</button>
    <button class="btn btn-primary" data-callback="true" onclick="save()">确定</button>
</div>
<script type="text/javascript">
    function save(){
        var data = $("#editCvsFrom").params();
        var $mask = loadMask("myModal");
        $.request("UC_ADD_CVSCFG",{"data":JSON.stringify(data)},function(result){
            $mask.remove();
            PoupWindows.close(true);
        });
    }

    $(function(){
        <%--$("#dataType").dictSel({data: $.dict("0003"),text: 'dvalue', value: 'dkey', defvalue: '${cvsCfg.dataType}'});--%>
        $("#resType").dictSel({data: $.dict("0002"),text: 'dvalue', value: 'dkey', defvalue: '${cvsCfg.resType}'});
        $("#fieldType").dictSel({data: $.dict("0004"),text: 'dvalue', value: 'dkey', defvalue: '${cvsCfg.fieldType}'});
    });
</script>
<style>

</style>


