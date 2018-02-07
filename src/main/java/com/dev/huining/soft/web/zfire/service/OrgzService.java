package com.dev.huining.soft.web.zfire.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.dev.huining.soft.web.zfire.dao.HibernateBaseDAO;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.base.IRow;
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
		Map<String,IRow> rowMaps = new HashMap<String,IRow>();
		if(rowSet != null){
			List<IRow> irows = rowSet.getRows();
			if(irows != null){
				for (IRow row : irows) {
					String code = (String) row.get("code");
					row.put("nodeId", code);
					row.put("style", "file");
					
					if(code == null) row.put("pnodeId", "000000");
					rowMaps.put(code, row);
					
					if("000000".equals(code)) continue;
					if(code.endsWith("0000")){
						rowMaps.get("000000").put("style", "folder");
						row.put("pnodeId", "000000");
					}else if(code.endsWith("00")){
						String pnodeId = code.subSequence(0, 2)+"0000";
						rowMaps.get(pnodeId).put("style", "folder");
						row.put("pnodeId", code.subSequence(0, 2)+"0000");
					}else{
						String pnodeId = code.subSequence(0, 4)+"00";
						rowMaps.get(pnodeId).put("style", "folder");
						row.put("pnodeId", pnodeId);
					}
				}
			}
		}
		
		return result;
	}
	

	

}
