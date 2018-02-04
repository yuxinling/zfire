package com.dev.huining.soft.web.zfire.dto;

import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-28
 * Time: 上午10:43
 */
public class ListOperation {
	private String text;
	private String style;
	private String url;
	private String frameType;
	private String scriptFunction; //js 方法名称
	private String function;
	
	private String btnStyle; //表頭按鈕 樣式
	private String btnIcon;  //表頭按鈕icon
	
	private Map<String, String> enableKey;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getScriptFunction() {
		return scriptFunction;
	}

	public void setScriptFunction(String scriptFunction) {
		this.scriptFunction = scriptFunction;
	}

	public String getFunction() {
		return function;
	}

	public void setFunction(String function) {
		this.function = function;
	}

	public Map<String, String> getEnableKey() {
		return enableKey;
	}

	public void setEnableKey(Map<String, String> enableKey) {
		this.enableKey = enableKey;
	}

	public String getFrameType() {
		return frameType;
	}

	public void setFrameType(String frameType) {
		this.frameType = frameType;
	}

	public String getBtnStyle() {
		return btnStyle;
	}

	public void setBtnStyle(String btnStyle) {
		this.btnStyle = btnStyle;
	}

	public String getBtnIcon() {
		return btnIcon;
	}

	public void setBtnIcon(String btnIcon) {
		this.btnIcon = btnIcon;
	}
	
	
}
