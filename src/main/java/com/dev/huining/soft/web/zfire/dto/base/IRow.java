package com.dev.huining.soft.web.zfire.dto.base;

import com.dev.huining.soft.web.zfire.utils.JsonUtils;

import java.util.HashMap;

/**
 * User: yu_xinling
 * Date: 13-9-26
 * Time: 上午12:23
 */
@SuppressWarnings({ "unchecked", "rawtypes", "serial" })
public class IRow extends HashMap {
	@Override
	public String toString() {

		if (!this.containsKey("json")) {
			this.put("json", JsonUtils.formatJSONObj(this));
		}
		return (String) this.get("json");
	}
}
