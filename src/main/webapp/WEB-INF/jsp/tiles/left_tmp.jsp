<%@ page language="java" pageEncoding="utf-8" %>
<div class="blue">
    <ul class="accordion"  id="left-menu">
        <li><a href="#">系统设置</a>
            <ul>
                <li><a href="javascript:showPageView('00000001')">UC 配置</a></li>
                <%--<li><a href="javascript:showPageView('00000002')">添加 UC</a></li>--%>
                <li><a href="javascript:showPageView('00000007')">Page 管理</a></li>
                <li><a href="javascript:showPageView('00000011')">Layout 管理</a></li>
                <%--<li><a href="javascript:showPageView('00000003')">编辑UC</a></li>--%>
                <%--<li><a href="javascript:showPageView('00000004')">sql 页面</a></li>--%>
                <%--<li><a href="javascript:showPageView('00000005',{'ucId':'fd82c37ebb2c4ead8ed145f927ede30b'})">CVS 页面</a></li>--%>
                <%--<li><a href="javascript:showPageView('00000006',{'ucId':'fd82c37ebb2c4ead8ed145f927ede30b'})">VIEW 页面</a></li>--%>
                <%--<li><a href="javascript:showPageView('00000008')">添加 Page</a></li>--%>
                <%--<li><a href="javascript:showPageView('00000009')">添加 VIEW</a></li>--%>
                <%--<li><a href="javascript:showPageView('00000010')">添加 CVS</a></li>--%>
                <li><a href="javascript:loadPage('/frame/page.do?view=cache_refresh')">刷新缓存</a></li>
            </ul>
        </li>
    </ul>
</div>
<script type="text/javascript">
    $(document).ready(function($){
        $('#left-menu').dcAccordion({
            eventType: 'click',
            autoClose: false,
            saveState: true,
            disableLink: false,
            menuClose: true,
            speed: 'fast',
            showCount: false
        });
    });


    function loadPageView(){

    }
</script>