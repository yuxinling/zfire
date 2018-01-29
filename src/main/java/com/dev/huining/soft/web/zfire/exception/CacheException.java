/**
 *
 */
package com.dev.huining.soft.web.zfire.exception;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: ÉÏÎç8:42
 */
public class CacheException extends RuntimeException {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    public CacheException() {
        super();
    }

    /**
     * @param message
     * @param cause
     */
    public CacheException(String message, Throwable cause) {
        super(message, cause);
    }

    /**
     * @param message
     */
    public CacheException(String message) {
        super(message);
    }

    /**
     * @param cause
     */
    public CacheException(Throwable cause) {
        super(cause);
    }

}
