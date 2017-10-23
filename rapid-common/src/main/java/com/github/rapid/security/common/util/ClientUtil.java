package com.github.rapid.security.common.util;

import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public class ClientUtil {
	public static String getClientIp(HttpServletRequest request){
		String ip = request.getHeader("x-forwarded-for");
		if (ip==null||ip.length()==0||"unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip==null||ip.length()==0||"unknown".equalsIgnoreCase(ip)){
			ip = request.getHeader("WL-Proxy-Client-IP");}
		if (ip==null||ip.length()==0||"unknown".equalsIgnoreCase(ip)){
			ip = request.getRemoteAddr();}
		return ip;
	}
}
