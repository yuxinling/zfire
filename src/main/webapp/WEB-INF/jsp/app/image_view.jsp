<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/resources/js/lib/gallery/css/blueimp-gallery.css">
<link rel="stylesheet" href="/resources/js/lib/gallery/css/blueimp-gallery-indicator.css">
<ul class="nav nav-list" style="margin-bottom: 10px;">
    <li class="active"><a>图片预览</a></li>
</ul>
<form id="ucQueryForm" class="form-horizontal">
    <div class="inline-columns-three">
        <div class="control-group">
            <label class="control-label" for="category" >类别</label>
            <div class="controls">
                <select id="category" name="category" onchange="changeCategory();">
                <option value="全部">全部</option>
            </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="tag" >标签</label>
            <div class="controls">
                <select id="tag" name="tag">
                    <option value="全部">全部</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" style="width: 180px;"></label>
            <input class="btn btn-primary align-right" type="button" value="查询" onclick='query();'>
        </div>
    </div>
</form>
<div class="pop_modal_body" >
    <div id="links" class="links"></div>
    <div id="blueimp-gallery" class="blueimp-gallery">
        <div class="slides"></div>
        <h3 class="title"></h3>
        <a class="prev">‹</a>
        <a class="next">›</a>
        <a class="close">×</a>
        <a class="play-pause"></a>
        <ol class="indicator"></ol>
    </div>
</div>
<script type="text/javascript">
$(function(){
    $.request("UC_QUERY_CATEGORY",{"pageflag":"0"},function(result){
        if(result['data'] && result['data']['rows']){
            datas = result['data']['rows'];
            $("#category").dictSel({data: datas, text: 'longTitle', value: 'cId'});
        }
    });
});
function changeCategory(){
    var cId = $("#category").val();
    if(cId){
        $.request("UC_QUERY_TAG",{"cId":cId,"pageflag":"0"},function(result){
            if(result['data'] && result['data']['rows']){
                var datas = result['data']['rows'];
                $("#tag").dictSel({data: datas, text: 'longTag', value: 'longTag'});
            }
        });
    }
}
$(function($){
    var carouselLinks = [];
    var linksContainer = $('#links');
    var data = {"tag1":"美女","tag2":"小清新"};
    //var $mask = loadMask("myModal");
    $.request("UC_GET_IMAGES_M",data,function(result){
        //$mask.remove();
        var images = result['data']['images'];
        if(!images)return ;
        $.each(images, function (index, image) {
            var url  = image.thumbnail_url;
            if(!url) return;
            $.request("UC_GET_DOWNLOADIMAGE",{"url":url,"bid":image.bid},function(result){
                $('<a target="_self"/>')
                        .append($('<img width="75" height="75" border="0">').prop('src', result.url))
                        .prop('href', image.image_url)
                        .prop('title', 'image')
                        .attr('data-gallery', '')
                        .appendTo(linksContainer);
                carouselLinks.push({ href: image.image_url,title: "image"});
            })
        });
        // Initialize the Gallery as image carousel:
        blueimp.Gallery(carouselLinks, {
            container: '#blueimp-image-carousel',
            carousel: true
        });
    });
});
</script>
<script>
    if (!window.jQuery) {
        document.write(
                '<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"><\/script>'
        );
    }
</script>
<script src="/resources/js/lib/gallery/js/blueimp-gallery.js"></script>
<script src="/resources/js/lib/gallery/js/jquery.blueimp-gallery.js"></script>
<style>

</style>


