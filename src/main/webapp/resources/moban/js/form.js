/**
 * User: yu_xinling
 * Date: 13-7-7
 * Time: 下午10:05
 */
(function ($) {
    $.fn.params = function () {
        var $this = $(this);
        var data = $this[0].tagName.toLowerCase() == 'form' ? getFormValue($this[0]) : {};
        return data;

        function getFormValue(form) {
            var result = {};
            if (!form) result;

            var formElements = form.elements;

            for (var i = 0; i < formElements.length; i++) {
                var element = formElements[i];
                if (!element.name) continue;
                if (!element.type || element.type == "submit" ||
                    element.type == "botton" || element.type == "file")  continue;

                elementValue(element, result);
            }
            return result;
        }

        function elementValue(element, result) {
            var name = element.name;

            if (element.type == 'checkbox') {
                if (!element.checked) return;
            }

            var value = element.value;
            addValue(name, value, result);
        }

        function addValue(name, value, result) {
            var _value = result[name];
            if (!_value) {
                result[name] = value;
            } else {
                var vv = $.makeArray(_value);
                vv.push(value);
                result[name] = vv;
            }
        }
    };
})(jQuery);
(function ($) {
	$.fn.inputs = function () {
		var $this = $(this);
		var data = getValues($this);
		
		return data;
		
		function getValues($obj) {
			var result = {};
			if (!$obj) result;
			
			var $formElements = $obj.find("[name]");
			
			$formElements.each(function(){
				var element = $(this)[0];
				if (!element.name) return true;
				if (!element.type || element.type == "submit" ||
						element.type == "botton" || element.type == "file")  return true;
				
				elementValue(element, result);
			});
			
			return result;
		}
		
		function elementValue(element, result) {
			var name = element.name;
			
			if (element.type == 'checkbox') {
				if (!element.checked) return;
			}
			
			var value = element.value;
			addValue(name, value, result);
		}
		
		function addValue(name, value, result) {
			var _value = result[name];
			if (!_value) {
				result[name] = value;
			} else {
				var vv = $.makeArray(_value);
				vv.push(value);
				result[name] = vv;
			}
		}
	};
})(jQuery);

jQuery.extend({
    request: function(uc,params,callback,sync) {
        if(!uc){
            alert("please provide uc....")
            return;
        }
        var data = {}
        if (params) data = $.extend(data, params);
        data["ucname"] = uc;

//        if(sync === false) sync = false;
//        else sync = true;
        sync = false;
        var url = "/execute.do";
        $.ajax({
            type: "POST",
            url: url,
            data: data,
            timeout:30000,
            statusCode:{
                404: function() {
                    alert("Not found " + url);
                }
            },
            success: function(result){
                if(callback)
                    callback(result);
            },
            error:function(result){
            },
            async:sync,
            dataType: "json"
        });
    },
    dict:function (dictno){
        var self = this;
        var data = [];
        self.request("UC_QUERY_DICT",{"dictno":dictno},function(result){
            if(result['dicts']){
                data =  result['dicts'];
            }
        });
        return data;
    }
});
