package com.dev.huining.soft.web.zfire.service;

import com.dev.huining.soft.web.zfire.dao.HibernateBaseDAO;
import com.dev.huining.soft.web.zfire.dao.JdbcBaseDao;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.pojo.entity.SysPage;
import com.dev.huining.soft.web.zfire.pojo.entity.SysPageUc;
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
 * Time: 上午12:23
 */
@Service
public class PageService {
	@SuppressWarnings("rawtypes")
	@Resource
	private HibernateBaseDAO hdao;
	@Resource
	private JdbcBaseDao jdao;

    //TODO page
	public Result addPages(Parameter params) {
		Result result = new Result();

		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		SysPage page = null;
		String id = (String) paramMaps.get("id");
		if(StringUtils.isNotBlank(id)) {
			page = (SysPage) hdao.get(SysPage.class, id);
			//TODO check page is exist
		}else page = new SysPage();

		BeanUtils.fillBeanValue(paramMaps, page);
//		BeanUtils.fillBeanValue(params, page);
		if (StringUtils.isBlank(page.getId())) {
			page.setId(CommonUtils.uuid());
		}

		this.deletePageUc(page.getId());
		List<String> ucIds = (List<String>) paramMaps.get("ucids");
		if(ucIds != null && ucIds.size() > 0) {
			for (String ucId : ucIds) {
				SysPageUc pageUc = new SysPageUc();
				pageUc.setPageId(page.getId());
				pageUc.setUcId(ucId);
				pageUc.setId(CommonUtils.uuid());
				hdao.save(pageUc);
			}
		}
		hdao.saveOrUpdate(page);
		return result;
	}

	public Result deletePage(Parameter params){
		Result result = new Result();
		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);

		List<String> ids = (List<String>) paramMaps.get("pkValue");
		if(ids != null && ids.size() > 0) {
			String id = ids.get(0);

			this.deletePageUc(id);
			hdao.deleteByKey(SysPage.class, id);
		}
		return result;
	}

	public void updatePage(Parameter parameter){
		String id = (String) parameter.getProperty("pageid");
		SysPage page = (SysPage) hdao.get(SysPage.class, id);
		BeanUtils.fillBeanValue(parameter, page);
		hdao.saveOrUpdate(page);
	}

	public List<SysPage> queryPages() {
		List<SysPage> pages = hdao.find("from SysPage");
		return pages;
	}

	public void deletePageUc(String pageid){
		Assert.hasLength(pageid, "Page id is required.");
		List<SysPageUc> pageUcs = hdao.find("from SysPageUc o where o.pageId = ? ", new Object[]{pageid});
		if (pageUcs != null ) {
			for (SysPageUc pageUc : pageUcs) {
				hdao.delete(pageUc);
			}
		}
	}

	public List<SysPageUc> queryPageUc(String pageid) {
		Assert.hasLength(pageid, "Page id is required.");
		List<SysPageUc> pageUcs = hdao.find("from SysPageUc o where o.pageId = ? ", new Object[]{pageid});
		return pageUcs;
	}




}
