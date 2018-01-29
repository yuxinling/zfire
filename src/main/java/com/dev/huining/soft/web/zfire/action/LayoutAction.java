package com.dev.huining.soft.web.zfire.action;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dev.huining.soft.web.zfire.action.base.BaseAction;
import com.dev.huining.soft.web.zfire.commons.SystemHelper;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.cache.LayoutCaseCfg;
import com.dev.huining.soft.web.zfire.exception.BusinessException;
import com.dev.huining.soft.web.zfire.pojo.entity.SysLayout;
import com.dev.huining.soft.web.zfire.utils.ConstantUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;

/**
 * User: yu_xinling
 * Date: 13-8-10
 * Time: 下午11:20
 */
@Controller
public class LayoutAction extends BaseAction {
	@RequestMapping(value = "/{module}/{code}.html")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response,
									  @PathVariable("module") String module,@PathVariable("code") String lcode) {
		ModelAndView modelView = new ModelAndView();
		Parameter requestParameter = this.getReqParameters(request);
		String moduleCode = SystemHelper.getModuleCodes().get(module);
		Assert.hasLength(moduleCode, "Please add module to " + ConstantUtils.DEF_PARAM_FILE + " file.");

		SysLayout layout = cache.getCacheLayout(moduleCode, lcode);
		Assert.notNull(layout, "Don't exist Syslayout module = " + module + " and lcode = " + lcode);

		List<LayoutCaseCfg> mainLayoutCases = cache.getCacheLayoutCase(layout.getId(), "main");
		List<LayoutCaseCfg> leftLayoutCases = cache.getCacheLayoutCase(layout.getId(), "left");

		modelView.addObject("mainLayoutCases", mainLayoutCases);
		modelView.addObject("leftLayoutCases", leftLayoutCases);
		modelView.addObject("module", module);
		modelView.addObject("code", lcode);

		modelView.addObject("c_params", JsonUtils.formatJSONObj(requestParameter.getProperties()));
		modelView.setViewName(ConstantUtils.BASE_LAYOUT_TEMPLATE_PAGE_NAME);
		return modelView;
	}
	@RequestMapping(value = "/{module}/{code}/{layoutCase}.html")
	public ModelAndView handleLayoutCaseRequest(HttpServletRequest request, HttpServletResponse response,
												@PathVariable("module") String module,
												@PathVariable("code") String lcode,
												@PathVariable("layoutCase") String layoutCase) {
		ModelAndView modelView = new ModelAndView();
		Parameter requestParameter = this.getReqParameters(request);
		String moduleCode = SystemHelper.getModuleCodes().get(module);
		Assert.hasLength(moduleCode, "Please add module to " + ConstantUtils.DEF_PARAM_FILE + " file.");
		
		SysLayout layout = cache.getCacheLayout(moduleCode, lcode);
		Assert.notNull(layout, "Don't exist Syslayout module = " + module + " and lcode = " + lcode);
		
		
		if("mainLayoutCases".equalsIgnoreCase(layoutCase)){
			List<LayoutCaseCfg> mainLayoutCases = cache.getCacheLayoutCase(layout.getId(), "main");
			modelView.addObject("mainLayoutCases", mainLayoutCases);
			modelView.setViewName(ConstantUtils.MAIN_TEMPLATE_PAGE_NAME);
			
		}else if("leftLayoutCases".equalsIgnoreCase(layoutCase)){
			List<LayoutCaseCfg> leftLayoutCases = cache.getCacheLayoutCase(layout.getId(), "left");
			modelView.addObject("leftLayoutCases", leftLayoutCases);
			modelView.setViewName(ConstantUtils.LEFT_TEMPLATE_PAGE_NAME);
			
		}else{
			Assert.hasLength(moduleCode, "Please add module to " + ConstantUtils.DEF_PARAM_FILE + " file.");
			throw new BusinessException("Unkowns the layoutCase "+ layoutCase);
		}
		modelView.addObject("c_params", JsonUtils.formatJSONObj(requestParameter.getProperties()));
		return modelView;
	}
}
