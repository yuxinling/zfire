package com.dev.huining.soft.web.zfire.commons;

import com.dev.huining.soft.web.zfire.cache.SystemCache;
import com.dev.huining.soft.web.zfire.dto.ListConfig;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.configuration.ListConfigurationYaml;
import com.dev.huining.soft.web.zfire.dto.configuration.ModuleConfigurationYaml;
import com.dev.huining.soft.web.zfire.dto.configuration.ParamConfigurationYaml;
import com.dev.huining.soft.web.zfire.exception.BusinessException;
import com.dev.huining.soft.web.zfire.pojo.entity.SysUccfg;
import com.dev.huining.soft.web.zfire.utils.ConstantUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;
import com.dev.huining.soft.web.zfire.utils.SpringBeanLocator;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

import java.lang.reflect.Method;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-8-10
 * Time: 下午11:24
 */
public class SystemHelper {
	private static final Logger logger = LoggerFactory.getLogger(SystemHelper.class);
	private static final Parameter defaultParameter = new ParamConfigurationYaml(ConstantUtils.DEF_PARAM_FILE).getDefaultParameter();
	private static final Map<String, String> moduleCodes = new ModuleConfigurationYaml(ConstantUtils.DEF_PARAM_FILE).getModuleCodes();
	private static final Map<String, ListConfig> listConfigMap = new ListConfigurationYaml(ConstantUtils.LIST_CONFIG_FILE).getListConfigCacheMap();

	private SystemHelper() {


	}

	public static Parameter getDefParameter() {
		return defaultParameter;
	}

	public static Map<String, String> getModuleCodes() {
		return moduleCodes;
	}

	public static ListConfig getListConfig(String listid) {
		return listConfigMap.get(listid);
	}

//	public static Result buildFailResult() {
//		Result result = new Result();
//		result.setErrorMsg("execute fail ....");
//		result.setStatusCode(StatusCode.FAILURE);
//		return result;
//	}
//
//	public static Result buildSuccessResult() {
//		Result result = new Result();
//		result.setErrorMsg("");
//		result.setStatusCode(StatusCode.SUCCESS);
//		return result;
//	}

	public static Result invokeMethod(String beanName, String methodName, Parameter parameter) throws BusinessException {
		try {
			Assert.notNull(beanName, "beanName is null ....");
			Assert.notNull(methodName, "methodName is null ....");
			Assert.notNull(parameter, "parameter is null ....");

			Object bean = SpringBeanLocator.getInstance().getBean(beanName);
			Assert.notNull(bean, "Do not has " + beanName + " bean....");

			Method method = null;
			method = bean.getClass().getMethod(methodName, new Class[]{parameter.getClass()});
			method.getReturnType();

			if (method.getReturnType().getSimpleName().equals("ResultSet")) {
				return (Result) method.invoke(bean, parameter);
			} else throw new Exception("没有找到方法：" + methodName);
		} catch (Exception e) {
			e.printStackTrace();
			throw new BusinessException("执行" + beanName + "的" + methodName + "出错", e);
		}
	}

	public static Result invokeMethod(SysUccfg uccfg, Parameter parameter) throws BusinessException {
		try {
			Assert.notNull(uccfg, "UC is null ....");
			Assert.notNull(parameter, "parameter is null ....");

			String beanName = uccfg.getBeanId();
			String methodName = uccfg.getMethod();
			Assert.notNull(beanName, "beanName is null ....");
			Assert.notNull(methodName, "methodName is null ....");

			Object bean = SpringBeanLocator.getInstance().getBean(beanName);
			Assert.notNull(bean, "Do not has " + beanName + " bean....");
			Method method = null;
			method = bean.getClass().getMethod(methodName, new Class[]{parameter.getClass()});

			if (method == null || (!Result.class.isAssignableFrom(method.getReturnType())))
				throw new Exception("没有找到方法" + methodName);
			Result result = (Result) method.invoke(bean, parameter);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			throw new BusinessException("执行UC " + uccfg.getUcName() + "出错," + e.getMessage(), e);
		}
	}

	public static Result invokeMethod(Parameter parameter) throws BusinessException {
		try {
			Assert.notNull(parameter, "parameter is null ....");
			String ucName = (String) parameter.getProperty("ucname");
			Assert.notNull(ucName, "ucname is required.");
			SystemCache cache = (SystemCache) SpringBeanLocator.getInstance().getBean("systemCache");
			SysUccfg uccfg = cache.getCacheUccfg(ucName);
			return invokeMethod(uccfg, parameter);
		} catch (Exception e) {
			throw new BusinessException("发生错误：" + e.getMessage(), e);
		}
	}

	/**
	 * eg: ./../main/page.do:extra  moduleName = main
	 * @param url
	 * @return
	 */
	public static String moduleName(String url) {
		if(StringUtils.isBlank(url)) return "";
		int index = url.indexOf("?");
		if (index >= 0) {
			url = url.substring(0, index);
		}
		String [] strs = url.split("/");
		//System.out.println(strs);
		if(strs.length >= 3) return strs[strs.length - 2];
		return "";
	}

	public static void main(String[] args) {
//		new SystemHelper();
//		System.out.print(JsonUtils.formatJSONObj(defaultParameter));

		System.out.println(moduleName("ee/dd/main/page.do?fefe"));
		System.out.println(moduleName("/page.do"));
		System.out.println(moduleName("/main/page.do"));
		System.out.println(moduleName("main/page.do"));
	}
}
