package com.dev.huining.soft.web.zfire.action.base;

import com.dev.huining.soft.web.zfire.cache.SystemCache;
import com.dev.huining.soft.web.zfire.commons.SystemHelper;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.cache.ViewCfg;
import com.dev.huining.soft.web.zfire.exception.BizErrorCode;
import com.dev.huining.soft.web.zfire.exception.BusinessException;
import com.dev.huining.soft.web.zfire.pojo.entity.*;
import org.apache.commons.lang.StringUtils;
import org.springframework.util.Assert;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 上午9:33
 */
public class BaseAction {
	@Resource
	protected SystemCache cache;

	public BaseAction() {
//		cache = (SystemCache) SpringBeanLocator.getInstance().getBean("systemCache");
	}

	private Result excute(Parameter params) throws BusinessException {
		Assert.notNull(params, "params is null.");
		String ucname = (String) params.getProperty("ucname");
		Assert.hasLength(ucname, "parameter ucname  is required.");
		SysUccfg uccfg = cache.getCacheUccfg(ucname);
		return SystemHelper.invokeMethod(uccfg, params);
	}

	protected Result doRequestHandle(Parameter params) {
		Result result = null;
		try {
			Assert.notNull(params, "params is required.");
			result = excute(params);
		} catch (Exception e) {
			e.printStackTrace();
			result = Result.buildErrorReult(BizErrorCode.UNKOWN_ERROR_CODE, e.getMessage());
		}
		return result;
	}

	protected ModelAndView doRequestHandle(Parameter params, ModelAndView modelAndView) {
		try {
			String ucname = (String) params.getProperty("ucname");
			if(StringUtils.isBlank(ucname)) return modelAndView;
			String viewflag = (String) params.getProperty("viewflag");

			String[] ucnames = ucname.split(",");
			List<String> viewflags = Arrays.asList(viewflag.split(","));
			for (int i = 0; i < ucnames.length; i++) {
				String uc = ucnames[i];
				params.setProperty("ucname", uc);
				String view = viewflags.get(i);
				if (StringUtils.isBlank(view)) view = "DEFAULT";
				params.setProperty("viewflag", view);

				List<ViewCfg> viewcfgs = cache.getCacheSysViewcfg(uc, view);
				Result data = excute(params);

				if (i == 0) {
					modelAndView.addObject("data", data);
					modelAndView.addObject("viewcfg", viewcfgs);

					String listid = (String) params.getProperty("listid");
					if(StringUtils.isNotBlank(listid))
						modelAndView.addObject("listconfig", SystemHelper.getListConfig(listid));
				}
				modelAndView.addObject(uc + "_data", data);
				modelAndView.addObject(uc + "_viewcfg", viewcfgs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return modelAndView;
	}

	public Parameter getReqParameters(HttpServletRequest request) {
		Assert.notNull(request, "HttpServletRequest is required.");
		Parameter params = new Parameter();
		//将parameter 封装成自己的parameter
		Enumeration enuelement = request.getParameterNames();
		while (enuelement.hasMoreElements()) {
			String name = (String) enuelement.nextElement();
			Object[] values = request.getParameterValues(name);
			if (values != null && values.length == 1)
				params.setProperty(name, values[0]);
			else if (values != null && values.length > 1) {
				params.setProperty(name, values);
			}
		}
		return params;
	}

	/**
	 * merge parameter 后面的会覆盖前面的
	 *
	 * @param first
	 * @param second
	 * @param others
	 * @return
	 */
	public Parameter mergeParameters(Parameter first, Parameter second, Parameter... others) {
		Parameter params = new Parameter();
		if (first != null) {
			for (Map.Entry<String, Object> property : first.getProperties().entrySet()) {
				params.setProperty(property.getKey(), property.getValue());
			}
		}
		if (second != null) {
			for (Map.Entry<String, Object> property : second.getProperties().entrySet()) {
				params.setProperty(property.getKey(), property.getValue());
			}
		}

		if (others != null) {
			for (Parameter other : others) {
				if (other != null) {
					for (Map.Entry<String, Object> property : other.getProperties().entrySet()) {
						params.setProperty(property.getKey(), property.getValue());
					}
				}
			}
		}
		return params;
	}
}
