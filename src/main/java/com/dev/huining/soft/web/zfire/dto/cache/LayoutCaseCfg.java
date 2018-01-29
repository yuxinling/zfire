package com.dev.huining.soft.web.zfire.dto.cache;

import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.pojo.entity.SysLayoutCase;

/**
 * User: yu_xinling
 * Date: 13-9-22
 * Time: 下午8:41
 */
public class LayoutCaseCfg extends SysLayoutCase {
	private Parameter defaultParams;

	public Parameter getDefaultParams() {
		return defaultParams;
	}

	public void setDefaultParams(Parameter defaultParams) {
		this.defaultParams = defaultParams;
	}
}
