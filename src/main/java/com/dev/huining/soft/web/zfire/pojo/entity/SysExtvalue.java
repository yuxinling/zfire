package com.dev.huining.soft.web.zfire.pojo.entity;

// Generated 2013-9-23 20:27:50 by Hibernate Tools 3.4.0.CR1

/**
 * SysExtvalue generated by hbm2java
 */
public class SysExtvalue implements java.io.Serializable {

	private String id;
	private String dkey;
	private String dvalue;
	private Character iscan;
	private String relId;
	private Integer type;

	public SysExtvalue() {
	}

	public SysExtvalue(String id) {
		this.id = id;
	}

	public SysExtvalue(String id, String dkey, String dvalue, Character iscan,
			String relId, Integer type) {
		this.id = id;
		this.dkey = dkey;
		this.dvalue = dvalue;
		this.iscan = iscan;
		this.relId = relId;
		this.type = type;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDkey() {
		return this.dkey;
	}

	public void setDkey(String dkey) {
		this.dkey = dkey;
	}

	public String getDvalue() {
		return this.dvalue;
	}

	public void setDvalue(String dvalue) {
		this.dvalue = dvalue;
	}

	public Character getIscan() {
		return this.iscan;
	}

	public void setIscan(Character iscan) {
		this.iscan = iscan;
	}

	public String getRelId() {
		return this.relId;
	}

	public void setRelId(String relId) {
		this.relId = relId;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

}
