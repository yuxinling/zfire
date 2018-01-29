package com.dev.huining.soft.web.zfire.dto;

import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-9-28
 * Time: 上午10:31
 */
public class ListConfig {
	private String id;
	private String title;
	private String function;
	private String mainClass;

	private int enableSelect;
	private int multiSelect;

	private List<String> pk;
	private List<String> pkType;

	private List<ListOperation> headerOperations;
	private List<ListOperation> rowOperations;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFunction() {
		return function;
	}

	public void setFunction(String function) {
		this.function = function;
	}

	public String getMainClass() {
		return mainClass;
	}

	public void setMainClass(String mainClass) {
		this.mainClass = mainClass;
	}

	public int getEnableSelect() {
		return enableSelect;
	}

	public void setEnableSelect(int enableSelect) {
		this.enableSelect = enableSelect;
	}

	public int getMultiSelect() {
		return multiSelect;
	}

	public void setMultiSelect(int multiSelect) {
		this.multiSelect = multiSelect;
	}

	public List<String> getPk() {
		return pk;
	}

	public void setPk(List<String> pk) {
		this.pk = pk;
	}

	public List<String> getPkType() {
		return pkType;
	}

	public void setPkType(List<String> pkType) {
		this.pkType = pkType;
	}

	public List<ListOperation> getHeaderOperations() {
		return headerOperations;
	}

	public void setHeaderOperations(List<ListOperation> headerOperations) {
		this.headerOperations = headerOperations;
	}

	public List<ListOperation> getRowOperations() {
		return rowOperations;
	}

	public void setRowOperations(List<ListOperation> rowOperations) {
		this.rowOperations = rowOperations;
	}


	@Override
	public String toString() {
		return "";
	}
}
