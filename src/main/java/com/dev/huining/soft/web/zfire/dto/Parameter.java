package com.dev.huining.soft.web.zfire.dto;

import com.dev.huining.soft.web.zfire.dto.base.BaseParameter;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-7-6
 * Time: 上午10:41
 */
public class Parameter extends BaseParameter {

    public Parameter(){
        super();
    }

    public Parameter(HttpServletRequest request) {
		super();
		Enumeration enuelement = request.getParameterNames();
		while (enuelement.hasMoreElements()) {
			String name = (String) enuelement.nextElement();
			Object value = request.getParameterValues(name);
			this.properties.put(name, value);
		}
	}

    public void setProperty(String name,Object value){
        this.properties.put(name,value);
    }
    public Object getProperty(String name){
        return this.properties.get(name);
    }

	@Override
	public Object delProperty(String name) {
		Object value = null;
		if(this.properties.containsKey(name)){
			value = this.properties.get(name);
			this.properties.remove(name);
		}
		return value;
	}

	@Override
	public void clear() {
		if(this.properties == null) return;
		this.properties.clear();
	}

	public Map<String,Object> getProperties(){
        return this.properties;
    }
}
