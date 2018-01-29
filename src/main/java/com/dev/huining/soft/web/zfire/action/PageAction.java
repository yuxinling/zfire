package com.dev.huining.soft.web.zfire.action;


import com.dev.huining.soft.web.zfire.action.base.BaseAction;
import com.dev.huining.soft.web.zfire.commons.SystemHelper;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.cache.PageCfg;
import com.dev.huining.soft.web.zfire.pojo.entity.SysPage;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * User: yu_xinling
 * Date: 13-8-10
 * Time: 下午11:21
 */
@Controller
public class PageAction extends BaseAction {

	@RequestMapping(value = "/**/page.do")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		Parameter requestParameter = this.getReqParameters(request);
		String page = (String) requestParameter.getProperty("page");
		String view = (String) requestParameter.getProperty("view");
		Assert.isTrue(StringUtils.isNotBlank(page) || StringUtils.isNotBlank(view), "Page(id/code) and view must has one.");

		Parameter cparams = CommonUtils.getJsonParameters((String) requestParameter.delProperty("c_params"));
		ModelAndView modelView = new ModelAndView();
		if(StringUtils.isNotBlank(view)) {
			String module = SystemHelper.moduleName(request.getRequestURI());
			Assert.hasLength(module,"URL must contain module name like : ./../module/page.do.");
			modelView.setViewName(module + "/" + view);
			Parameter params = mergeParameters(cparams, requestParameter);
			modelView.addObject("params", params.getProperties());
			modelView.addObject("c_params", JsonUtils.formatJSONObj(params.getProperties()));
		}else{
			PageCfg sysPage = cache.getCachePage(page);
			Assert.notNull(sysPage, "Don't exist id/code = " + page + " SysPage.");

			Parameter pageParams = CommonUtils.getJsonParameters(sysPage.getParams());
			pageParams.setProperty("ucname", sysPage.getUcs());
			Parameter params = mergeParameters(
					SystemHelper.getDefParameter(),
					pageParams,
					cparams,
					requestParameter);

			doRequestHandle(params, modelView);
			modelView.addObject("pageCfg", sysPage);
			modelView.setViewName(sysPage.getPage().trim());
			modelView.addObject("params", params.getProperties());
			modelView.addObject("c_params", JsonUtils.formatJSONObj(mergeParameters(cparams, requestParameter).getProperties()));
		}
		return modelView;
	}
}
