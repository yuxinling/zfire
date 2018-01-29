/**
 * User: yu_xinling
 * Date: 13-7-7
 * Time: 下午10:05
 */
(function ($) {
    $.fn.dictSel = function (params) {
        var $this = $(this);

        if(!params) return;
        var datas = params['data'];
        var text = params['text'];
        var value = params['value'];
        var defvalue = params['defvalue'];

        if(!datas) datas = [];
        $.each(datas,function(index,data){
            var $option = $("<option value='"+data[value]+"'>"+data[text]+"</option>");
            $this.append($option);
        });

        if(defvalue){
            var $options = $this.find("option");
            $.each($options,function(index,option){
                var $option = $(option);
                var ovalue = $option.val();
                if(ovalue && ovalue == defvalue){
                    $option.attr("selected", true);
                }
            });
        }
    };
})(jQuery);
