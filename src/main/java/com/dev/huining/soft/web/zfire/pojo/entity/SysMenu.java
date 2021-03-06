package com.dev.huining.soft.web.zfire.pojo.entity;

// Generated 2013-9-23 20:27:50 by Hibernate Tools 3.4.0.CR1

/**
 * SysMenu generated by hbm2java
 */
public class SysMenu implements java.io.Serializable {

	private String id;
	private String sys;
	private String code;
	private String name;
	private String type;
	private String hreflink;
	private String pid;
	private String params;
	private Integer refreshFlag;
	private Integer sort;

	public SysMenu() {
	}

	public SysMenu(String id) {
		this.id = id;
	}

	public SysMenu(String id, String sys, String code, String name,
			String type, String hreflink, String pid, String params,
			Integer refreshFlag,Integer sort) {
		this.id = id;
		this.sys = sys;
		this.code = code;
		this.name = name;
		this.type = type;
		this.hreflink = hreflink;
		this.pid = pid;
		this.params = params;
		this.refreshFlag = refreshFlag;
		this.sort = sort;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSys() {
		return this.sys;
	}

	public void setSys(String sys) {
		this.sys = sys;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getHreflink() {
		return this.hreflink;
	}

	public void setHreflink(String hreflink) {
		this.hreflink = hreflink;
	}

	public String getPid() {
		return this.pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getParams() {
		return this.params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public Integer getRefreshFlag() {
		return this.refreshFlag;
	}

	public void setRefreshFlag(Integer refreshFlag) {
		this.refreshFlag = refreshFlag;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	

}
