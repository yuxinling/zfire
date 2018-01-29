package com.dev.huining.soft.web.zfire.action;

import com.dev.huining.soft.web.zfire.action.base.BaseAction;
import com.dev.huining.soft.web.zfire.commons.SystemHelper;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 上午8:42
 */
@Controller
public class MobileExecuteAction extends BaseAction {
	@ResponseBody
	@RequestMapping(value = "mexecute.do")
    public Result handleRequest(HttpServletRequest request,HttpServletResponse response) {
		Parameter requestParameter = this.getReqParameters(request);
		Parameter defaultParameter = SystemHelper.getDefParameter();
		Result result = super.doRequestHandle(this.mergeParameters(defaultParameter, requestParameter));
		return result;
	}
}
