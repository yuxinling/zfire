/**
 *
 */
package com.dev.huining.soft.web.zfire.cache.redis;


import com.dev.huining.soft.web.zfire.cache.Cache;
import com.dev.huining.soft.web.zfire.cache.CacheConst;
import com.dev.huining.soft.web.zfire.exception.CacheException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * date 2013-2-21 time 下午4:25:36
 *
 * @author yu_xinling
 */
public class RedisCache implements Cache {

    private static Logger logger = LoggerFactory.getLogger(RedisCache.class);

    private final RedisProxy redisProxy;

    private final String name;

    public RedisCache(RedisProxy redisProxy, String name) {
        this.name = name;
        this.redisProxy = redisProxy;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public void setName(String name) {
        throw new CacheException("un support.");
    }

    @Override
    public Object get(String key) throws CacheException {
        validateKey(key);
        String realKey = getRealKey(key);
        Object value = null;
        try {
            value = redisProxy.getObject(realKey.getBytes());
        } catch (Throwable e) {
            logger.error(e.getMessage(),e);
        }
        return value;
    }

    @Override
    public void set(String key, Object value) throws CacheException {
        validateKey(key);
        if (value == null)
            return;
        String realKey = getRealKey(key);
        redisProxy.setObject(realKey.getBytes(), value);
    }

    @Override
    public void set(String key, Object value, int ttl) throws CacheException {
        validateKey(key);
        if (value == null)
            return;
        String realKey = getRealKey(key);
        redisProxy.setObject(realKey.getBytes(),value,ttl);
    }

    @Override
    public void delete(String key) throws CacheException {
        validateKey(key);
        String realKey = getRealKey(key);
        redisProxy.delete(realKey);
    }

	@Override
	public void deleteKeys(String pattern) throws CacheException {
	}

	@Override
	public void set(String key, String field, String value) throws CacheException {
	}

	@Override
	public String get(String key, String field) throws CacheException {
		return null;
	}

	@Override
    public Long keySize() throws CacheException {
        throw new CacheException("un support.");
    }

    private void validateKey(String key) {
        if (key == null || "".equals(key.trim()))
            throw new CacheException("the key must be not null or empty");
    }

    private String getRealKey(String key) {
        return name + CacheConst.CACHE_CACHENAME_AND_KEY_SEPARATOR_STR + key;
    }

}
