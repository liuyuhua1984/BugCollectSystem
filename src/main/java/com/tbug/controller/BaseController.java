package com.tbug.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * create by admin create 2017/9/29 TODO:控制器基础类
 */
public abstract class BaseController {
	protected Logger logger = LoggerFactory.getLogger(this.getClass());

	
	/**
	 * getBaseUrl:(). <br/>
	 * TODO().<br/>
	 * 最基本的URL
	 * 
	 * @author lyh
	 * @param request
	 * @return
	 */
	protected String getBaseUrl(HttpServletRequest request) {
		String requestPath = request.getContextPath();
		String redirect_uri = request.getRequestURL().toString();
		int index = redirect_uri.indexOf(requestPath);
		if (index <= 0) {
			return redirect_uri;
		}
		String subRedirectUri = redirect_uri.substring(0, index + requestPath.length());
		return subRedirectUri;
	}
	
	/**
	 * getRequestUrl:(). <br/>
	 * TODO().<br/>
	 * 不带任何参数的url
	 * 
	 * @author lyh
	 * @param request
	 * @return
	 */
	protected String getRequestUrl(HttpServletRequest request) {
		// String requestPath = request.getContextPath();
		String redirect_uri = request.getRequestURL().toString();
		int index = redirect_uri.indexOf("?");
		if (index <= 0) {
			return redirect_uri;
		}
		String subRedirectUri = redirect_uri.substring(0, index);
		return subRedirectUri;
	}
	
	/**
	 * 获取访问者IP
	 * 
	 * 在一般情况下使用Request.getRemoteAddr()即可，但是经过nginx等反向代理软件后，这个方法会失效。
	 * 
	 * 本方法先从Header中获取X-Real-IP，如果不存在再从X-Forwarded-For获得第一个IP(用,分割)， 如果还不存在则调用Request .getRemoteAddr()。
	 * 
	 * @param request
	 * @return
	 */
	protected String getIpAddr(HttpServletRequest request) throws Exception {
		String ip = request.getHeader("X-Real-IP");
		if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
			return ip;
		}
		
		
		ip = request.getHeader("X-Forwarded-For");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		
		if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
			// 多次反向代理后会有多个IP值，第一个为真实IP。
			int index = ip.indexOf(',');
			if (index != -1) {
				return ip.substring(0, index);
			} else {
				return ip;
			}
		} else {
			return request.getRemoteAddr();
		}
	}
	
	
	/** 
	 * isPost:(). <br/> 
	 * TODO().<br/> 
	 *post方式提交
	 * @author lyh 
	 * @param request
	 * @return
	 * @throws Exception 
	 */  
	protected boolean isPost(HttpServletRequest request){
		String postString = request.getMethod().toLowerCase().trim();
		
		if (postString.equals("post")){
			return true;
		}
		
		return false;
	}
	
	/** 
	 * isGet:(). <br/> 
	 * TODO().<br/> 
	 * get方式提交
	 * @author lyh 
	 * @param request
	 * @return
	 * @throws Exception 
	 */  
	protected boolean isGet(HttpServletRequest request){
		String postString = request.getMethod().toLowerCase().trim();
		if (postString.equals("get")){
			return true;
		}
		
		return false;
	}
}
