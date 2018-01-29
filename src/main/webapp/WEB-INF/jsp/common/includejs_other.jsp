<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 获取项目根路径  
	String contextPath = request.getContextPath();

%>
<script type="text/javascript">
	// 定义要用到的公共常量变量
	// 项目根路径
	var CONTEXT_PATH = "<%=contextPath %>";
	
	// 加载（页面等待脚本）
	document.writeln('<link rel="stylesheet" type="text/css" href="<%=contextPath %>/extjs/resources/css/ext-all.css"/>');
	document.writeln('<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/styles.css"/>');
    document.writeln('<script type="text/javascript" src="<%=request.getContextPath()%>/extjs/adapter/ext/ext-base.js"><\/script>');
    document.writeln('<script type="text/javascript" src="<%=request.getContextPath()%>/extjs/ext-all.js"><\/script>');
    document.writeln('<script type="text/javascript" src="<%=request.getContextPath()%>/extjs/ext-lang-zh_CN.js"><\/script>');
    document.writeln('<script type="text/javascript" src="<%=request.getContextPath()%>/js/commons.js"><\/script>');
</script>