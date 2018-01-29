<%@ page language="java" pageEncoding="utf-8" %>
<div class="blue">
    <ul class="accordion"  id="app-menu">
        <li><a href="#">图片应用</a>
            <ul>
                <li><a href="javascript:showPageView('02010001')">图片分类</a></li>
                <li><a href="javascript:showPageView('02010003')">热门词条</a></li>
                <li><a href="javascript:showPageView('02010006')">首页推荐</a></li>
                <li><a href="javascript:showPageView('02010005')">图片预览</a></li>
            </ul>
        </li>
    </ul>
    <ul class="accordion"  id="applist-menu">
        <li><a href="#">应用管理</a>
            <ul>
                <li><a href="javascript:showPageView('02000001')">应用列表</a></li>
                <li><a href="javascript:showPageView('02000002')">Package管理</a></li>
                <li><a href="javascript:showPageView('02000003')">应用配置</a></li>
            </ul>
        </li>
    </ul>
</div>
<script type="text/javascript">
    $(document).ready(function($){
        $('#app-menu').dcAccordion({
            eventType: 'click',
            autoClose: false,
            saveState: true,
            disableLink: false,
            menuClose: true,
            speed: 'fast',
            showCount: false
        });
        $('#applist-menu').dcAccordion({
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