<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:putListAttribute name="pages">
    <c:forEach items="${leftLayoutCases}" var="item" >
        <tiles:addAttribute value="/page.do?page=${item.pageid}&c_params=${c_params}" />
    </c:forEach>
</tiles:putListAttribute>
<tiles:importAttribute name="pages" />
<c:forEach var="page" items="${pages}">
    <tiles:insertAttribute value="${page}" flush="true" />
</c:forEach>

<!--sidebar-menu-->
<ul>
    <li class="submenu active">
        <a class="menu_a" link="index2.html"><i class="icon icon-home"></i> <span>控制面板</span></a> 
    </li>
    <li class="submenu"> 
        <a href="#">
            <i class="icon icon-table"></i> 
            <span>系统设置</span> 
            <span class="label label-important">4</span>
        </a>
        <ul>
            <li><a class="menu_a" link="00000001"><i class="icon icon-caret-right"></i>UC 配置</a></li>
            <li><a class="menu_a" link="00000007"><i class="icon icon-caret-right"></i>Page 管理</a></li>
            <li><a class="menu_a" link="00000011"><i class="icon icon-caret-right"></i>Layout 管理</a></li>
            <li><a class="menu_a" link="form-wizard.html"><i class="icon icon-caret-right"></i>刷新缓存</a></li>
        </ul>
    </li>
</ul>
<!--sidebar-menu-->