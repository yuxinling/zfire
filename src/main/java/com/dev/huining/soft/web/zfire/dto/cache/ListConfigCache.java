package com.dev.huining.soft.web.zfire.dto.cache;

import com.dev.huining.soft.web.zfire.dto.ListConfig;
import com.dev.huining.soft.web.zfire.dto.ListOperation;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;

import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-9-28
 * Time: 下午4:06
 */
public class ListConfigCache extends ListConfig {

	private String json;
	private ListConfig listConfig;

	public ListConfigCache(ListConfig listConfig){
		this.listConfig = listConfig;
		this.json = JsonUtils.formatJSONObj(listConfig);
	}


	public String getJson() {
		return json;
	}

	@Override
	public void setRowOperations(List<ListOperation> rowOperations) {
		listConfig.setRowOperations(rowOperations);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public String getId() {
		return listConfig.getId();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setId(String id) {
		listConfig.setId(id);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public String getTitle() {
		return listConfig.getTitle();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setTitle(String title) {
		listConfig.setTitle(title);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public String getFunction() {
		return listConfig.getFunction();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setFunction(String function) {
		listConfig.setFunction(function);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public String getMainClass() {
		return listConfig.getMainClass();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setMainClass(String mainClass) {
		listConfig.setMainClass(mainClass);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public int getEnableSelect() {
		return listConfig.getEnableSelect();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setEnableSelect(int enableSelect) {
		listConfig.setEnableSelect(enableSelect);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public int getMultiSelect() {
		return listConfig.getMultiSelect();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setMultiSelect(int multiSelect) {
		listConfig.setMultiSelect(multiSelect);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public List<String> getPk() {
		return listConfig.getPk();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setPk(List<String> pk) {
		listConfig.setPk(pk);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public List<String> getPkType() {
		return listConfig.getPkType();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setPkType(List<String> pkType) {
		listConfig.setPkType(pkType);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public List<ListOperation> getHeaderOperations() {
		return listConfig.getHeaderOperations();    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public void setHeaderOperations(List<ListOperation> headerOperations) {
		listConfig.setHeaderOperations(headerOperations);    //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public List<ListOperation> getRowOperations() {
		return listConfig.getRowOperations();
		 //To change body of overridden methods use File | Settings | File Templates.
	}

	@Override
	public String toString() {
		return this.json;
	}
}
