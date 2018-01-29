<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="ucViewQueryForm" class="form-horizontal">
    <%--<div class="inline-columns-tow">--%>
        <%--<div class="control-group">--%>
            <%--<label class="control-label" for="ucName" >输入(出)</label>--%>
            <%--<div class="controls">--%>
                <%--<input type="text" id="ucName" placeholder="UC名称" name="ucName">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="control-group">--%>
            <%--<label class="control-label" for="property" >属性</label>--%>
            <%--<div class="controls">--%>
                <%--<input type="text" id="property" placeholder="UC名称" name="property">--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
</form>
<script type="text/javascript">
    function query(){
        <%--var data = $("#ucQueryForm").params();--%>
        <%--reloadListData("${pageCfg.id}", data);--%>
    }
    function addViewcfgRow(){
        var options = {"data":{}};
        options["data"]["page"] = "00000009";
        options["data"]["ucId"] = "${params['ucId']}";
        options["callback"] = function(){
            reloadListData("${pageCfg.id}");
        }
        showPoupWindows(options);
    }
</script>
<style>

</style>


