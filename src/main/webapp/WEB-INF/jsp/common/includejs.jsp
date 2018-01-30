<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 获取项目根路径
	String contextPath = request.getContextPath();

%>
<script type="text/javascript">
	// 定义要用到的公共常量变量
	// 项目根路径
	var CONTEXT_PATH = "<%=contextPath %>";
	// 加载（页面等待脚本）
	<%--document.writeln('<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css"/>');--%>
	<%--document.writeln('<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-responsive.min.css"/>');--%>
	document.writeln('<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css"/>');
	document.writeln('<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-responsive.css"/>');
	document.writeln('<link rel="stylesheet" type="text/css" href="/resources/css/frame-style.css"/>');
	document.writeln('<link rel="stylesheet" type="text/css" href="/resources/css/frame-media.css"/>');
	document.writeln('<link rel="stylesheet" type="text/css" href="/resources/font-awesome/css/font-awesome.css"/>');
	document.writeln('<link rel="stylesheet" type="text/css" href="/resources/css/styles.css"/>');

    document.writeln('<script type="text/javascript" src="/resources/js/lib/jquery-1.8.1.js"/><\/script>');
    <%--document.writeln('<script type="text/javascript" src="/resources/js/lib/bootstrap.min.js"><\/script>');--%>
    document.writeln('<script type="text/javascript" src="/resources/js/lib/bootstrap.js"><\/script>');
    document.writeln('<script type="text/javascript" src="/resources/js/lib/jquery.dataTables.min.js"><\/script>');
    
    document.writeln('<script type="text/javascript" src="/resources/js/vender/listlayout.js"><\/script>');
    document.writeln('<script type="text/javascript" src="/resources/js/vender/common.js"><\/script>');
    document.writeln('<script type="text/javascript" src="/resources/js/vender/form.js"><\/script>');
    document.writeln('<script type="text/javascript" src="/resources/js/vender/page_form.js"><\/script>');
    /* document.writeln('<script type="text/javascript" src="/resources/js/lib/select2/select2.js"><\/script>'); */
	

</script>