package com.dev.huining.soft.web.zfire.commons;

import com.dev.huining.soft.web.zfire.cache.SystemCache;
import com.dev.huining.soft.web.zfire.dto.ListConfig;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.TreeNode;
import com.dev.huining.soft.web.zfire.dto.base.IRow;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
	
	
	public static List<TreeNode> buildTree(List<IRow> rows,String key,String pkey){
		List<TreeNode> nodes = new ArrayList<TreeNode>();
		Map<String,TreeNode> nodeMaps = new HashMap<String,TreeNode>();
		if(rows == null) return null;
		List<IRow> irow = new ArrayList<IRow>();
		for(IRow row : rows){
			String id = (String) row.get(key);
			String pid = (String) row.get(pkey);
			if(StringUtils.isBlank(pid)){
				TreeNode node = new TreeNode(row);
				nodes.add(node);
				nodeMaps.put(id, node);
			}else{
				irow.add(row);
			}
			
		}
		
		tree(irow,nodeMaps,key,pkey);
		
		return nodes;
	}
	
	
	public static List<TreeNode> buildTree(List<IRow> rows,String logicCodeKey, int level){
		List<TreeNode> nodes = new ArrayList<TreeNode>();
		Map<String,TreeNode> codeMaps = new HashMap<String,TreeNode>();
		if(rows == null) return null;
		List<IRow> irow = new ArrayList<IRow>();
		String logic = genLogicCode(level);
		for(IRow row : rows){
			String code = (String) row.get(logicCodeKey);
			if(logic.equals(code)){
				TreeNode node = new TreeNode(row);
				nodes.add(node);
				codeMaps.put(code, node);
			}else{
				irow.add(row);
			}
			
		}
		
		tree(irow,codeMaps,logicCodeKey,--level);
		
		return nodes;
	}
	
	private static String genLogicCode(int level) {
		StringBuilder code = new StringBuilder("");
		for (int i = level * 2; i > 0; i--) {
			code.append("0");

		}

		return code.toString();
	}
	
	private static void tree(List<IRow> rows, Map<String,TreeNode> nodeMaps,String key,String pkey){
		if(rows == null || rows.size() == 0) return ;
		List<IRow> irow = new ArrayList<IRow>();
		for(IRow row : rows){
			String id = (String) row.get(key);
			String pid = (String) row.get(pkey);
			TreeNode pnode = nodeMaps.get(pid);
			if(pnode != null){
				TreeNode node = new TreeNode(row);
				pnode.addChildren(node);
				nodeMaps.put(id, node);
			}else {
				irow.add(row);
			}
		}
		
		tree(irow,nodeMaps,key,pkey);
	}

	private static void tree(List<IRow> rows, Map<String, TreeNode> nodeMaps, String logicCodeKey, int level) {
		if (rows == null || rows.size() == 0)
			return;
		List<IRow> irow = new ArrayList<IRow>();
		String logic = genLogicCode(level);
		String replace = genLogicCode(level + 1);
		for (IRow row : rows) {
			String code = (String) row.get(logicCodeKey);
			if (level > 0 && !code.endsWith(logic)) {
				irow.add(row);
			} else {
				TreeNode node = new TreeNode(row);

				StringBuilder _code = new StringBuilder(code);
				_code.replace(code.length() - replace.length(), code.length(), replace);
				TreeNode pnode = nodeMaps.get(_code.toString());
				pnode.addChildren(node);
				nodeMaps.put(code, node);
			}
		}

		tree(irow, nodeMaps, logicCodeKey, --level);
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
