package com.dev.huining.soft.web.zfire.utils;


import java.lang.reflect.Field;

/**
 * @Description: TODO
 * @author 余阳宁(YuYangning)
 * @date 2011-12-11 上午10:22:04
 */
public class EnumUtils {

	/**
	 * 从指定的枚举类中根据名称匹配指定值枚举实例
	 * 
	 * @param <T>
	 * @param enumClass
	 * @return
	 */
	public static <T extends Enum<T>> T enumFromConstantName(
			Class<T> enumClass, String propValue) {
		String constantName = enumConstantName(propValue);
		T[] enumConstants = enumClass.getEnumConstants();
		for (T t : enumConstants) {
			if (((Enum<?>) t).name().equals(constantName)) {
				return t;
			}
		}
		return null;
	}

	@SuppressWarnings("rawtypes")
	public static String enumConstantName(String propValue) {
//		Class clazz = ConstantUtils.class;
//		try {
//			Object obj = clazz.newInstance();
//			Field[] fields = clazz.getDeclaredFields();
//			for (Field field : fields) {
//				String fieldName = field.getName();
//				if (fieldName.startsWith("GCZT")){
//					Object constantPropValue;
//					constantPropValue = clazz.getDeclaredField(field.getName()).get(obj);
//					if (ObjectUtils.equals(constantPropValue, propValue)) return fieldName;
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return "";
	}

	public static void main(String[] args) {
//		enumFromConstantName(CheckprojectByState.class, "工程已提交");
	}
}
