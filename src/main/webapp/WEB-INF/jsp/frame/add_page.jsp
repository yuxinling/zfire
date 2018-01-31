<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageCfg" value="${data['data'].rows[0]}"/>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加页面</h4>
</div>
<div class="pop_modal_body add_page_style">
<div class="container-fluid">
	<div class="row-fluid">
	    <form id="addPageForm">
            <input type="hidden" id="id" name="id"  value="${pageCfg.id}">
   			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">编码 :</label>
				<input class="span4 m-wrap" type="text" id="pcode" name="pcode" style="margin-left: 10px;" value="${pageCfg.pcode}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">模块 :</label>
				<input class="span4 m-wrap" type="text" id="module" name="module" style="margin-left: 10px;" value="${pageCfg.module}" required/>
			</div>
   			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">中文名称 :</label>
				<input class="span4 m-wrap" type="text" id="cname" name="cname" style="margin-left: 10px;" value="${pageCfg.cname}" required/>
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">英文名称 :</label>
				<input class="span4 m-wrap" type="text" id="cname" name="cname" style="margin-left: 10px;" value="${pageCfg.cname}" required/>
			</div>
   			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">头部页面 :</label>
				<div class="span10 m-wrap" style="margin-left: 10px;padding-right:20px;">
					<input type="text" id="listHeader" name="listHeader" style="width:100%;" value="${pageCfg.listHeader}" required/>
				</div>
			</div>
   			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">UC :</label>
				<div class="span10 m-wrap" style="margin-left: 10px;">
					<select id="ucids" name="ucids" style="width: 100%" multiple="true" required>
					</select>
				</div>
			</div>
   			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">页面 :</label>
				<div class="span10 m-wrap" style="margin-left: 10px;padding-right:20px;">
					<input type="text" id="page" name="page" style="width:100%;" value="${pageCfg.page}" required/>
				</div>
			</div>
   			<div class="control-group controls-row">
				<label class="span2 m-wrap" style="text-align: right;padding-top: 6px;">参数 :</label>
				<div class="span10 m-wrap" style="margin-left: 10px;padding-right:20px;">
					<input type="text" id="params" name="params" style="width:100%;" value='${pageCfg.params}' required/>
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
        var data = $("#addPageForm").params();
        var ucids = $("#ucids").select2('val');
        data['ucids'] = ucids;
        console.log(data);
        var $mask = loadMask("myModal");
        $.request("UC_ADD_PAGE",{"data":JSON.stringify(data)},function(result){
            $mask.remove();
            PoupWindows.close(true);
        });
    }

    $(function(){
         $.request("UC_QUERY_UCS",{"pageflag":0},function(result){
            if(result['data'] && result['data']['rows']){
                datas = result['data']['rows'];
                $("#ucids").dictSel({data: datas, text: 'ucName', value: 'id',defvalue:""});
                $("#ucids").select2();

                var ucIds = "${pageCfg.ucIds}";
                var _ucIds = [];
                if(ucIds)  _ucIds = ucIds.split(",");
                $("#ucids").select2("val",_ucIds);
            }
        }); 
    });
</script>
<style>

</style>



