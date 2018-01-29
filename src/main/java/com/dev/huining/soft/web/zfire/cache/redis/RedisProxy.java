package com.dev.huining.soft.web.zfire.cache.redis;


import com.dev.huining.soft.web.zfire.dto.configuration.RedisConfiguration;

/**
 * User: yu_xinling
 * Date: 13-3-15
 * Time: 上午10:04
 */
public abstract class RedisProxy implements RedisManager {

    protected RedisConfiguration redisConfiguration;

    public RedisProxy(RedisConfiguration redisConfiguration) {
        this.redisConfiguration = redisConfiguration;
    }

    public abstract void destroy();

}
