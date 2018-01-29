package com.dev.huining.soft.web.zfire.servlet;



import com.dev.huining.soft.web.zfire.utils.SpringBeanLocator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;


/**
 * 系统缺省启动servlet(如果子系统有额外的初始化要求,可在web.xml增加新的子系统初始化servlet).
 */
@SuppressWarnings("serial")
public class SystemInitServlet extends HttpServlet {

	/**
	 * 初始化.
	 */
	@Override
	public void init() throws ServletException {
		System.out.println("进入初始化...");
		SpringBeanLocator.setServletContext(this.getServletContext());
	}

	/**
	 * 关闭时资源清理.
	 */
	public void destroy() {

	}

	/**
	 * 初始化配置文件根目录.
	 */
	@SuppressWarnings("unused")
	private void initRootConfigPath() {
	}

	/**
	 * 初始化log4j配置(日志输出目录等).
	 */
	public void initLog4j() {

	}

}
