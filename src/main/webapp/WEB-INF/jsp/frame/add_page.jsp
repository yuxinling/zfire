<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageCfg" value="${data['data'].rows[0]}"/>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加页面</h4>
</div>
<div class="pop_modal_body add_page_style" >
    <form id="addPageForm" class="form-horizontal">
        <div class="inline-columns-tow">
            <div class="control-group">
                <label class="control-label" for="pcode">编码</label>
                <div class="controls">
                    <input type="hidden" id="id" name="id"  value="${pageCfg.id}">
                    <input type="text" id="pcode" placeholder="编码" name="pcode" value="${pageCfg.pcode}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="module">模块</label>
                <div class="controls">
                    <input type="text" id="module" placeholder="模块" name="module" value="${pageCfg.module}">
                </div>
            </div>
        </div>
        <div class="inline-columns-tow">
            <div class="control-group">
                <label class="control-label" for="cname">中文名称</label>
                <div class="controls">
                    <input type="text" id="cname" placeholder="中文名称" name="cname" value="${pageCfg.cname}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="ename">英文名称</label>
                <div class="controls">
                    <input type="text" id="ename" placeholder="英文名称" name="ename" value="${pageCfg.ename}">
                </div>
            </div>
        </div>
        <div class="inline-columns-one">
            <div class="control-group">
                <label class="control-label" for="listHeader" >列表头</label>
                <div class="controls">
                    <input type="text" style="width: 98%" id="listHeader" placeholder="列表头部页面" name="listHeader" value="${pageCfg.listHeader}">
                </div>
            </div>
        </div>
        <div class="inline-columns-one">
            <div class="control-group">
                <label class="control-label" for="ucids" >UC</label>
                <div class="controls">
                    <%--<input type="text" style="width: 98%" id="ucids" placeholder="请选择UC" name="ucids" value="${pageCfg.ucIds}">--%>
                    <select id="ucids" name="ucids" multiple="true">

                    </select>
                </div>
            </div>
        </div>
        <div class="inline-columns-one">
            <div class="control-group">
                <label class="control-label" for="page" >页面</label>
                <div class="controls">
                    <input type="text" style="width: 98%" id="page" placeholder="页面" name="page" value="${pageCfg.page}">
                </div>
            </div>
        </div>
        <div class="inline-columns-one">
            <div class="control-group">
                <label class="control-label" for="params" >参数</label>
                <div class="controls">
                    <input type="text"  style="width: 98%" id="params" placeholder="参数" name="params" value='${pageCfg.params}'>
                </div>
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
    #s2id_ucids{
        width: 98%;
    }

</style>



