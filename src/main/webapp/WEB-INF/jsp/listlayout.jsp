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
			    <%--pagination start--%>
			    <c:if test="${rows.pageFlag == 1}">
			        <c:set var="totalRow" value="${rows.total}"/>
			        <c:set var="pageRow" value="${rows.rowCount}"/>
			        <c:set var="pageNumber" value="${rows.pageNum}"/>
			        <c:set var="pageCount" value="${rows.pageCount}"/>
			        <%-- 
			        <c:set var="pageCount" value="12"/>
			        <c:set var="pageNumber" value="8"/>
			         --%>
					<div class="dataTables_wrapper no-footer">
						<span style="margin-left: 20px;margin-top: 10px;position: absolute;">
						显示第 ${(pageNumber - 1)*pageRow + 1} 至 <c:choose><c:when test="${pageNumber*pageRow >= totalRow}">${totalRow}</c:when><c:otherwise>${pageNumber*pageRow}</c:otherwise></c:choose> 项结果，共 ${totalRow}项
						</span>
						<div class="dataTables_paginate paging_full_numbers">
							<a class='paginate_button first <c:if test="${pageNumber <= 1 }"> disabled </c:if>'>首页</a> 
							<a class='paginate_button previous <c:if test="${pageNumber <= 1 }"> disabled </c:if>'>前一页</a>
							<span>
								<c:choose>
								    <c:when test="${pageCount <= 7 }">  
										<c:forEach var="index" begin="1" end="${pageCount}" step="1">   
											<a class='paginate_button <c:if test="${pageNumber == index }"> current</c:if> '>${index}</a>
										</c:forEach> 
								    </c:when>
								    <c:otherwise> 
								    	<c:if test="${pageNumber >= 5 }">
											<a class="paginate_button ">1</a>
											<span class="ellipsis">…</span>
								    	</c:if>
										<c:choose>
										    <c:when test="${pageNumber <= 4}">
												<a class='paginate_button <c:if test="${pageNumber == 1}">current </c:if>'>1</a>
												<a class='paginate_button <c:if test="${pageNumber == 2}">current </c:if>'>2</a>
												<a class='paginate_button <c:if test="${pageNumber == 3}">current </c:if>'>3</a>
												<a class='paginate_button <c:if test="${pageNumber == 4}">current </c:if>'>4</a>
												<a class='paginate_button'>5</a>
										    </c:when>  
										    <c:when test="${pageNumber > 4 && pageNumber <= pageCount - 4}">
												<a class="paginate_button">${pageNumber-1}</a>
												<a class='paginate_button current'>${pageNumber}</a>
												<a class="paginate_button">${pageNumber+1}</a>
										    </c:when>
										    <c:otherwise>  
												<a class='paginate_button <c:if test="${pageNumber == pageCount - 4}">current </c:if>'>${pageCount - 4}</a>
												<a class='paginate_button <c:if test="${pageNumber == pageCount - 3}">current </c:if>'>${pageCount - 3}</a>
												<a class='paginate_button <c:if test="${pageNumber == pageCount - 2}">current </c:if>'>${pageCount - 2}</a>
												<a class='paginate_button <c:if test="${pageNumber == pageCount - 1}">current </c:if>'>${pageCount - 1}</a>
												<a class='paginate_button'>${pageCount}</a>
										    </c:otherwise>  
										</c:choose>
								    	<c:if test="${pageNumber <= pageCount - 4}">
											<span class="ellipsis">…</span>
											<a class="paginate_button">${pageCount}</a>
								    	</c:if> 
								   </c:otherwise>
								</c:choose>
							</span>
							<a class='paginate_button next <c:if test="${pageNumber - pageCount >= 0 }"> disabled </c:if>'>后一页</a>
							<a class='paginate_button last <c:if test="${pageNumber - pageCount >= 0}"> disabled </c:if>'>尾页</a>
						</div>
					</div>
			    </c:if>
				<%--pagination end--%>
		    </div>
		</div>
	</c:if>
</div> 
</div>

<script type="text/javascript">
    //分页处理
 $(function () {
     var pageFlag = "${rows.pageFlag}";
     var pageid = "${pageCfg.id}";

     if (pageFlag == 1) {
         var pageNumber = "${pageNumber}";
         var totalRow = "${totalRow}";
         var pageRow = "${pageRow}";
         var pageCount = "${pageCount}";

         pageNumber = parseInt(pageNumber);
         var pageCount = "${pageCount}";
         var $pageitems = $("#page_${pageCfg.id} .dataTables_paginate").find("a");
         $pageitems.each(function (index, item) {
             var $item = $(item);
             if(!$item.hasClass('disabled')){
		         console.log($item.html());
	             var text = $item.html();
	             if (isNaN(text)) {
	            	 if($item.hasClass('first')){
	            		 text = 0;
	            	 }else if($item.hasClass('previous')){
	            		 text = pageNumber - 1;
	            	 }else if($item.hasClass('next')){
	            		 text = pageNumber + 1;
	            	 }else if($item.hasClass('last')){
	            		 text = pageCount;
	            	 }
	             }
            	 $item.attr("onclick", "javascript:doPagination('" + pageid + "','" + text + "','" + totalRow + "','" + pageRow + "')");
             }
         });
     }
    	
        //滚动条查件
        /* $(function()
        {
            $('.scroll-pane').jScrollPane();
        }); */
    }); 
</script>
