package com.dev.huining.soft.web.zfire.pojo.entity;

// Generated 2013-9-23 20:27:50 by Hibernate Tools 3.4.0.CR1

/**
 * SysOrgz generated by hbm2java
 */
public class SysOrgz implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	
	
	private String id;
	private String code;
	private String oname;
	private String remark;
	private Integer enable;

	public SysOrgz() {
	}

	public SysOrgz(String id) {
		this.id = id;
	}

	public SysOrgz(String id, String oname, String code, String remark, int enable,
			String porgzId) {
		this.id = id;
		this.oname = oname;
		this.code = code;
		this.remark = remark;
		this.enable = enable;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOname() {
		return this.oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getEnable() {
		return this.enable;
	}

	public void setEnable(Integer enable) {
		this.enable = enable;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
