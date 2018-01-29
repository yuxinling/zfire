package com.dev.huining.soft.web.zfire.cache;

import com.dev.huining.soft.web.zfire.exception.CacheException;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 上午8:42
 */
public abstract class AbstractCacheManager implements CacheManager {

	protected void validCacheName(String cacheName) {
		if (cacheName == null || "".equals(cacheName.trim()))
			throw new CacheException("cacheName must be not null or empty");
	}
}
