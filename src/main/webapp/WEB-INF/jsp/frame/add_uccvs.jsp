<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cvsCfg" value="${data['data'].rows[0]}"/>
<div class="modal-header">
    <button type="button" class="close">×</button>
    <h4 id="myModalLabel">添加CVS配置</h4>
</div>
<div class="pop_modal_body add_page_style" >
    <form id="editCvsFrom" class="form-horizontal">
        <div class="inline-columns-three">
            <div class="control-group">
                <input type="hidden" id="id" name="id"  value="${cvsCfg.id}">
                <input type="hidden" id="ucId" name="ucId"  value="${params['ucId']}">
                <label class="control-label" for="flag" >输入(出)</label>
                <div class="controls">
                    <select id="flag" name="flag">
                        <option value="1">输入</option>
                        <option value="2" selected="true">输出</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="property" >属性</label>
                <div class="controls">
                    <input type="text" id="property" placeholder="属性" name="property" value="${cvsCfg.property}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="field" >字段</label>
                <div class="controls">
                    <input type="text" id="field" placeholder="字段" name="field" value="${cvsCfg.field}">
                </div>
            </div>
        </div>
        <div class="inline-columns-three">
            <div class="control-group">
                <label class="control-label" for="fieldType" >字段类型</label>
                <div class="controls">
                    <select id="fieldType" name="fieldType">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="fieldLen" >字段长度</label>
                <div class="controls">
                    <input type="text" id="fieldLen" placeholder="字段长度" name="fieldLen" value="${cvsCfg.fieldLen}">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="javaType" >Java类型</label>
                <div class="controls">
                    <input type="text" id="javaType" placeholder="Java类型" name="javaType" value="${cvsCfg.javaType}">
                    <%--<select id="javaType" name="javaType">--%>
                        <%--<option value="">请选择</option>--%>
                    <%--</select>--%>
                </div>
            </div>
        </div>

        <div class="inline-columns-three">
            <div class="control-group">
                <label class="control-label" for="inType" >参数类型</label>
                <div class="controls">
                    <select id="inType" name="inType">
                        <option value="1" selected="true">普通</option>
                        <option value="2">查询条件</option>
                        <option value="3">传值变量</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="resType" >表达式</label>
                <div class="controls">
                    <select id="resType" name="resType">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="inline-columns-three">
            <div class="control-group" style="width: 100%">
                <label class="control-label" for="exist" >exist语句</label>
                <div class="controls" >
                    <textarea rows="4" style="width: 95%" id="exist" name="exist">${cvsCfg.exist}</textarea>
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


