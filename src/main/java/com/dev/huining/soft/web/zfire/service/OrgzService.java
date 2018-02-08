package com.dev.huining.soft.web.zfire.service;

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
import com.dev.huining.soft.web.zfire.dto.base.IRowSet;
import com.dev.huining.soft.web.zfire.pojo.entity.SysOrgz;
import com.dev.huining.soft.web.zfire.utils.BeanUtils;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;

@Service
@SuppressWarnings({ "rawtypes", "unchecked" })
public class OrgzService {
	
	@Resource
	private HibernateBaseDAO hdao;
	
	@Resource
	private CommonService commonService;
	
	
	public Result addOrgz(Parameter parameter) {
		Result result = new Result();
		String data = (String) parameter.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		
		SysOrgz orgz = new SysOrgz();
		BeanUtils.fillBeanValue(paramMaps, orgz);
		
		Assert.notNull(orgz.getCode(), "The org code is required.");
		Assert.notNull(orgz.getOname(), "The org name is required.");
		
		if(orgz.getEnable() == null){
			orgz.setEnable(1);
		}
		
		if (StringUtils.isBlank(orgz.getId())) {
			orgz.setId(CommonUtils.uuid());
		}
		
		hdao.save(orgz);
		return result;
	}
	
	public void updateOrgz(Parameter parameter) {
		String id = (String) parameter.getProperty("orgzId");
		SysOrgz orgz = (SysOrgz) hdao.get(SysOrgz.class, id);
		
		BeanUtils.fillBeanValue(parameter, orgz);
		hdao.saveOrUpdate(orgz);

	}
	
	public Result queryOrgzTree(Parameter parameter){
		parameter.setProperty("pageflag", 0);
		Result result = commonService.query(parameter);
		
		IRowSet rowSet = (IRowSet) result.getData();
		if(rowSet != null){
			List<TreeNode> nodes = SystemHelper.buildTree(rowSet.getRows(), "code", 3);
			System.out.println(JsonUtils.formatJSONObj(nodes));
			result.setData(nodes);
		}
		
		return result;
	}

}
