/**
 *
 */
package com.dev.huining.soft.web.zfire.cache.memory;


import com.dev.huining.soft.web.zfire.cache.AbstractCacheManager;
import com.dev.huining.soft.web.zfire.cache.Cache;
import com.dev.huining.soft.web.zfire.cache.CacheConst;
import com.dev.huining.soft.web.zfire.exception.CacheException;
import org.springframework.stereotype.Component;

import java.util.concurrent.ConcurrentHashMap;

/**
 * User: yu_xinling
 * Date: 13-9-1
 */
@Component(CacheConst.CACHE_MEMORY)
public class MemoryCacheManager extends AbstractCacheManager {

    private final ConcurrentHashMap<String, MemoryCache> caches;
    private final Object lock = new Object();


    public MemoryCacheManager() throws Exception {
        this.caches = new ConcurrentHashMap<String, MemoryCache>();
    }

    @Override
    public void destroy() throws CacheException {
    }

    @Override
    public Cache getCache(String cacheName) throws CacheException {
        validCacheName(cacheName);
        return caches.get(cacheName);
    }

    @Override
    public Cache getOrCreateCache(String cacheName) throws CacheException {

        validCacheName(cacheName);
        Cache previous = caches.get(cacheName);
        if (previous != null) return previous;

        MemoryCache newCache = new MemoryCache(cacheName);
        previous = caches.putIfAbsent(cacheName, newCache);
        if (previous == null) {
            return newCache;
        }
        return previous;
    }

    @Override
    public void createCache(String cacheName) throws CacheException {
        synchronized (lock) {
            validCacheName(cacheName);
            MemoryCache cache = new MemoryCache(cacheName);
            caches.put(cacheName, cache);
        }
    }

}
