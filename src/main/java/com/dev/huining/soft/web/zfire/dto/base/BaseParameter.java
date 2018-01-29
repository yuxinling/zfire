package com.dev.huining.soft.web.zfire.dto.base;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: yu_xinling
 * Date: 13-7-6
 * Time: 上午11:12
 * To change this template use File | Settings | File Templates.
 */
public abstract class BaseParameter {

    protected Map<String, Object> properties;

    public BaseParameter(){
        if(this.properties == null) this.properties = new HashMap<String,Object>();
        else this.properties.clear();
    }

    public abstract void setProperty(String name,Object Value);
    public abstract Object getProperty(String name);
    public abstract Object delProperty(String name);
    public abstract void clear();
    public abstract Map<String,Object> getProperties();
}
