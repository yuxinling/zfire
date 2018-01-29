package com.dev.huining.soft.web.zfire.utils;

import com.dev.huining.soft.web.zfire.dto.Parameter;
import org.apache.commons.lang.StringUtils;
import org.springframework.util.Assert;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-8-10
 * Time: 下午11:25
 */
public class BeanUtils {
	public static Object fillBeanValue(Map<String, Object> values, Object bean) {

		return fillBeanValue(values, bean, new String[]{});
	}

	public static Object fillBeanValue(Map<String, Object> values, Object bean, String[] ignores) {
		Assert.notNull(bean, "bean is null ... ");
		Assert.notNull(ignores, "ignores not null ...");
		Assert.notNull(values, "values not null ...");

//        BeanInfo beanInfo = Introspector.getBeanInfo(bean.getClass());
//        PropertyDescriptor[ ] pds = beanInfo.getPropertyDescriptors( );

		List<String> ignorePorperties = Arrays.asList(ignores);
		//对象中所声明的方法
		Method[] methods = bean.getClass().getDeclaredMethods();
		try {
			for (int i = 0; i < methods.length; i++) {
				String methodName = methods[i].getName();
				//循环遍历所有的set方法
				if (methodName.startsWith("set")) {
					//获取属性的名称
					String propertyName = changeFirstCharLower(methodName.substring(3, methodName.length()));
					//忽略的属性
					if (ignorePorperties.contains(propertyName)) continue;
					//没有值传入
//                    Object vObject  = null;
//                    Object [] vObjects = (Object[]) values.get(propertyName);
//                    if(vObjects == null ||  vObjects.length == 0) continue;
//                    else vObject = vObjects[0];

					Object vObject = values.get(propertyName);
					if (vObject == null) continue;
					//获取方法的参数 个数，如果不为一个，忽略
					Class[] parameterTypes = methods[i].getParameterTypes();
					if (parameterTypes.length != 1) continue;

					System.out.println(parameterTypes[0].getName());

					if (parameterTypes[0].isInstance(vObject))
						methods[i].invoke(bean, new Object[]{vObject});
					else {
						Class typeClass = parameterTypes[0];
						baseTypeData(bean, methods[i], typeClass, vObject);
					}

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	public static void baseTypeData(Object bean, Method method, Class clazz, Object value) throws Exception {
		Assert.notNull(bean, "bean is null ....");
		Assert.notNull(value, "value is null ....");
		//"long-int-byte-short-double-float-boolean";
		String name = clazz.getName();
		if ("byte".equals(name) || "java.lang.Byte".equals(name)) {
			Class _clazz = Class.forName("java.lang.Byte");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		} else if ("int".equals(name) || "java.lang.Integer".equals(name)) {
			Class _clazz = Class.forName("java.lang.Integer");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		} else if ("short".equals(name) || "java.lang.Short".equals(name)) {
			Class _clazz = Class.forName("java.lang.Short");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		} else if ("long".equals(name) || "java.lang.Long".equals(name)) {
			Class _clazz = Class.forName("java.lang.Long");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		} else if ("float".equals(name) || "java.lang.Float".equals(name)) {
			Class _clazz = Class.forName("java.lang.Float");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		} else if ("double".equals(name) || "java.lang.Double".equals(name)) {
			Class _clazz = Class.forName("java.lang.Double");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		} else if ("boolean".equals(name) || "java.lang.Boolean".equals(name)) {
			Class _clazz = Class.forName("java.lang.Boolean");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		} else if ("java.lang.String".equals(name)) {
			Class _clazz = Class.forName("java.lang.String");
			method.invoke(bean, new Object[]{parserValue(_clazz, value)});
		}
	}

	public static Object parserValue(Class clazz, Object value) {
		Object result = null;
		Assert.notNull(value, "value is null ....");
		try {
			Method method = null;
			method = clazz.getMethod("valueOf", new Class[]{value.getClass()});
			result = method.invoke(null, value);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static void main(String[] agrs) {
		Test test = new Test();
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("id", "123");
		parameters.put("bigId", "234");
		parameters.put("byteValue", "2");
		parameters.put("bigByteValue", "16");
		parameters.put("shortValue", "32");
		parameters.put("bigShortValue", "23");
		parameters.put("testString", "fffffffffffffff");

		BeanUtils.fillBeanValue(parameters, test, new String[]{});
		System.out.print(test);
//            BeanUtils.fillBeanValue(new HashMap<String, Object>(), null, new String[]{});
	}

	public static Object fillBeanValue(Parameter parameter, Object bean) {
		return fillBeanValue(parameter, bean,new String[]{});
	}

	public static Object fillBeanValue(Parameter parameter, Object bean, String[] ignores) {
		Assert.notNull(bean, "bean is null ... ");
		Assert.notNull(ignores, "ignores not null ...");
		Assert.notNull(parameter, "parameter not null ...");
		return fillBeanValue(parameter.getProperties(), bean, ignores);
	}

	/**
	 * @param inString
	 * @return String
	 * @Title: 将字符串的首字母小写
	 * @Description: 将字符串的首字母小写 ：
	 * 根据第二个字母决定，如果第二个为小写，则第一个字母小写，如果第二个字母大写，则第一个字母不变
	 */
	public static String changeFirstCharLower(String inString) {
		if (StringUtils.isBlank(inString)) return "";
		char[] chars = inString.toCharArray();
		if (chars.length >= 2) {
			if (chars[0] >= 65 && chars[0] <= 90) {
				if (chars[1] >= 97 && chars[1] <= 122)
					chars[0] = (char) (chars[0] + 32);
			}
		}
		return new String(chars);
	}

	static class Test {
		private int id;
		private Integer bigId;

		private byte byteValue;
		private Byte bigByteValue;

		private short shortValue;
		private Short bigShortValue;

		private String testString;

		String getTestString() {
			return testString;
		}

		void setTestString(String testString) {
			this.testString = testString;
		}

		Short getBigShortValue() {
			return bigShortValue;
		}

		void setBigShortValue(Short bigShortValue) {
			this.bigShortValue = bigShortValue;
		}

		short getShortValue() {
			return shortValue;
		}

		void setShortValue(short shortValue) {
			this.shortValue = shortValue;
		}

		Byte getBigByteValue() {
			return bigByteValue;
		}

		void setBigByteValue(Byte bigByteValue) {
			this.bigByteValue = bigByteValue;
		}

		byte getByteValue() {
			return byteValue;
		}

		void setByteValue(byte byteValue) {
			this.byteValue = byteValue;
		}

		Integer getBigId() {
			return bigId;
		}

		void setBigId(Integer bigId) {
			this.bigId = bigId;
		}

		int getId() {
			return id;
		}

		void setId(int id) {
			this.id = id;
		}


		@Override
		public String toString() {
			return "Test{" +
					"id=" + id +
					", bigId=" + bigId +
					", byteValue=" + byteValue +
					", bigByteValue=" + bigByteValue +
					", shortValue=" + shortValue +
					", bigShortValue=" + bigShortValue +
					", testString='" + testString + '\'' +
					'}';
		}
	}
}
