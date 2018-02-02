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
				        <%-- <c:forEach items="${listconfig.headerOperations}" var="item" varStatus="status" >
				            <input class="btn" type="button" value="${item.text}" onclick="${item.scriptFunction}(${status.index},'${listconfig.id}')">
				        </c:forEach> --%>
				        
				        <button class="btn btn-info" style="padding:4px 8px;margin:3px 0px;float:right;">
				        	<span class="icon-pencil" style="padding-right:4px;"></span>编辑
				        </button>
				        <button class="btn btn-danger" style="padding:4px 8px;margin:3px 0px;float:right;">
				        	<span class="icon-trash" style="padding-right:4px;"></span>删除
				        </button>
				        <button class="btn btn-success" style="padding:4px 8px;margin:3px 0px;float:right;">
				        	<span class="icon-plus" style="padding-right:4px;"></span>添加
				        </button>
					</div>
		        </c:if>
		    </c:if>

			<c:set var="rows" value="${data['data']}"/>
		    <div id="page_${pageCfg.id}" class="widget-content nopadding">
		        <table id="table_${pageCfg.id}" class="table table-bordered table-striped">
		            <thead>
		            <tr>
		            <%--title start--%>
		            <c:if test="${listconfig.enableSelect == '1'}">
		                <th><c:if test="${listconfig.multiSelect == '1'}"><input type="checkbox"></c:if></th>
		            </c:if>
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
		            <c:forEach items="${rows}" var="item">
		            <tr>
		                <c:if test="${listconfig.enableSelect == '1'}">
		                    <td><input type="checkbox"></td>
		                </c:if>
		
		                <c:if test="${not empty listconfig.rowOperations}">
		                    <td>
		                        <c:forEach items="${listconfig.rowOperations}" var="option">
		                            <a href='javascript:deleteRow("${listconfig.id}",${item});'>${option.text}</a>
		                        </c:forEach>
		                    </td>
		                </c:if>
		
		                <c:forEach items="${viewcfg}" var="title">
		                    <c:if test="${title.level == '1'}">
		                        <td nowrap='nowrap'>
		                        <c:choose>
		                            <c:when test="${fn:length(title.href) > 0}">
		                                <span><a href='#'onclick='javascript:openHyperLink("${title.href}","${title.hrefType}",${item})'>${item[title.property]}</a></span>
		                            </c:when>
		                            <c:otherwise>
		                                <span>${item[title.property]}</span>
		                            </c:otherwise>
		                        </c:choose>
		                        </td>
		                    </c:if>
		                </c:forEach>
		            </tr>
		            </c:forEach>
		            <%--data end--%>
		        </table>
		    </div>
		    <%--pagination start--%>
		    <c:if test="${rows.pageFlag == 2}">
		        <c:set var="totalRow" value="${rows.total}"/>
		        <c:set var="pageRow" value="${rows.rowCount}"/>
		        <c:set var="pageNumber" value="${rows.pageNum}"/>
		        <c:set var="pageCount" value="${rows.pageCount}"/>
		        <div class="pagination  pagination-large pagination-right">
		            <ul>
		                <c:if test="${pageNumber > 1 }">
		                    <li><a href="javascript:return false">前一页</a></li>
		                </c:if>
		                <c:if test="${pageNumber <= 1 }">
		                    <li class="disabled"><a href="javascript:return false">前一页</a></li>
		                </c:if>
		                <c:if test="${pageNumber > 3 }">
		                    <li><a href="javascript:return false">1</a></li>
		                </c:if>
		                <c:if test="${pageNumber > 4 }">
		                    <li><a href="javascript:return false">…</a></li>
		                </c:if>
		                <c:if test="${pageNumber > 2 }">
		                    <li><a href="javascript:return false">${pageNumber - 2}</a></li>
		                </c:if>
		                <c:if test="${pageNumber > 1 }">
		                    <li><a href="javascript:return false">${pageNumber - 1}</a></li>
		                </c:if>
		                <li class="disabled"><a href="javascript:return false">${pageNumber}</a></li>
		                <c:if test="${(pageNumber + 1) <= pageCount }">
		                    <li><a href="javascript:return false">${pageNumber + 1}</a></li>
		                </c:if>
		                <c:if test="${(pageNumber + 2) <= pageCount }">
		                    <li><a href="javascript:return false">${pageNumber + 2}</a></li>
		                </c:if>
		                <c:if test="${(pageNumber + 4) <= pageCount }">
		                    <li><a href="javascript:return false;">…</a></li>
		                </c:if>
		                <c:if test="${(pageNumber + 3) <= pageCount }">
		                    <li><a href="javascript:return false">${pageCount}</a></li>
		                </c:if>
		                <c:if test="${pageNumber < pageCount }">
		                    <li><a href="javascript:return false">后一页</a></li>
		                </c:if>
		                <c:if test="${pageNumber >= pageCount }">
		                    <li class="disabled"><a href="javascript:return false;">后一页</a></li>
		                </c:if>
		            </ul>
		        </div>
		    </c:if>		    
		    
		    <%--pagination end--%>
		</div>
	</c:if>
</div> 
</div>

<script type="text/javascript">
    //分页处理
    $(function () {
    	$("#table_${pageCfg.id}").dataTable({
    		"bJQueryUI": false,
    		"sPaginationType": "full_numbers",
    		"searching": false,
    		"sDom": '<""l>t<"F"fp>',
    		"bLengthChange": false, //显示每页大小的下拉框（显示一个每页长度的选择条（需要分页器支持））
    		"aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]], // 定义每页显示数据数量
    		"iDisplayLength" : 20, //默认显示的记录数  
    		"oLanguage": {
    			"sLengthMenu": "每页显示 _MENU_ 条记录",
    			"sZeroRecords": "抱歉， 没有找到",
    			"sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
    			"sInfoEmpty": "没有数据",
    			"sInfoFiltered": "(从 _MAX_ 条数据中检索)",
    			"oPaginate": {
    			"sFirst": "首页",
    			"sPrevious": "前一页",
    			"sNext": "后一页",
    			"sLast": "尾页"
    			}
    		}
    	});
    	
        //滚动条查件
        /* $(function()
        {
            $('.scroll-pane').jScrollPane();
        }); */
    }); 
</script>

<style>
</style>
