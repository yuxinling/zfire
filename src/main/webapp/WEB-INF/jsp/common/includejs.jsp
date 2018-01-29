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

    document.writeln('<script type="text/javascript" src="/resources/js/vender/listlayout.js"><\/script>');
    document.writeln('<script type="text/javascript" src="/resources/js/vender/common.js"><\/script>');

</script>