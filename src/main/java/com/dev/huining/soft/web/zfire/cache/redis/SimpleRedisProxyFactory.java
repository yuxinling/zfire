package com.dev.huining.soft.web.zfire.cache.redis;


import com.dev.huining.soft.web.zfire.dto.configuration.RedisConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Arrays;

/**
 * User: yu_xinling
 * Date: 13-3-15
 * Time: 上午10:00
 */
@Repository
public class SimpleRedisProxyFactory {

	private final RedisProxy redisProxy;

	public SimpleRedisProxyFactory() {
		RedisConfiguration redisConfiguration = new RedisConfiguration();
		redisConfiguration.setAddressList(Arrays.asList(new String[]{"127.0.0.1:6379"}));
		redisConfiguration.setSharding(false);
		redisConfiguration.setHashType("MD5");
		redisConfiguration.setShardingCount(3);
		redisConfiguration.setMaxActiveCount(10);

		if (redisConfiguration.isSharding()) {
			redisProxy = new ShardingRedisProxy(redisConfiguration);
		} else {
			redisProxy = new UnShardingRedisProxy(redisConfiguration);
		}
	}

	public SimpleRedisProxyFactory(RedisConfiguration redisConfiguration) {
		if (redisConfiguration.isSharding()) {
			redisProxy = new ShardingRedisProxy(redisConfiguration);
		} else {
			redisProxy = new UnShardingRedisProxy(redisConfiguration);
		}
	}

	public RedisProxy getRedisProxy() {
		return redisProxy;
	}
}
