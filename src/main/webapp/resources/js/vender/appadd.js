$(function() {
    $('#form-id').validate({
        rules: {
            name: {
                minlength: 6,
                required: true
            },
            version: {
                minlength: 4,
                required: true
            },
            language: {
                required: true
            },
            downCount: {
                number:true,
                required: true
            },
            descrition: {
                minlength: 10,
                required: true
            }
        },
        highlight: function (element) {
            $(element).closest('.control-group').removeClass('success').addClass('error');
        },
        success: function (element) {
            $(element).text('OK!').addClass('valid').closest('.control-group').removeClass('error').addClass('success');
        }
    });
});
$(function() {
    $("#fileUpload").uploadify({
        auto          : true,
        swf           : CONTEXT_PATH + '/js/uploadify/uploadify.swf',
        uploader      : CONTEXT_PATH + '/file/file_uploadFile',
        buttonText    : "浏览",
        fileObjName   : "file",
        buttonClass   : "btn btn-info",
        uploadLimit   : 1,
        fileTypeDesc  : 'All Files',
        fileTypeExts  : '*.apk',
        fileSizeLimit : 1024*100,
        onUploadSuccess  : fileUploadSuccess
    });

    function fileUploadSuccess(file, data, response){
        var dataObj = JSON.parse(data) ;
        $("#softApk").html(file.name);
        $("#softApkInput").val(dataObj.id);
    }

    function  imageUploadComplte(file){
        var $inputs = $("#imageAppSofts").find("input[name='images']");
        var flag = true;

        for(var i = 0 ; i < $inputs.length; i++){
            var inputValue = $($inputs[i]).val();
            if(inputValue && inputValue.trim() != "") continue;
            else{
                flag = false;
                break;
            }
        }

        if(flag) $("#imageUpload").hide();
    }

    function imageUploadSuccess(file, data, response){
        var dataObj = JSON.parse(data) ;
        var $imgs = $("#imageAppSofts").find("img");//.attr("src",CONTEXT_PATH+"/resource/uploadfiles/"+dataObj.name);
        var $inputs = $("#imageAppSofts").find("input[name='images']");

        for(var i = 0 ; i < $inputs.length; i++){
            var inputValue = $($inputs[i]).val();
            if(inputValue && inputValue.trim() != "") continue;
            else {
                $($inputs[i]).val(dataObj.id);
                $($imgs[i]).attr("src",CONTEXT_PATH+"/resource/uploadfiles/"+dataObj.name);
                break;
            }
        }
    }

    $("#imageUpload").uploadify({
        auto          : true,
        swf           : CONTEXT_PATH + '/js/uploadify/uploadify.swf',
        uploader      : CONTEXT_PATH + '/file/file_uploadFile',
        buttonText    : "上传图片",
        fileObjName   : "file",
        buttonClass   : "btn btn-info",
        width         : "82",
        queueSizeLimit   : 6,
        fileSizeLimit    : 200,
        onUploadComplete : imageUploadComplte,
        onUploadSuccess  : imageUploadSuccess
    });

    $("#iconUpload").uploadify({
        auto          : true,
        swf           : CONTEXT_PATH + '/js/uploadify/uploadify.swf',
        uploader      : CONTEXT_PATH + '/file/file_uploadFile',
        buttonText    : "上传图标",
        width         : "82",
        fileObjName   : "file",
        buttonClass   : "btn btn-info",
        multi         : "false",
        queueSizeLimit   : 1,
        fileSizeLimit    : 512,
        onUploadSuccess  : iconUploadSuccess
    });

    function iconUploadSuccess(file, data, response){
        var dataObj = JSON.parse(data)
        $("#iconAppSoftImg").attr("src",CONTEXT_PATH+"/resource/uploadfiles/"+dataObj.name);
        $("#softIcon").val(dataObj.id);

    }

    $("#saveAppSoftBtn").click(function (event){
        event.preventDefault();
        event.stopPropagation();

        if($("#form-id").valid()){
            var data = $("#form-id").params();
            $.post("http://localhost:8080/app_soft/sys/sys_saveSoftInfo.action",{"data":JSON.stringify(data)}
                    , function (){
                        alert(1);
                    }, 'json');
        }
    });
});