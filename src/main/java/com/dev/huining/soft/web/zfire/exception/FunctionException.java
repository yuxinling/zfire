package com.dev.huining.soft.web.zfire.exception;

/**
 * User: yu_xinling
 * Date: 13-9-11
 * Time: 下午11:08
 */
public class FunctionException extends Exception {
	public FunctionException() {
		super();
	}


	/**
	 * @param message
	 * @param cause
	 */
	public FunctionException(String message, Throwable cause) {
		super(message, cause);
	}

	/**
	 * @param message
	 */
	public FunctionException(String message) {
		super(message);
	}

	/**
	 * @param cause
	 */
	public FunctionException(Throwable cause) {
		super(cause);
	}
}
