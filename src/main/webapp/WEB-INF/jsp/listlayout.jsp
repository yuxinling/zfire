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
				        
				        <%-- 
				        <button class="btn btn-info" style="padding:4px 8px;margin:3px 0px;float:right;">
				        	<span class="icon-pencil" style="padding-right:4px;"></span>编辑
				        </button>
				        <button class="btn btn-danger" style="padding:4px 8px;margin:3px 0px;float:right;">
				        	<span class="icon-trash" style="padding-right:4px;"></span>删除
				        </button>
				        <button class="btn btn-success" style="padding:4px 8px;margin:3px 0px;float:right;">
				        	<span class="icon-plus" style="padding-right:4px;"></span>添加
				        </button>
				        --%>
					</div>
		        </c:if>
		    </c:if>

			<c:set var="rows" value="${data['data']}"/>
		    <div id="page_${pageCfg.id}" class="widget-content nopadding">
		        <table id="table_${pageCfg.id}" class="table table-bordered table-striped dataTable no-footer">
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
		                            <a href='javascript:deleteRow("${pageCfg.id}","${listconfig.id}","${option.function}",${item});'>${option.text}</a>
		                        </c:forEach>
		                    </td>
		                </c:if>
		
		                <c:forEach items="${viewcfg}" var="title">
		                    <c:if test="${title.level == '1'}">
		                        <td nowrap='nowrap' style="text-align: ${title.align};">
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
		    <c:if test="${rows.pageFlag == 1}">
		        <c:set var="totalRow" value="${rows.total}"/>
		        <c:set var="pageRow" value="${rows.rowCount}"/>
		        <c:set var="pageNumber" value="${rows.pageNum}"/>
		        <%-- <c:set var="pageCount" value="${rows.pageCount}"/> --%>
		        <c:set var="pageCount" value="7"/>
<!--  
-->
				<div class="dataTables_wrapper no-footer">
					<div class="dataTables_paginate paging_full_numbers">
						<a class='paginate_button first <c:if test="${pageNumber <= 1 }"> disabled </c:if>'>首页</a> 
						<a class='paginate_button previous <c:if test="${pageNumber <= 1 }"> disabled </c:if>'>前一页</a>
						<span>
<%-- 							<c:if test="${pageCount <= 7 }">
								<c:forEach var="index" begin="1" end="${pageCount}" step="1">   
									<a class='paginate_button <c:if test="${pageNumber eq index }"> current</c:if> '>${index}</a>
								</c:forEach> 
							</c:if> --%>
							<c:choose>
							    <c:when test="${pageCount <= 7 }">  
									<c:forEach var="index" begin="1" end="${pageCount}" step="1">   
										<a class='paginate_button <c:if test="${pageNumber eq index }"> current</c:if> '>${index}</a>
									</c:forEach> 
							    </c:when>
							    <c:otherwise> 
									<a class="paginate_button ">1</a>
	   								<c:if test="${pageNumber <= 4 }">
										<c:forEach var="index" begin="1" end="${pageCount}" step="1">   
											<a class='paginate_button <c:if test="${pageNumber eq index }"> current</c:if> '>${index}</a>
										</c:forEach> 
										<a class="paginate_button ">5</a>
									</c:if>
									<a class="paginate_button">${pageCount}</a>
							   </c:otherwise>
							</c:choose>
							
							
							<a class="paginate_button ">1</a>
							<span class="ellipsis">…</span>
							<a class="paginate_button disabled ">4</a>
							<a class="paginate_button current">5</a>
							<a class="paginate_button ">6</a>
							<span class="ellipsis">…</span>
							<a class="paginate_button ">20</a>
						</span>
						<a class='paginate_button next <c:if test="${pageNumber >= pageCount }"> disabled </c:if>'>后一页</a>
						<a class='paginate_button last <c:if test="${pageNumber >= pageCount }"> disabled </c:if>'>尾页</a>
					</div>
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
/*       
     	$("#table_${pageCfg.id}").dataTable({
    		"bJQueryUI": false,
    		"sPaginationType": "full_numbers",
    		"searching": false,
    		"sDom": '<""l>t<"F"fp>',
    		"bLengthChange": false, //显示每页大小的下拉框（显示一个每页长度的选择条（需要分页器支持））
    		"aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]], // 定义每页显示数据数量
    		"iDisplayLength" : 10, //默认显示的记录数
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
     	*/
    	
        //滚动条查件
        /* $(function()
        {
            $('.scroll-pane').jScrollPane();
        }); */
    }); 
</script>

<style>
</style>
