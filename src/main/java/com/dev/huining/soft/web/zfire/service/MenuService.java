package com.dev.huining.soft.web.zfire.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.dev.huining.soft.web.zfire.commons.SystemHelper;
import com.dev.huining.soft.web.zfire.dao.HibernateBaseDAO;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.TreeNode;
import com.dev.huining.soft.web.zfire.dto.base.IRow;
import com.dev.huining.soft.web.zfire.dto.base.IRowSet;
import com.dev.huining.soft.web.zfire.pojo.entity.SysMenu;
import com.dev.huining.soft.web.zfire.utils.BeanUtils;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;

/**
 * User: yu_xinling
 * Date: 13-8-11
 * Time: 上午12:24
 */
@Service
@SuppressWarnings({ "rawtypes", "unchecked" })
public class MenuService {
	@Resource
	private HibernateBaseDAO hdao;
	
	@Resource
	private CommonService commonService;
	
	public Result addMenu(Parameter params){
		Result result = new Result();
		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		
		SysMenu menu = new SysMenu();
		BeanUtils.fillBeanValue(paramMaps, menu);
		
		Assert.notNull(menu.getName(), "The menu name is required.");
		Assert.notNull(menu.getCode(), "The menu code is required.");
		Assert.notNull(menu.getHreflink(), "The menu hreflink is required.");
		
		if (StringUtils.isBlank(menu.getId())) {
			menu.setId(CommonUtils.uuid());
		}
		
		hdao.save(menu);
		
		return result;
	}
	
	
	public Result queryMenuTree(Parameter parameter){
		parameter.setProperty("pageflag", 0);
		Result result = commonService.query(parameter);
		
		IRowSet rowSet = (IRowSet) result.getData();
		if(rowSet != null){
			List<TreeNode> nodes = SystemHelper.buildTree(rowSet.getRows(), "id", "pid");
			System.out.println(JsonUtils.formatJSONObj(nodes));
			result.setData(nodes);
		}
		
		return result;
	}
}
