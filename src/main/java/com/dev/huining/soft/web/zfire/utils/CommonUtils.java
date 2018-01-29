package com.dev.huining.soft.web.zfire.utils;

import com.dev.huining.soft.web.zfire.dto.Parameter;
import org.apache.commons.lang.StringUtils;
import org.springframework.util.Assert;

import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * User: yu_xinling
 * Date: 13-9-7
 * Time: 上午11:12
 */
public class CommonUtils {
	private static char hexChar[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

	public static String uuid() {
		UUID uuid = UUID.randomUUID();
		String id = uuid.toString().replaceAll("-", "");
		return id;
	}

	public static List<String> stringToList(String inValue) {
		String[] strs = stringToArrayByComma(inValue);
		return Arrays.asList(strs);
	}

	/**
	 * @param inValue
	 * @return String[]
	 * @Title: stringToArray
	 * @Description: 将以逗号分割的字符串转换成数组
	 */
	public static String[] stringToArrayByComma(String inValue) {
		if (StringUtils.isBlank(inValue))
			return new String[]{};
		inValue = trimStringComma(inValue);
		String[] strArray = inValue.split(",");
		return strArray;
	}

	/**
	 * @param inString
	 * @return String
	 * @Title: 修剪字符串末尾的逗号
	 */
	public static String trimStringComma(String inString) {
		if (StringUtils.isBlank(inString)) return "";
		if (inString.endsWith(","))
			inString = inString.substring(0, inString.length() - 1);
		return inString;
	}

	public static int parserToInt(Object value) {
		if (value == null) return 0;
		String val = value.toString();
		Assert.isTrue(StringUtils.isNumeric(val), val + " is not a number");
		return Integer.valueOf(val);
	}

	public static Parameter getJsonParameters(String jsonString) {
		Parameter params = new Parameter();
		if (StringUtils.isBlank(jsonString)) return params;

		Map<String, Object> pageParams = JsonUtils.parseJSONObj(jsonString, Map.class);
		for (Map.Entry<String, Object> param : pageParams.entrySet()) {
			params.setProperty(param.getKey(), param.getValue());
		}
		return params;
	}

	public static String fieldProperty(String field) {
		if (StringUtils.isBlank(field)) return field;
		String fieldTemp = field.toLowerCase();

		StringBuffer property = new StringBuffer();

		boolean _Flag = false;
		for (int i = 0; i < fieldTemp.length(); i++) {
			if (fieldTemp.charAt(i) == 95) {
				_Flag = true;
				continue;
			}

			char c = fieldTemp.charAt(i);
			if (_Flag) c = (char) (c - 32);
			property.append(c);
			_Flag = false;
		}
		return property.toString();
	}


	/**
	 * 获取WEB-INF路径
	 *
	 * @return
	 */
	public static String getWEBINF() {
		String strRealPath = Thread.currentThread().getContextClassLoader().getResource("/").getFile();
		File objFile = new File(strRealPath);
		strRealPath = objFile.getParent() + "\\";
		return strRealPath;
	}

	/**
	 * 获取webRoot的路径
	 *
	 * @return
	 */
	public static String getWebRootPath() {
		String strRealPath = Thread.currentThread().getContextClassLoader().getResource("/").getFile();
		File objFile = new File(strRealPath);
		String webRootPath = objFile.getParentFile().getParent() + "\\";
		return webRootPath;
	}

	public static String fullPathFile(String path, String fileName) {
		Assert.hasLength(path, "path is required.");
		Assert.hasLength(fileName, "fileName is required.");

		File file = new File(path);
		if (!file.exists()) file.mkdirs();

		if (path.endsWith("\\")) {
			return path + fileName;
		} else
			return path + "\\" + fileName;
	}

	public static String md5(String s) {
		byte[] b = s.getBytes();
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(b);
			byte[] b2 = md.digest();
			char str[] = new char[b2.length << 1];
			int len = 0;
			for (int i = 0; i < b2.length; i++) {
				byte val = b2[i];
				str[len++] = hexChar[(val >>> 4) & 0xf];
				str[len++] = hexChar[val & 0xf];
			}
			return new String(str);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}


	public static void main(String[] args) {
		System.out.print(uuid());
//		System.out.print(fieldProperty("DDDFafsd"));
	}
}
