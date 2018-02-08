<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:forEach items="${rows}" var="item">
<tr data-tt-id='${item["id"]}' <c:if test='${not empty pid}'>data-tt-parent-id='${pid}' </c:if>>
    <c:if test="${not empty listconfig.rowOperations}">
        <td>
            <c:forEach items="${listconfig.rowOperations}" var="option">
                <a href='javascript:deleteRow("${listconfig.id}",${item});'>${option.text}</a>
            </c:forEach>
        </td>
    </c:if>

    <c:forEach items="${viewcfg}" var="title" varStatus="status">
        <c:if test="${title.level == '1'}">
            <td nowrap='nowrap'>
            <c:choose>
                <c:when test="${not empty item.children and fn:length(item.children) > 0}">
                    <span <c:if test="${status.index == 0}"> class='folder' </c:if> >${item[title.property]}</span>
                </c:when>
                <c:otherwise>
                    <span <c:if test="${status.index == 0}"> class='file' </c:if> >${item[title.property]}</span>
                </c:otherwise>
            </c:choose>
            </td>
        </c:if>
    </c:forEach>
</tr>	
<c:if test='${not empty item.children and fn:length(item.children) > 0}'>
	 <c:set var="rows" value="${item.children}" scope="request" />
	 <c:set var="prePid" value="${pid}"/>
	 <c:set var="pid" value="${item.id}" scope="request" />
     <c:import url="table_tr.jsp" />
	 <c:set var="pid" value="${prePid}" scope="request" />
</c:if> 
</c:forEach>

		            
		            	

