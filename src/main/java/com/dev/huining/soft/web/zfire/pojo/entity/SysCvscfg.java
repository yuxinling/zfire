package com.dev.huining.soft.web.zfire.pojo.entity;

// Generated 2013-9-23 20:27:50 by Hibernate Tools 3.4.0.CR1

/**
 * SysCvscfg generated by hbm2java
 */
public class SysCvscfg implements java.io.Serializable {

	private String id;
	private String ucId;
	private Integer flag;
	private String property;
	private String field;
	private Integer fieldLen;
	private Integer fieldType;
	private String fieldTypeName;
	private String javaType;
	private Integer inType;
	private Integer resType;
	private String exist;


	public SysCvscfg() {
	}

	public SysCvscfg(String id) {
		this.id = id;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUcId() {
		return this.ucId;
	}

	public void setUcId(String ucId) {
		this.ucId = ucId;
	}

	public Integer getFlag() {
		return this.flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	public String getProperty() {
		return this.property;
	}

	public void setProperty(String property) {
		this.property = property;
	}

	public String getField() {
		return this.field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public Integer getFieldLen() {
		return this.fieldLen;
	}

	public void setFieldLen(Integer fieldLen) {
		this.fieldLen = fieldLen;
	}

	public Integer getFieldType() {
		return this.fieldType;
	}

	public void setFieldType(Integer fieldType) {
		this.fieldType = fieldType;
	}

	public String getJavaType() {
		return this.javaType;
	}

	public void setJavaType(String javaType) {
		this.javaType = javaType;
	}

	public Integer getInType() {
		return this.inType;
	}

	public void setInType(Integer inType) {
		this.inType = inType;
	}

	public Integer getResType() {
		return this.resType;
	}

	public void setResType(Integer resType) {
		this.resType = resType;
	}

	public String getExist() {
		return this.exist;
	}

	public void setExist(String exist) {
		this.exist = exist;
	}

	public String getFieldTypeName() {
		return fieldTypeName;
	}

	public void setFieldTypeName(String fieldTypeName) {
		this.fieldTypeName = fieldTypeName;
	}
}