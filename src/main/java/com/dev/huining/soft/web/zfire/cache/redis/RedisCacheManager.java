package com.dev.huining.soft.web.zfire.cache.redis;

import com.dev.huining.soft.web.zfire.cache.AbstractCacheManager;
import com.dev.huining.soft.web.zfire.cache.Cache;
import com.dev.huining.soft.web.zfire.cache.CacheConst;
import com.dev.huining.soft.web.zfire.exception.CacheException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.concurrent.ConcurrentHashMap;

/**
 * date 2013-3-7
 * time 下午4:09:05
 *
 * @author yu_xinling
 */
@Component(CacheConst.CACHE_REDIS)
public class RedisCacheManager extends AbstractCacheManager {

	private final ConcurrentHashMap<String, RedisCache> caches;

	private final RedisProxy redisProxy;

	@Autowired
	public RedisCacheManager(SimpleRedisProxyFactory simpleRedisProxyFactory) {
		this.caches = new ConcurrentHashMap<String, RedisCache>();
		this.redisProxy = simpleRedisProxyFactory.getRedisProxy();
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
		if (previous != null)
			return previous;

		RedisCache newCache = new RedisCache(redisProxy, cacheName);
		previous = caches.putIfAbsent(cacheName, newCache);
		if (previous == null) {
			return newCache;
		}
		return previous;
	}

	@Override
	public void createCache(String cacheName) throws CacheException {
		validCacheName(cacheName);
		RedisCache cache = new RedisCache(redisProxy, cacheName);
		caches.put(cacheName, cache);
	}

	@Override
	public void destroy() throws CacheException {
		redisProxy.destroy();
	}


}
