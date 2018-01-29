<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-list" style="margin-bottom: 10px;">
    <li class="active"><a>应用查看</a></li>
</ul>
<form class="form-horizontal" id="form-id">
    <fieldset>

        <div class="control-group">
            <label class="control-label" for="name">应用ID</label>
            <div class="controls">
                <input type="text" id="appId" name="name" placeholder="应用名称">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="name">应用名称</label>
            <div class="controls">
                <input type="text" id="name" name="name" placeholder="应用名称">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">应用图标</label>
            <div class="controls">
                <img id="iconAppSoftImg" src="/resources/images/image-default.png" alt="上传图片" style="width: 50px;height: 50px;"  class="img-polaroid" >
                <input id="softIcon" name="icon" type="hidden"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="iconUpload" name="file" type="file"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="version">版本</label>
            <div class="controls">
                <input type="text" id="version" name="version" placeholder="版本">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="language">语言</label>
            <div class="controls">
                <input type="text" id="language" name="language" placeholder="语言">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="downCount">下载次数</label>
            <div class="controls">
                <input type="text" id="downCount" name="downCount" placeholder="下载次数">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="descrition">描述</label>
            <div class="controls">
                <textarea rows="3" class="input-xlarge" id="descrition" name="descrition"></textarea>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">应用软件</label>
            <div class="controls">
                    <span class="input-xlarge uneditable-input" id="softApk">
                      请上传软件包
                    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="fileUpload" name="file" type="file"/>
                <input id="softApkInput" name="path" type="hidden"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">应用图片</label>
            <div class="controls">
                <div style="margin-bottom: 10px;" id="imageAppSofts">
                    <img src="/resources/images/image-default.png" alt="上传图片" style="width: 100px;height: 150px;"  class="img-polaroid" >
                    <input name="images" type="hidden"/>
                    <span style="margin-left: 10px;"></span>
                    <img src="/resources/images/image-default.png" alt="上传图片" style="width: 100px;height: 150px;"  class="img-polaroid" >
                    <input name="images" type="hidden"/>
                    <span style="margin-left: 10px;"></span>
                    <img src="/resources/images/image-default.png" alt="上传图片" style="width: 100px;height: 150px;"  class="img-polaroid" ></br>
                    <input name="images" type="hidden"/>
                    <img src="/resources/images/image-default.png" alt="上传图片" style="width: 100px;height: 150px;"  class="img-polaroid" >
                    <input name="images" type="hidden"/>
                    <span style="margin-left: 10px;"></span>
                    <img src="/resources/images/image-default.png" alt="上传图片" style="width: 100px;height: 150px;"  class="img-polaroid" >
                    <input name="images" type="hidden"/>
                    <span style="margin-left: 10px;"></span>
                    <img src="/resources/images/image-default.png" alt="上传图片" style="width: 100px;height: 150px;"  class="img-polaroid" >
                    <input name="images" type="hidden"/>
                </div>
                <input id="imageUpload" name="file" type="file" disabled="true"/>

            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" id="isFree" name="isFree" value="1"> 是否免费
                </label>
            </div>
        </div>

        <div class="form-actions">
            <button type="submit" class="btn btn-primary" id="saveAppSoftBtn">保存</button>&nbsp;&nbsp;</span>
            <button type="button" class="btn">取消</button>
        </div>

    </fieldset>
</form>
<script type="text/javascript">

</script>
<script>

</script>
<style>
</style>


