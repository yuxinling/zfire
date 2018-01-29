package com.dev.huining.soft.web.zfire.cache.memory;


import com.dev.huining.soft.web.zfire.cache.Cache;
import com.dev.huining.soft.web.zfire.exception.CacheException;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * User: yu_xinling
 * Date: 13-9-1
 */
public class MemoryCache implements Cache {

    private final ConcurrentHashMap<Object, Object> cache;

    private final String name;
    private final Object lock = new Object();

    public MemoryCache(String name) {
        this.name = name;
        this.cache = new ConcurrentHashMap<Object, Object>();
    }

    @Override
    public Object get(String key) throws CacheException {
        validateKey(key);
        return cache.get(key);
    }

    @Override
    public void set(String key, Object value) throws CacheException {
        validateKey(key);
        cache.put(key, value);

    }

    @Override
    public void set(String key, Object value, int ttl) throws CacheException {
        throw new CacheException("has not been  support.");
    }


    @Override
    public void delete(String key) throws CacheException {
        validateKey(key);
        cache.remove(key);
    }

	@Override
	public void deleteKeys(String pattern) throws CacheException {
		validateKey(pattern);
		Set<Object> keys =  this.cache.keySet();
		for (Object key : keys) {
			String k = (String) key;
			if(k.startsWith(pattern))
				this.cache.remove(key);
		}
	}

	@Override
    public void set(String key, String field, String value) throws CacheException {
        synchronized (lock) {
            validateKey(key);
            Map<String, String> valueMap = (Map<String, String>) cache.get(key);
            if (valueMap == null) {
                valueMap = new HashMap<String, String>();
            }
            valueMap.put(field, value);
            cache.put(key, valueMap);
        }
    }

    @Override
    public String get(String key, String field) throws CacheException {
        validateKey(key);
        Map<String, String> valueMap = (Map<String, String>) cache.get(key);
        if (valueMap == null) {
            return null;
        }
        return valueMap.get(field);
    }

    @Override
    public Long keySize() throws CacheException {
        return Long.valueOf(cache.size());
    }

    private void validateKey(String key) {
        if (key == null || "".equals(key.trim()))
            throw new CacheException("the key must be not null or empty");
    }

    /**
     * This method just use for distributed environment,invalided key by zookeeper notify.
     *
     * @param key
     */
    protected void invalidKey(String key) {
        cache.remove(key);
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String name) {
        throw new CacheException("un support.");
    }


}
