<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--<tiles:putAttribute name="header" value="/WEB-INF/jsp/frame/header_uc.jsp" />--%>
<%--<tiles:insertAttribute name="header" />--%>
<div id="listlayout-div">
<div class="container-fluid">
	<%-- header start --%>
      	<c:if test="${not empty pageCfg.listHeader}" >
       	<tiles:insertAttribute defaultValue="${pageCfg.listHeader}"  flush="true"/>
       </c:if>
	<%-- header end --%>
	<c:if test="${not empty data}">
		<div class="widget-box">
		    <c:if test="${not empty listconfig}">
		        <script type="text/javascript">
		            if(!window.pageConfig){
		                window.pageConfig = {};
		            }
		            var pageid = "${pageCfg.id}";
		            if(!pageConfig[pageid]){
		                pageConfig[pageid] = {};
		            }
		            pageConfig[pageid]["c_params"] = '${c_params}';
		            var listid = "${listconfig.id}";
		            if(!pageConfig[listid]){
		                pageConfig[listid] = {};
		                pageConfig[listid]["listconfig"] = ${listconfig};
		                pageConfig[listid]["pageid"] = pageid;
		            }
		        </script>
			  	<c:if test="${not empty listconfig.title}" >
					<div class="widget-title" style="padding-right:8px;">
						<span class="icon"> <i class="icon-align-justify"></i></span>
						<h5>${listconfig.title}</h5>
				        <c:forEach items="${listconfig.headerOperations}" var="item" varStatus="status" >
					        <button class="btn ${item.btnStyle}" style="padding:4px 8px;margin:3px 0px;float:right;" onclick="${item.scriptFunction}(${status.index},'${listconfig.id}')">
					        	<span class="${item.btnIcon}" style="padding-right:4px;"></span>${item.text}
					        </button>
				        </c:forEach> 
					</div>
		        </c:if>
		    </c:if>

			<c:set var="rows" value="${data['data']}" scope="request"/>
		    <div id="page_${pageCfg.id}" class="widget-content nopadding">
		        <table id="table_${pageCfg.id}" class="table table-bordered table-striped">
		            <thead>
		            <tr>
		            <%--title start--%>
		            <c:if test="${not empty listconfig.rowOperations}"><th nowrap='nowrap'>操作</th></c:if>
		            <c:forEach items="${viewcfg}" var="item">
		                <c:if test="${item.level ==  '1'}">
		                    <th nowrap='nowrap'>${item.title}</th>
		                </c:if>
		            </c:forEach>
		            <%--title end--%>
		            </tr>
		            </thead>
		            <%--data start--%>
		            <c:import url="table_tr.jsp" />
		            <%--data end--%>
		        </table>
		    </div>
		    
		</div>
	</c:if>
</div> 
</div>

<script type="text/javascript">
    //分页处理
    $(function () {
		$("#table_${pageCfg.id}").treetable({ expandable: true });
    }); 
</script>

