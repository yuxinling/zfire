<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ include file="../common/includejs.jsp" %>
<html lang="en">
<head>
    <title>zfire</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/resources/moban/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/moban/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="/resources/moban/css/matrix-style2.css" />
    <link rel="stylesheet" href="/resources/moban/css/matrix-media.css" />
    <link rel="stylesheet" href="/resources/moban/font-awesome/css/font-awesome.css"/>

	<script src="/resources/moban/js/excanvas.min.js"></script> 
    <script src="/resources/moban/js/jquery-1.7.1.min.js"></script>
    <script src="/resources/moban/js/jquery.ui.custom.js"></script> 
    <script src="/resources/moban/js/bootstrap.min.js"></script> 
    <script src="/resources/moban/js/nicescroll/jquery.nicescroll.min.js"></script> 
    <script src="/resources/moban/js/zfire.js"></script> 
</head>
<tiles:putListAttribute name="pages">
    <c:forEach items="${mainLayoutCases}" var="item" >
        <tiles:addAttribute value="/page.do?page=${item.pageid}&c_params=${c_params}" />
    </c:forEach>
</tiles:putListAttribute>
<tiles:importAttribute name="pages" />
<style type="text/css">
	#content {
	    margin-left: 0;
	}
</style>

<body>
	<div id="content">
		<c:forEach var="page" items="${pages}">
		    <tiles:insertAttribute value="${page}" flush="true" />
		</c:forEach>
	</div>
</body>
