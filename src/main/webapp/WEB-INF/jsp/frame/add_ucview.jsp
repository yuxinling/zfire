<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="viewCfg" value="${data['data'].rows[0]}"/>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加VIEW配置</h4>
</div>
<div class="pop_modal_body add_page_style" >
    <form id="editViewFrom" class="form-horizontal">
        <div class="inline-columns-three">
            <div class="control-group">
                <input type="hidden" id="id" name="id"  value="${viewCfg.id}">
                <input type="hidden" id="ucId" name="ucId"  value="${params['ucId']}">
                <label class="control-label" for="cvsId" >属性</label>
                <div class="controls">
                    <select id="cvsId" name="cvsId">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="title" >标题</label>
                <div class="controls">
                    <input type="text" id="title" placeholder="标题" name="title" value="${viewCfg.title}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="level" >显示级别</label>
                <div class="controls">
                    <select id="level" name="level">
                        <option value="0">不显示</option>
                        <option value="1">显示</option>
                        <option value="2">详细显示</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="inline-columns-three">
            <div class="control-group">
                <label class="control-label" for="dataType" >数据类型</label>
                <div class="controls">
                    <select id="dataType" name="dataType">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="formate" >格式</label>
                <div class="controls">
                    <input type="text" id="formate" placeholder="格式" name="formate" value="${viewCfg.formate}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="dictNo" >字典编码</label>
                <div class="controls">
                    <input type="text" id="dictNo" placeholder="字典编码" name="dictNo" value="${viewCfg.dictNo}">
                </div>
            </div>
        </div>

        <div class="inline-columns-three">
            <div class="control-group">
                <label class="control-label" for="hrefType" >链接类型</label>
                <div class="controls">
                    <select id="hrefType" name="hrefType">
                        <option value="">请选择</option>
                        <option value="1">弹出</option>
                        <option value="2">跳转</option>
                        <option value="3">新页面</option>
                    </select>
                </div>
            </div>
            <div class="control-group" style="width: 66.66%">
                <label class="control-label" for="href" >链接</label>
                <div class="controls">
                    <input type="text" style="width: 91%" id="href" placeholder="页面" name="href" value="${viewCfg.href}">
                </div>
            </div>
        </div>

        <div class="inline-columns-three">
            <div class="control-group">
                <label class="control-label" for="width" >宽度</label>
                <div class="controls">
                    <input type="text" id="width" placeholder="width" name="width" value="${viewCfg.width}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="maxWidth" >最大宽度</label>
                <div class="controls">
                    <input type="text" id="maxWidth" placeholder="max-width" name="maxWidth" value="${viewCfg.maxWidth}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="minWidth" >最小宽度</label>
                <div class="controls">
                    <input type="text" id="minWidth" placeholder="min-width" name="minWidth" value="${viewCfg.minWidth}">
                </div>
            </div>
        </div>

        <div class="inline-columns-three">
            <div class="control-group">
                <label class="control-label" for="align" >对齐</label>
                <div class="controls">
                    <select id="align" name="align">
                        <option value="left">左对齐</option>
                        <option value="center">中间对齐</option>
                        <option value="right">右对齐</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="sort" >排序</label>
                <div class="controls">
                    <input type="text" id="sort" placeholder="排序" name="sort" value="${viewCfg.sort}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="viewFlag" >视图</label>
                <div class="controls">
                    <input type="text" id="viewFlag" placeholder="视图" name="viewFlag" value="${viewCfg.viewFlag}">
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


