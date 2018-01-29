package com.dev.huining.soft.web.zfire.utils;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.JavaType;

import java.util.ArrayList;
import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-8-10
 * Time: 下午11:25
 */
public class JsonUtils {
	private static final ObjectMapper objectMapper;

	static {
		objectMapper = new ObjectMapper();
	}


	public static String formatJSONObj(Object jsonObject) {
		if (jsonObject == null) return null;
		try {
			return objectMapper.writeValueAsString(jsonObject);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static <T> T parseJSONObj(String jsonString, JavaType javaType) {
		if (StringUtils.isBlank(jsonString)) return null;
		try {
			return (T)objectMapper.readValue(jsonString, javaType);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static <T> T parseJSONObj(String jsonString, Class<T> type) {
		if (StringUtils.isBlank(jsonString)) return null;
		try {
//			objectMapper.configure(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			return objectMapper.readValue(jsonString, type);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static <T> List<T> parseJSONObjs(String jsonString, Class<T> type) {
		if (StringUtils.isBlank(jsonString)) return null;
		List<T> list = new ArrayList<T>();
		@SuppressWarnings("unchecked")
		List<Object> ncs = JsonUtils.parseJSONObj(jsonString, List.class);
		if (ncs != null && ncs.size() > 0) {
			for (Object nc : ncs) {
				T item = JsonUtils.parseJSONObj(JsonUtils.formatJSONObj(nc), type);
				if (item != null)
					list.add(item);
			}
		}
		return list;
	}
}
