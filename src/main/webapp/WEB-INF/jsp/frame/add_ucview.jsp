<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="viewCfg" value="${data['data'].rows[0]}"/>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加VIEW配置</h4>
</div>
<div class="pop_modal_body add_page_style" >

<div class="container-fluid">
	<div class="row-fluid">
		<form id="editViewFrom">
            <input type="hidden" id="id" name="id"  value="${viewCfg.id}">
            <input type="hidden" id="ucId" name="ucId"  value="${params['ucId']}">
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">属性 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="cvsId" name="cvsId" style="width: 100%" required>
                        <option value="">请选择</option>
					</select>
				</div>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">标题 :</label>
				<input type="text" id="title" name="title" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.title}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">显示级别 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
                    <select id="level" name="level" style="width: 100%">
                        <option value="0">不显示</option>
                        <option value="1">显示</option>
                        <option value="2">详细显示</option>
                    </select>
                </div>
			</div>
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">数据类型 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="dataType" name="dataType" style="width: 100%" required>
                        <option value="">请选择</option>
					</select>
				</div>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">格式 :</label>
				<input type="text" id="formate" name="formate" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.formate}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">字典编码 :</label>
				<input type="text" id="dictNo" name="dictNo" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.dictNo}" required/>
			</div>
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">链接类型 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="hrefType" name="hrefType" style="width: 100%" required>
                    	<option value="">请选择</option>
                        <option value="1">弹出</option>
                        <option value="2">跳转</option>
                        <option value="3">新页面</option>
					</select>
				</div>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">链接 :</label>
				<div class="span6 m-wrap" style="margin-left: 10px;padding-right: 20px;">
					<input type="text" id="href" name="href" style="width: 100%" value="${viewCfg.href}" required/>
				</div>
			</div>
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">宽度 :</label>
				<input type="text" id="width" name="width" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.width}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">最大宽度 :</label>
				<input type="text" id="maxWidth" name="maxWidth" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.maxWidth}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">最小宽度 :</label>
				<input type="text" id="minWidth" name="minWidth" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.minWidth}" required/>
			</div>
			
			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">对齐 :</label>
				<div class="span2 m-wrap" style="margin-left: 10px;">
					<select id="align" name="align" style="width: 100%" required>
                        <option value="left">左对齐</option>
                        <option value="center">中间对齐</option>
                        <option value="right">右对齐</option>
					</select>
				</div>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">排序 :</label>
				<input type="text" id="sort" name="sort" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.sort}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">视图 :</label>
				<input type="text" id="viewFlag" name="viewFlag" class="span2 m-wrap" style="margin-left: 10px;" value="${viewCfg.viewFlag}" required/>
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
    var data = $("#editViewFrom").params();
    var $mask = loadMask("myModal");
    $.request("UC_ADD_VIEWCFG",{"data":JSON.stringify(data)},function(result){
        $mask.remove();
        PoupWindows.close(true);
    });
}

$(function(){
    var datas = [];
    $.request("UC_QUERY_CVS",{"ucId":"${params['ucId']}","pageflag":"0"},function(result){
        if(result['data'] && result['data']['rows']){
            datas = result['data']['rows'];
            $("#cvsId").dictSel({data: datas, text: 'property', value: 'id',defvalue:"${viewCfg.cvsId}"});
        }
    });

    $("#align").dictSel({data: [], defvalue: '${viewCfg.align}'});
    $("#level").dictSel({data: [], defvalue: '${viewCfg.level}'});
    $("#hrefType").dictSel({data: [], defvalue: '${viewCfg.hrefType}'});
    $("#dataType").dictSel({data: $.dict("0003"),text: 'dvalue', value: 'dkey', defvalue: '${viewCfg.dataType}'});


});
</script>
<style>

</style>


