package com.dev.huining.soft.web.zfire.filter;


import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import org.apache.commons.lang.StringUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;


public class SessionFilter implements Filter {

	/**
	 * 未登录或登录超时 登录页面的URL
	 */
	private String redirectURL;
	/**
	 * 不需要拦截的请求列表 *
	 */
	private List<String> notCheckURLList;

	/**
	 * UC白名单列表
	 */
	private Pattern excloudPattern;

	public SessionFilter() {
		redirectURL = null;
		notCheckURLList = new ArrayList<String>();
	}

	public void init(FilterConfig afc_FilterConfig) throws ServletException {
		if (afc_FilterConfig == null) return;
		redirectURL = afc_FilterConfig.getInitParameter("redirectURL");
		String ls_URLExclued = afc_FilterConfig.getInitParameter("excludedCheckURLList");
		String excloudRegex = afc_FilterConfig.getInitParameter("excloudRegex");
		if (ls_URLExclued != null) {
			notCheckURLList.clear();
			notCheckURLList = CommonUtils.stringToList(ls_URLExclued);
		}

		if (StringUtils.isNotBlank(excloudRegex)) {
			excloudPattern = Pattern.compile(excloudRegex);
		}
	}

	public void doFilter(ServletRequest servletRequest,
						 ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		boolean sessionCheckPassed = checkRequestURIInNotFilterList(request);
		if (!sessionCheckPassed) {
			// 判断session超时
			if (request.getSession().getAttribute("user") == null) {
				this.doMyOperater(request, response);
				return;
			}
		}
		filterChain.doFilter(request, response);
	}

	/**
	 * @param request
	 * @param response
	 * @return void
	 * @throws
	 * @Title: session 超时的处理方法
	 */
	public void doMyOperater(HttpServletRequest request,
							 HttpServletResponse response) throws IOException {
		String contentPath = request.getContextPath();
		// 如果是Ajax请求，则将请求的信息设为超时
		if (request.getHeader("x-requested-with") != null
				&& request.getHeader("x-requested-with").equalsIgnoreCase(
				"XMLHttpRequest")) {
			response.addHeader("sessionstatus", "timeout");
		} else {
			/* 普通http请求session超时的处理 */
			response.sendRedirect(contentPath + redirectURL);
		}
	}

	public void destroy() {
		notCheckURLList.clear();
	}

	/**
	 * @param request
	 * @return boolean
	 * @throws
	 * @Title: 不需要拦截的请求
	 */
	private boolean checkRequestURIInNotFilterList(HttpServletRequest request) {
		String url = request.getServletPath();
		if (request.getPathInfo() != null)
			url = (new StringBuilder(url)).append(request.getPathInfo()).toString();

		boolean isInExcloud = false;
		if (excloudPattern != null) {
			String ucname = request.getParameter("ucname");
			if (StringUtils.isNotBlank(ucname))
				isInExcloud = excloudPattern.matcher(ucname).matches();
		}
		if (isInExcloud)
			return isInExcloud;
		else
			return notCheckURLList.contains(url);
	}
}
