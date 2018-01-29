package com.dev.huining.soft.web.zfire.dto;
import java.util.HashMap;

/**
 * User: yu_xinling
 * Date: 13-7-7
 * Time: 上午11:21
 */
public class Result extends HashMap<String, Object> {
	public Result() {
		super();
	}

	public int getStatusCode() {
		Integer statusCode = ResultConstants.INIT_STATUS_CODE;
		if (this.containsKey("statusCode")) {
			statusCode = (Integer) this.get("statusCode");
		}
		return statusCode;
	}

	public void setStatusCode(int statusCode) {
		this.put("statusCode", statusCode);
	}

	public int getErrorCode() {
		Integer errorCode = 0;
		if (this.containsKey("errorCode")) {
			errorCode = (Integer) this.get("errorCode");
		}
		return errorCode;
	}

	public void setErrorCode(int errorCode) {
		this.put("errorCode", errorCode);
	}

	public String getMessage() {
		String message = "";
		if (this.containsKey("message")) {
			message = (String) this.get("message");
		}
		return message;
	}

	public void setMessage(String message) {
		this.put("message", message);
	}

	public Object getData() {
		return this.get("data");
	}

	public void setData(Object data) {
		this.put("data", data);
	}

	public Object getResult() {
		return this.get("result");
	}

	public void setResult(Object result) {
		this.put("result", result);
	}

	public void setResult(String name, Object value) {
		this.put(name, value);
	}
	public void setData(String name, Object value) {
		this.put(name, value);
	}
	public static Result buildResult() {
		return new Result();
	}

	public static Result buildSuccessResult(){
		Result result = new Result();
		result.setStatusCode(ResultConstants.SUCCESS_STATUS_CODE);
		return result;
	}


	public static Result buildReultStatusCode(int statusCode) {
		Result result = new Result();
		result.setStatusCode(statusCode);
		return result;
	}

	public static Result buildReultErrorCode(int errorCode) {
		Result result = new Result();
		result.setErrorCode(errorCode);
		return result;
	}

	public static Result buildErrorReult(int errorCode,String message) {
		Result result = new Result();
		result.setErrorCode(errorCode);
		result.setMessage(message);
		return result;
	}

	public static Result buildReult(int statusCode, int errorCode,String message) {
		Result result = new Result();
		result.setStatusCode(statusCode);
		result.setErrorCode(errorCode);
		result.setMessage(message);
		return result;
	}
}
