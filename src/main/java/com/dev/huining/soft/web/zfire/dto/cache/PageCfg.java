package com.dev.huining.soft.web.zfire.dto.cache;

import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.pojo.entity.SysPage;

import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-9-22
 * Time: 下午8:39
 */
public class PageCfg extends SysPage {
	private List<String> ucList;
	private String ucs;
	private Parameter defaultParams;

	public List<String> getUcList() {
		return ucList;
	}

	public void setUcList(List<String> ucList) {
		this.ucList = ucList;
	}

	public String getUcs() {
		return ucs;
	}

	public void setUcs(String ucs) {
		this.ucs = ucs;
	}

	public Parameter getDefaultParams() {
		return defaultParams;
	}

	public void setDefaultParams(Parameter defaultParams) {
		this.defaultParams = defaultParams;
	}
}
