package com.dev.huining.soft.web.zfire.pojo.entity;

// Generated 2013-9-23 20:27:50 by Hibernate Tools 3.4.0.CR1

/**
 * SysRole generated by hbm2java
 */
public class SysRole implements java.io.Serializable {

	private String id;
	private String rname;
	private String remark;

	public SysRole() {
	}

	public SysRole(String id) {
		this.id = id;
	}

	public SysRole(String id, String rname, String remark) {
		this.id = id;
		this.rname = rname;
		this.remark = remark;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRname() {
		return this.rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
