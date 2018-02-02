<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ include file="../common/includejs.jsp" %>
<html lang="en">
<head>
    <title>zfire</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="/resources/js/vender/zfire.js"></script> 
</head>
<body>
	<div><tiles:insertAttribute name="topbar"/></div>
	<!--sidebar-menu-->
	<div id="sidebar" style="overflow-y: auto; overflow-x:hidden;height: 100%;">
		<tiles:insertAttribute name="left"/>
	</div>
	<!--sidebar-menu-->
	
	<!--main-content-->
	<div id="main-content">
        <div id="content-header">
			<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
		</div>
		<div id="main-content-html" style="overflow-y: auto; overflow-x:auto;">
			<tiles:insertAttribute name="main" flush="true"/>		
		</div>
	</div>
	<!--main-content-->
	<div style="clear: both;"></div>  

<!-- 		
	<div style="width:220px;background-color: gray;height: 300px;float: left;"></div>
	<div style="overflow:hidden;background-color: red;height: 1500px;">
		<div style="width: 100%;height:300px;background: pink;clear: both;">
			<div style="width: 100%;height:100px;background: blue;"></div>
		</div>
		<div style="width: 100%;height:300px;background: white;clear: right;"></div>
		<div style="width: 100%;height:300px;background: green;"></div>
		<div style="width: 100%;height:300px;background: blue;"></div> 
	</div>
	<div style="clear: both"></div>
-->	
</body>
<script type="text/javascript">
	//初始化相关元素高度
	function init(){
	    $("body").height($(window).height()-80);
	    $("#main-content").height($(window).height()-60);
	    $("#main-content-html").height($(window).height()-88);
	    //$("#sidebar").height($(window).height()-50);
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