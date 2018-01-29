package com.dev.huining.soft.web.zfire.cache;

/**
 * User: yu_xinling
 * Date: 14-5-17
 * Time: 下午3:14
 */
public class CacheConst {
	public static final String CACHE_CACHENAME_AND_KEY_SEPARATOR_STR = ":";
	public static final int REDIS_DEFAULT_MAX_ACTIVE_COUNT = Runtime.getRuntime().availableProcessors() * 2;
	public static final String REDIS_SHARDINT_HASH_TYPE_MD5_STR = "MD5";

	public static final String CACHE_REDIS = "redisCache";
	public static final String CACHE_MEMORY = "memoryCache";
}
