package com.dev.huining.soft.web.zfire.pojo.entity;

// Generated 2013-9-23 20:27:50 by Hibernate Tools 3.4.0.CR1

/**
 * SysPageUc generated by hbm2java
 */
public class SysPageUc implements java.io.Serializable {

	private String id;
	private String pageId;
	private String ucId;

	public SysPageUc() {
	}

	public SysPageUc(String id) {
		this.id = id;
	}

	public SysPageUc(String id, String pageId, String ucId) {
		this.id = id;
		this.pageId = pageId;
		this.ucId = ucId;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPageId() {
		return this.pageId;
	}

	public void setPageId(String pageId) {
		this.pageId = pageId;
	}

	public String getUcId() {
		return this.ucId;
	}

	public void setUcId(String ucId) {
		this.ucId = ucId;
	}

}
