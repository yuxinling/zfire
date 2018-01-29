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
<body>
	<div><tiles:insertAttribute name="topbar"/></div>
	<!--sidebar-menu-->
	<div id="sidebar" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
		<tiles:insertAttribute name="left"/>
	</div>
	<!--sidebar-menu-->
	
    <!--main-container-part-->
    <div id="content">
        <!--breadcrumbs-->
        <div id="content-header">
          <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
        </div>
        <!--End-breadcrumbs-->
        <iframe src="/${module}/${code}/mainLayoutCases.html" id="iframe-main" style="width:100%;border: 0"></iframe>
    </div>
    <!--end-main-container-part-->
</body>
<script type="text/javascript">
	//初始化相关元素高度
	function init(){
	    $("body").height($(window).height()-80);
	    $("#iframe-main").height($(window).height()-90);
	    $("#sidebar").height($(window).height()-50);
	}
	
	$(function(){
	    init();
	    $(window).resize(function(){
	        init();
	    });
	    
	});
	function resetMenu() {
	    document.gomenu.selector.selectedIndex = 2;
	}
</script>
</html>
