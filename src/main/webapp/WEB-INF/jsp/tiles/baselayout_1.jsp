<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ include file="../common/includejs.jsp" %>
<link href="/resources/css/dcaccordion.css" rel="stylesheet" type="text/css"/>
<link href="/resources/css/skins/blue.css" rel="stylesheet" type="text/css"/>
<link type="text/css" href="/resources/css/jquery.jscrollpane.css" rel="stylesheet" media="all" />
<script type='text/javascript' src='/resources/js/lib/jquery.cookie.js'></script>
<script type='text/javascript' src='/resources/js/lib/jquery.dcjqaccordion.2.7.min.js'></script>

<script type="text/javascript" src="/resources/js/lib/jquery.mousewheel.js"></script>
<script type="text/javascript" src="/resources/js/lib/jquery.jscrollpane.min.js"></script>
<html lang="en">
<head>
    <meta charset="utf-8">
</head>
<body>
<div id="html_wrap">
    <div><tiles:insertAttribute name="topbar"/></div>
    <div id="html_center" class="center">
        <div id="center_content">
            <div id="html_menu"><tiles:insertAttribute name="left"/></div>
            <div id="html_main">
                <tiles:insertAttribute name="main"/>
            </div>
            <div style="clear: both"></div>
        </div>
    </div>
</div>
<div><tiles:insertAttribute name="bottom"/></div>
</body>
</html>

<style type="text/css">
    html, body {
        height: 100%;
    }
    #html_wrap {
        min-height: 100%;
        height: auto !important;
        height: 100%;
        margin: 0 auto -81px;
    }
    #wrap > #html_center {
        padding-top: 121px;
    }
</style>




