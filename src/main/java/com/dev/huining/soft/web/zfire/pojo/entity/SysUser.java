package com.dev.huining.soft.web.zfire.pojo.entity;

// Generated 2013-9-23 20:27:50 by Hibernate Tools 3.4.0.CR1

/**
 * SysUser generated by hbm2java
 */
public class SysUser implements java.io.Serializable {

	private String id;
	private String username;
	private String password;
	private String cname;
	private Integer isuse;
	private Integer iscan;
	private String orgzCode;
	private Integer delFlag;

	public SysUser() {
	}

	public SysUser(String id) {
		this.id = id;
	}

	public SysUser(String id, String username, String password, String cname,
			Integer isuse, Integer iscan, String orgzCode, Integer delFlag) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.cname = cname;
		this.isuse = isuse;
		this.iscan = iscan;
		this.orgzCode = orgzCode;
		this.delFlag = delFlag;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Integer getIsuse() {
		return this.isuse;
	}

	public void setIsuse(Integer isuse) {
		this.isuse = isuse;
	}

	public Integer getIscan() {
		return this.iscan;
	}

	public void setIscan(Integer iscan) {
		this.iscan = iscan;
	}

	public String getOrgzCode() {
		return this.orgzCode;
	}

	public void setOrgzCode(String orgzCode) {
		this.orgzCode = orgzCode;
	}

	public Integer getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}

}
