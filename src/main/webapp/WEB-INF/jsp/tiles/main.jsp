<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:putListAttribute name="pages">
    <c:forEach items="${mainLayoutCases}" var="item" >
        <tiles:addAttribute value="/page.do?page=${item.pageid}&c_params=${c_params}" />
    </c:forEach>
</tiles:putListAttribute>
<tiles:importAttribute name="pages" />

<c:forEach var="page" items="${pages}">
    <tiles:insertAttribute value="${page}" flush="true" />
</c:forEach>
