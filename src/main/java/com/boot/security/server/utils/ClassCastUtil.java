package com.boot.security.server.utils;

import java.lang.reflect.Field;
import java.util.Map;

/**
* @author HF
* @version 创建时间：2019年10月23日 下午5:34:36
* 类说明
*/
public class ClassCastUtil {

	/**
	 * 利用反射将map集合封装成bean对象
	 * 
	 * @param params
	 * @param clazz
	 * @return
	 */
	public static <T> T mapToBean(Map<String, Object> map, Class<?> clazz) throws Exception {
		Object obj = clazz.newInstance();
		if (map != null && !map.isEmpty() && map.size() > 0) {
			for (Map.Entry<String, Object> entry : map.entrySet()) {
				String propertyName = entry.getKey(); 	// 属性名
				Object value = entry.getValue();		// 属性值
				String setMethodName = "set" + propertyName.substring(0, 1).toUpperCase() + propertyName.substring(1);
				Field field = getClassField(clazz, propertyName);	//获取和map的key匹配的属性名称
				if (field == null){
					continue;
				}
				Class<?> fieldTypeClass = field.getType();
				value = convertValType(value, fieldTypeClass);
				try {
					clazz.getMethod(setMethodName, field.getType()).invoke(obj, value);
				} catch (NoSuchMethodException e) {
					e.printStackTrace();
				}
			}
		}
		return (T) obj;
	}

	/**
	 * 根据给定对象类匹配对象中的特定字段
	 * @param clazz
	 * @param fieldName
	 * @return
	 */
	private static Field getClassField(Class<?> clazz, String fieldName) {
		if (Object.class.getName().equals(clazz.getName())) {
			return null;
		}
		Field[] declaredFields = clazz.getDeclaredFields();
		for (Field field : declaredFields) {
			if (field.getName().equals(fieldName)) {
				return field;
			}
		}
		Class<?> superClass = clazz.getSuperclass();	//如果该类还有父类，将父类对象中的字段也取出
		if (superClass != null) {						//递归获取
			return getClassField(superClass, fieldName);
		}
		return null;
	}

	/**
	 * 将map的value值转为实体类中字段类型匹配的方法
	 * @param value
	 * @param fieldTypeClass
	 * @return
	 */
	private static Object convertValType(Object value, Class<?> fieldTypeClass) {
		Object retVal = null;
		
		if (Long.class.getName().equals(fieldTypeClass.getName())
				|| long.class.getName().equals(fieldTypeClass.getName())) {
			retVal =  value == null ? null:Long.parseLong(value.toString());
		} else if (Integer.class.getName().equals(fieldTypeClass.getName())
				|| int.class.getName().equals(fieldTypeClass.getName())) {
			retVal =  value == null ? null:value == null ? null:Integer.parseInt(value.toString());
		} else if (Float.class.getName().equals(fieldTypeClass.getName())
				|| float.class.getName().equals(fieldTypeClass.getName())) {
			retVal =  value == null ? null:Float.parseFloat(value.toString());
		} else if (Double.class.getName().equals(fieldTypeClass.getName())
				|| double.class.getName().equals(fieldTypeClass.getName())) {
			retVal =  value == null ? null:Double.parseDouble(value.toString());
		} else {
			retVal =  value == null ? null:value;
		}
		return retVal;
	}

}
