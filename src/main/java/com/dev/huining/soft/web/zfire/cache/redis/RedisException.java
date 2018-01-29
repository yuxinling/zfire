/**
 *
 */
package com.dev.huining.soft.web.zfire.cache.redis;

/**
 * date 2013-2-27
 * time 下午5:17:56
 *
 * @author yu_xinling
 */
public class RedisException extends RuntimeException {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *
	 */
	public RedisException() {
		super();

	}

	/**
	 * @param message
	 * @param cause
	 */
	public RedisException(String message, Throwable cause) {
		super(message, cause);
	}

	/**
	 * @param message
	 */
	public RedisException(String message) {
		super(message);
	}

	/**
	 * @param cause
	 */
	public RedisException(Throwable cause) {
		super(cause);
	}
}
