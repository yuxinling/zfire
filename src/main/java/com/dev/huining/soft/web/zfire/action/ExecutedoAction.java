package com.dev.huining.soft.web.zfire.action;

import com.dev.huining.soft.web.zfire.action.base.BaseAction;
import com.dev.huining.soft.web.zfire.commons.SystemHelper;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.exception.BusinessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 上午8:42
 */
@Controller
public class ExecutedoAction extends BaseAction {
	@ResponseBody
	@RequestMapping(value = "execute.do")
    public Result handleRequest(HttpServletRequest request,HttpServletResponse response) {
		Parameter requestParameter = this.getReqParameters(request);
		Parameter defaultParameter = SystemHelper.getDefParameter();
		Result result = super.doRequestHandle(this.mergeParameters(defaultParameter, requestParameter));
		return result;
	}
}
