package com.github.rapid.security.common.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.lang.reflect.Field;
import java.net.URLDecoder;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;



public class EntityUtils {
	public static <T> void setCreatAndUpdatInfo(T entity) {
		setCreateInfo(entity);
		setUpdatedInfo(entity);
	}

	public static <T> void setCreateInfo(T entity){
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		String hostIp = "";
		String name = "";
		String id = "";
		if(request!=null) {
			hostIp = String.valueOf(request.getHeader("userHost"));
			name = String.valueOf(request.getHeader("userName"));
			name = URLDecoder.decode(name);
			id = String.valueOf(request.getHeader("userId"));
		}
		// 默认属性
		String[] fields = {"crtName","crtUser","crtHost","crtTime"};
		Field field = ReflectionUtils.getAccessibleField(entity, "crtTime");
		// 默认值
		Object [] value = null;
		if(field!=null&&field.getType().equals(Date.class)){
			value = new Object []{name,id,hostIp,new Date()};
		}
		// 填充默认属性值
		setDefaultValues(entity, fields, value);
	}

	public static <T> void setUpdatedInfo(T entity){
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		String hostIp = "";
		String name = "";
		String id = "";
		if(request!=null) {
			hostIp = String.valueOf(request.getHeader("userHost"));
			name = String.valueOf(request.getHeader("userName"));
			name = URLDecoder.decode(name);
			id = String.valueOf(request.getHeader("userId"));
		}
		// 默认属性
		String[] fields = {"updName","updUser","updHost","updTime"};
		Field field = ReflectionUtils.getAccessibleField(entity, "updTime");
		Object [] value = null;
		if(field!=null&&field.getType().equals(Date.class)){
			value = new Object []{name,id,hostIp,new Date()};
		}
		// 填充默认属性值
		setDefaultValues(entity, fields, value);
	}

	private static <T> void setDefaultValues(T entity, String[] fields, Object[] value) {
		for(int i=0;i<fields.length;i++){
			String field = fields[i];
			if(ReflectionUtils.hasField(entity, field)){
				ReflectionUtils.invokeSetter(entity, field, value[i]);
			}
		}
	}

	public static <T> boolean isPKNotNull(T entity,String field){
		if(!ReflectionUtils.hasField(entity, field)) {
			return false;
		}
		Object value = ReflectionUtils.getFieldValue(entity, field);
		return value!=null&&!"".equals(value);
	}
}
