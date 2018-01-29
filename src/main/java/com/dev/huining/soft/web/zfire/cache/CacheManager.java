
package com.dev.huining.soft.web.zfire.cache;

import com.dev.huining.soft.web.zfire.exception.CacheException;

/**
 * User: yu_xinling
 * Date: 13-9-1
 */
public interface CacheManager {

    Cache getCache(String cacheName) throws CacheException;

    Cache getOrCreateCache(String cacheName) throws CacheException;

    void createCache(String cacheName) throws CacheException;

    void destroy() throws CacheException;
}
