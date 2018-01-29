package com.dev.huining.soft.web.zfire.service;

import com.dev.huining.soft.web.zfire.dao.HibernateBaseDAO;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.pojo.entity.SysLayout;
import com.dev.huining.soft.web.zfire.pojo.entity.SysLayoutCase;
import com.dev.huining.soft.web.zfire.pojo.entity.SysLayoutType;
import com.dev.huining.soft.web.zfire.utils.BeanUtils;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-8-11
 * Time: 上午12:22
 */
@Service
public class LayoutService {
	@Resource
	private HibernateBaseDAO hdao;

	public Result addLayout(Parameter params) {
		Result result = new Result();

		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		String lid = (String) paramMaps.get("lid");
		//TODO check lcode unique
		SysLayout layout = null;
		if(StringUtils.isBlank(lid)){
			layout = new SysLayout();
			layout.setId(CommonUtils.uuid());
		}else layout = (SysLayout) this.hdao.get(SysLayout.class, lid);

		BeanUtils.fillBeanValue(paramMaps, layout, new String[]{"id"});
		hdao.saveOrUpdate(layout);
		return result;
	}

	public void deleteLayout(Parameter params) {
		String lid = (String) params.getProperty("lid");
		hdao.deleteByKey(SysLayout.class, lid);
	}

	public void updateLayout(Parameter parameter){
		String lid = (String) parameter.getProperty("lid");
		SysLayout layout = (SysLayout) hdao.get(SysLayout.class, lid);
		BeanUtils.fillBeanValue(parameter, layout);
		hdao.saveOrUpdate(layout);
	}

	public List<SysLayout> queryLayouts() {
		List<SysLayout> layouts = hdao.find("from  SysLayout o");
		return layouts;
	}

	public Result addLayoutType(Parameter params) {
		Result result = new Result();
		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		String lid = (String) paramMaps.get("lid");
		Assert.hasLength(lid, "layout id  is required.");

		String ltId = (String) paramMaps.get("ltId");
		SysLayoutType layoutType = null;
		if(StringUtils.isBlank(ltId)){
			layoutType = new SysLayoutType();
			layoutType.setId(CommonUtils.uuid());
		}else layoutType = (SysLayoutType) this.hdao.get(SysLayoutType.class, ltId);

		BeanUtils.fillBeanValue(paramMaps, layoutType, new String[]{"id"});
		hdao.saveOrUpdate(layoutType);

		return result;
	}

	public void deleteLayoutType(Parameter parameter){
		String ltid = (String) parameter.getProperty("ltid");
		hdao.deleteByKey(SysLayoutType.class, ltid);
	}

	public void updateLayoutType(Parameter parameter){
		String ltid = (String) parameter.getProperty("ltid");
		SysLayoutType layouttype = (SysLayoutType) hdao.get(SysLayoutType.class, ltid);
		BeanUtils.fillBeanValue(parameter, layouttype);
		hdao.saveOrUpdate(layouttype);
	}

	public List<SysLayoutType> queryLayoutTypes(String lid) {
		Assert.hasLength(lid, "layout id is required.");
		List<SysLayoutType> layouttypes = hdao.find("from  SysLayoutType o where o.lid = ?", new Object[]{lid});
		return layouttypes;
	}

	public Result addLayoutCase(Parameter params) {
		Result result = new Result();
		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		String ltId = (String) paramMaps.get("ltid");
		String pageId = (String) paramMaps.get("pageid");
		Assert.hasLength(ltId, "layoutType id  is required.");
		Assert.hasLength(pageId, "page id  is required.");

		String lcId = (String) paramMaps.get("lcid");
		SysLayoutCase layoutCase = null;
		if(StringUtils.isBlank(lcId)){
			layoutCase = new SysLayoutCase();
			layoutCase.setId(CommonUtils.uuid());
		}else layoutCase = (SysLayoutCase) this.hdao.get(SysLayoutCase.class, ltId);

		BeanUtils.fillBeanValue(paramMaps, layoutCase, new String[]{"id"});
		hdao.saveOrUpdate(layoutCase);

		return result;
	}

	public void deleteLayoutCase(Parameter parameter){
		String lcid = (String) parameter.getProperty("lcid");
		hdao.deleteByKey(SysLayoutCase.class, lcid);
	}

	public void updateLayoutCase(Parameter parameter){
		String lcid = (String) parameter.getProperty("lcid");
		SysLayoutCase layoutcase = (SysLayoutCase) hdao.get(SysLayoutCase.class, lcid);
		BeanUtils.fillBeanValue(parameter, layoutcase);
		hdao.saveOrUpdate(layoutcase);

	}

	public List<SysLayoutCase> queryLayoutCases(String ltid){
		Assert.hasLength(ltid, "layoutType id is required.");
		List<SysLayoutCase> layoutcases = hdao.find("from  SysLayoutCase o where o.ltid = ? order by o.lorder", new Object[]{ltid});
		return layoutcases;
	}
}
