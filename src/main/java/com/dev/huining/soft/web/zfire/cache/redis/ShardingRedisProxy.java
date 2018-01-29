package com.dev.huining.soft.web.zfire.cache.redis;

import com.dev.huining.soft.web.zfire.cache.CacheConst;
import com.dev.huining.soft.web.zfire.dto.configuration.RedisConfiguration;
import com.dev.huining.soft.web.zfire.utils.Kryos;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.*;
import redis.clients.jedis.exceptions.JedisConnectionException;
import redis.clients.util.Hashing;

import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * User: yu_xinling
 * Date: 13-3-15
 * Time: 上午10:07
 */
public class ShardingRedisProxy extends RedisProxy {
    private static final Logger LOGGER = LoggerFactory.getLogger(ShardingRedisProxy.class);
    private final ShardedJedisPool pool;
    private static final int DEFAULT_SINGLE_EXPIRE_TIME = 3;

    public ShardingRedisProxy(RedisConfiguration redisConfiguration) {

        super(redisConfiguration);
        LOGGER.info("redis client init.");
        LOGGER.info("sharding = " + redisConfiguration.isSharding());
        LOGGER.info("address = " + redisConfiguration.getAddressList());

        int shardingCount = redisConfiguration.getShardingCount();
        List<JedisShardInfo> shards = new ArrayList<JedisShardInfo>(shardingCount);
        for (String connectStr : redisConfiguration.getAddressList()) {
            String ip = connectStr.split(":")[0];
            int port = Integer.valueOf(connectStr.split(":")[1]);
            JedisShardInfo jsi = new JedisShardInfo(ip, port);
            shards.add(jsi);
        }

        Hashing hashing = null;
        String hashType = redisConfiguration.getHashType();
        if (hashType != null && CacheConst.REDIS_SHARDINT_HASH_TYPE_MD5_STR.equals(hashType.trim())) {
            hashing = Hashing.MD5;
        } else {
            hashing = Hashing.MURMUR_HASH;
        }

        JedisPoolConfig poolConfig = new JedisPoolConfig();
        poolConfig.setMaxActive(redisConfiguration.getMaxActiveCount());
        this.pool = new ShardedJedisPool(poolConfig, shards, hashing);

    }

    @Override
    public void destroy() {
        pool.destroy();
    }

    @Override
    public String get(String key) throws RedisException {
        if (key == null || "".equals(key.trim()))
            return null;
        String result;
        try {

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.get(key);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy get(key) exception, key is :" + key, e);
        }
        return result;
    }

    @Override
    public void set(String key, String value, int ttl) throws RedisException {
        try {
            if (key == null || value == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.set(key, value);
                jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,filed,value) exception, key is :" + key + ", value is :" + value, e);
        }
    }

    @Override
    public void setByte(byte[] key, byte[] value, int ttl) throws RedisException {
        try {
            if (key == null || value == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.set(key, value);
                jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setByte(key,value,ttl) exception, key is :" + new String(key) + ", value is :" + new String(value), e);
        }
    }

    @Override
    public void setObject(byte[] key, Object value, int ttl) throws RedisException {
        if (key == null || key.length == 0 || value == null)
            return;
        try {

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.set(key, Kryos.objectToBytes(value));
                jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setObject(key,value,ttl) exception, key is :" + new String(key), e);
        }
    }

    @Override
    public void setObject(byte[] key, Object value) throws RedisException {
        if (key == null || key.length == 0 || value == null)
            return;
        try {

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.set(key, Kryos.objectToBytes(value));
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setObject(key,value) exception, key is :" + new String(key), e);
        }
    }

    @Override
    public byte[] getByte(byte[] key) throws RedisException {
        if (key == null)
            return null;
        byte[] result;
        try {

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.get(key);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy get(key) exception, key is :" + new String(key), e);
        }
        return result;
    }

    @Override
    public void setByte(byte[] key, byte[] value) throws RedisException {
        try {
            if (key == null || value == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.set(key, value);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,filed,value) exception, key is :" + new String(key) + ", value is :" + new String(value), e);
        }
    }

    @Override
    public Object getObject(byte[] key) throws RedisException {
        if (key == null || key.length == 0)
            return null;
        byte[] result;
        try {

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.get(key);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy get(key) exception, key is :" + key, e);
        }
        if (result == null || result.length == 0)
            return null;
        return Kryos.bytesToObject(result);
    }

    @Override
    public void set(String key, String value) throws RedisException {
        try {
            if (key == null || value == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.set(key, value);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,filed,value) exception, key is :" + key + ", value is :" + value, e);
        }
    }

    @Override
    public Long incrBy(String key, Long offset) throws RedisException {
        long result = 0l;

        if (key == null || "".equals(key.trim()))
            return result;

        try {

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.incrBy(key, offset);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hincrBy(key,offset) exception, key is :" + key + ", offset is :" + offset, e);
        }
        return result;
    }

    @Override
    public Long incrBy(String key, Long offset, int ttl) throws RedisException {
        long result = 0l;

        if (key == null || "".equals(key.trim()))
            return result;

        try {

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.incrBy(key, offset);
                jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hincrBy(key,offset,ttl) exception, key is :" + key + ", offset is :" + offset + ", ttl is :" + ttl, e);
        }
        return result;
    }

    @Override
    public void hset(String key, String field, String value) throws RedisException {
        try {
            if (key == null || field == null || "".equals(field.trim()) || value == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.hset(key, field, value);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,filed,value) exception, key is :" + key + ", field is :" + field + ", value is :" + value, e);
        }
    }

    @Override
    public String hget(String key, String field) throws RedisException {
        String result = null;
        try {
            if (key == null || field == null || "".equals(field.trim()))
                return null;


            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.hget(key, field);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hget(key,filed) exception, key is :" + key + ", field is :" + field, e);
        }
        return result;
    }


    @Override
    public void setAdd(byte[] key, int ttl, byte[]... members) throws RedisException {
        try {
            if (key == null || members == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.sadd(key, members);
                jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setAdd(key,members) exception, key is :" + new String(key), e);
        }
    }

    @Override
    public void setAdd(byte[] key, byte[]... members) throws RedisException {
        try {
            if (key == null || members == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.sadd(key, members);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setAdd(key,members) exception, key is :" + new String(key), e);
        }
    }

    @Override
    public void setAdd(String key, String... members) throws RedisException {
        try {
            if (key == null || members == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.sadd(key, members);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setAdd(key,members) exception, key is :" + key + ", members is :" + members, e);
        }
    }

    @Override
    public void setAdd(String key, int ttl, String... members) throws RedisException {
        try {
            if (key == null || members == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.sadd(key, members);
                jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setAdd(key,members) exception, key is :" + key + ", members is :" + members, e);
        }
    }

    @Override
    public Set<byte[]> setMembers(byte[] key) throws RedisException {

        Set<byte[]> keys = null;

        try {
            if (key == null)
                return keys;

            ShardedJedis jedis = pool.getResource();
            try {
                keys = jedis.smembers(key);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setMembers(key) exception, key is :" + key, e);
        }

        return keys;
    }


    @Override
    public Set<String> setMembers(String key) throws RedisException {

        Set<String> keys = null;

        try {
            if (key == null || "".equals(key.trim()))
                return keys;

            ShardedJedis jedis = pool.getResource();
            try {
                keys = jedis.smembers(key);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setMembers(key) exception, key is :" + key, e);
        }

        return keys;
    }

    @Override
    public String setRandMember(String key) throws RedisException {
        String result = null;
        ShardedJedis jedis = null;
        try {
            if (key == null || "".equals(key.trim())) return result;
            jedis = getResource();
            result = jedis.srandmember(key);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setRandMember(key) exception, key is :" + key , e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public byte[] setRandMember(byte[] key) throws RedisException {
        byte[] result = null;
        ShardedJedis jedis = null;
        try {
            if (key == null) return result;
            jedis = getResource();
            result = jedis.srandmember(key);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setRandMember(key) exception, key is :" + new String(key) , e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public boolean isSetMember(byte[] key, byte[] member) throws RedisException {
        boolean result = false;
        try {
            if (key == null || key.length == 0)
                result = false;

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.sismember(key, member);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy isSetMember(key,member) exception, key is :" + key, e);
        }

        return result;
    }

    @Override
    public boolean isSetMember(String key, String member) throws RedisException {
        boolean result = false;
        try {
            if (key == null || "".equals(key.trim()))
                result = false;

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.sismember(key, member);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy isSetMember(key,member) exception, key is :" + key, e);
        }

        return result;
    }

    @Override
    public long setCard(String key) throws RedisException {
        long size = 0l;

        try {
            if (key == null || "".equals(key.trim()))
                return size;

            ShardedJedis jedis = pool.getResource();
            try {
                size = jedis.scard(key.trim());
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setCard(key) exception, key is :" + key, e);
        }

        return size;
    }

    @Override
    public void setRemove(String key, String... members) throws RedisException {
        try {
            if (key == null || members == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.srem(key, members);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setRemove(key,members) exception, key is :" + key + ", members is :" + members, e);
        }
    }

    @Override
    public void setRemove(byte[] key, byte[]... members) throws RedisException {
        try {
            if (key == null || members == null)
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.srem(key, members);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy setRemove(key,members) exception, key is :" + key + ", members is :" + members, e);
        }
    }

    @Override
    public String redisInfo() {
        String info = "";
        try {

            ShardedJedis jedis = pool.getResource();
            try {
//                info = jedis.getAllShards().iterator().next().
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy redisInfo() exception.", e);
        }
        return info;
    }

    @Override
    public Map<String, String> hgetAll(String key) throws RedisException {
        Map<String, String> resultMap = null;
        try {
            if (key == null || "".equals(key.trim()))
                return null;

            ShardedJedis jedis = pool.getResource();
            try {
                resultMap = jedis.hgetAll(key.trim());
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hgetAll(key) exception, key is :" + key, e);
        }

        return resultMap;
    }

    @Override
    public Map<byte[], byte[]> hgetAll(byte[] key) throws RedisException {
        Map<byte[], byte[]> resultMap = null;
        try {
            if (key == null)
                return null;

            ShardedJedis jedis = pool.getResource();
            try {
                resultMap = jedis.hgetAll(key);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hgetAll(key) exception, key is :" + key, e);
        }

        return resultMap;
    }

    @Override
    public void hset(byte[] key, Map<byte[], byte[]> map) throws RedisException {
        try {
            if (key == null || key.length == 0)
                return;

            if (map == null || map.isEmpty())
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.hmset(key, map);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,map) exception, key is :" + new String(key), e);
        }
    }

    @Override
    public void hset(byte[] key, Map<byte[], byte[]> map, int ttl) throws RedisException {
        try {
            if (key == null || key.length == 0)
                return;

            if (map == null || map.isEmpty())
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.hmset(key, map);
                jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,map,ttl) exception, key is :" + new String(key), e);
        }
    }

    @Override
    public void hset(String key, Map<String, String> map) throws RedisException {
        try {
            if (key == null || "".equals(key.trim()))
                return;

            if (map == null || map.isEmpty())
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.hmset(key.trim(), map);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,map) exception, key is :" + key + ", map is :" + map, e);
        }
    }

    @Override
    public void hset(String key, Map<String, String> map, int ttl) throws RedisException {
        try {
            if (key == null || "".equals(key.trim()))
                return;

            if (map == null || map.isEmpty())
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.hmset(key.trim(), map);
                jedis.expire(key.trim(), ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hset(key,map,ttl) exception, key is :" + key + ", map is :" + map, e);
        }
    }


    @Override
    public void delete(String key) throws RedisException {
        try {
            if (key == null || "".equals(key.trim()))
                return;

            ShardedJedis jedis = pool.getResource();
            try {
                jedis.del(key.trim());
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy deleteKey(key) exception, key is :" + key, e);
        }
    }

    @Override
    public Long llen(String key) throws RedisException {
        long result = 0l;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.llen(key);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy llen(key) exception, key is :" + key, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Long rpush(String key, String... values) throws RedisException {
        long result = 0l;
        ShardedJedis jedis = null;
        try {
            if (key == null || "".equals(key.trim()) || values == null || values.length < 1) return result;
            jedis = getResource();
            result = jedis.rpush(key, values);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy rpush(key,values) exception, key is :" + key, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public List<String> lrange(String key, long start, long stop) throws RedisException {
        List<String> result = null;
        ShardedJedis jedis = null;
        try {
            if (key == null) return result;
            jedis = getResource();
            result = jedis.lrange(key, start, stop);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy lrange(key,start,stop) exception, key is :" + key + ",start is :" + start + ",stop is :" + stop, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Long lrem(String key, long count, String value) throws RedisException {
        long result = 0l;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.lrem(key, count, value);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy lrem(key,count,value) exception, key is :" + key + ",count is : " + count + ",value is : " + value, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Long zadd(String key, double score, String value) throws RedisException {
        long result = 0l;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zadd(key, score, value);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy lrem(key,count,value) exception, key is :" + key + ",score is : " + score + ",value is : " + value, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Long zrem(String key, String... members) throws RedisException {
        long result = 0l;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zrem(key, members);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zrem(key,members) exception, key is :" + key, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Long zcount(String key, double min, double max) throws RedisException {
        long result = 0l;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zcount(key, min, max);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zcount(key,min,max) exception, key is :" + key + ", min is : " + min + ", max is : " + max, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Long zcard(String key) throws RedisException {
        long result = 0l;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zcard(key);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zcard(key) exception, key is :" + key, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Set<String> zrevrangeByScore(String key, double max, double min) throws RedisException {
        Set<String> result = null;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zrevrangeByScore(key, max, min);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zrevrangeByScore(key,max,min) exception, key is :" + key + ", min is : " + min + ", max is : " + max, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Set<String> zrangeByScore(String key, double min, double max) throws RedisException {
        Set<String> result = null;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zrangeByScore(key, min, max);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zrangeByScore(key,min,max) exception, key is :" + key + ", min is : " + min + ", max is : " + max, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Set<String> zrangeByScore(String key, String min, String max) throws RedisException {
        Set<String> result = null;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zrangeByScore(key, min, max);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zrangeByScore(key,min,max) exception, key is :" + key + ", min is : " + min + ", max is : " + max, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Set<String> zrevrange(String key, long start, long stop) throws RedisException {
        Set<String> result = null;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zrevrange(key, start, stop);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zrevrange(key,start,stop) exception, key is :" + key + ", start is : " + start + ", stop is : " + stop, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public Long zrank(String key, String member) throws RedisException {
        long result = -1l;
        if (key == null) return result;
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            result = jedis.zrank(key, member);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy zrank(key,member) exception, key is :" + key + ",member is : " + member, e);
        } finally {
            returnResource(jedis);
        }
        return result;
    }

    @Override
    public void deleteKeys(String pattern) throws RedisException {
        ShardedJedis jedis = null;
        try {
            if (pattern == null || "".equals(pattern.trim()))
                return;

            jedis = getResource();

            Collection<Jedis> jedises = jedis.getAllShards();
            for (Jedis j : jedises) {
                Set<String> keys = j.keys(pattern);
                if (keys == null || keys.isEmpty())
                    continue;
                j.del(keys.toArray(new String[]{}));
            }
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy deleteKeys(pattern) exception, pattern is :" + pattern, e);
        } finally {
            returnResource(jedis);
        }
    }

    @Override
    public Long ttl(String key) throws RedisException {
        long ttl = 0l;
        try {
            if (key == null || "".equals(key.trim()))
                return -1l;

            ShardedJedis jedis = pool.getResource();
            try {
                ttl = jedis.ttl(key.trim());
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy ttl(key) exception, key is :" + key, e);
        }
        return ttl;
    }

    @Override
    public Long hdel(String key, String... fields) throws RedisException {
        long result = 0l;
        try {
            if (key == null || "".equals(key.trim()) || fields == null || fields.length < 1)
                return 0l;

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.hdel(key, fields);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hdel(key,fields) exception, key is :" + key, e);
        }
        return result;
    }

    @Override
    public Set<String> hKeys(String key) throws RedisException {
        Set<String> keys = null;
        try {
            if (key == null || "".equals(key.trim()))
                return null;

            ShardedJedis jedis = pool.getResource();
            try {
                keys = jedis.hkeys(key.trim());
            } finally {
                pool.returnResource(jedis);
            }

        } catch (RedisException e) {
            throw e;
        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hKeys(key) exception, key is :" + key, e);
        }
        return keys;
    }

    @Override
    public Long hincrBy(String key, String field, Long offset) throws RedisException {
        long result = 0;
        try {
            if (key == null || field == null || "".equals(field.trim()))
                return null;

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.hincrBy(key, field, offset);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy hincrBy(key,filed,offset) exception, key is :" + key + ", field is :" + field + ", offset is :" + offset, e);
        }
        return result;
    }

    @Override
    public Long expire(String key, int ttl) throws RedisException {
        long result = 0;
        try {
            if (key == null || "".equals(key.trim()))
                return null;

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy expire(key,seconds) exception, key is :" + key + ", ttl is :" + ttl, e);
        }
        return result;
    }

    @Override
    public Long expire(byte[] key, int ttl) throws RedisException {
        long result = 0;
        try {
            if (key == null || key.length < 1)
                return null;

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.expire(key, ttl);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy expire(key,seconds) exception, key is :" + new String(key) + ", ttl is :" + ttl, e);
        }
        return result;
    }

    @Override
    public boolean exists(String key) throws RedisException {
        boolean result = false;
        try {
            if (key == null) return result;

            ShardedJedis jedis = pool.getResource();
            try {
                result = jedis.exists(key);
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy exists(key) exception, key is :" + key, e);
        }
        return result;
    }


    @Override
    public String save() throws RedisException {
        StringBuilder result = new StringBuilder();
        try {

            ShardedJedis jedis = pool.getResource();
            try {
                Collection<JedisShardInfo> shardInfos = jedis.getAllShardInfo();
                Set<String> addresses = new HashSet<String>();
                for (JedisShardInfo jInfo : shardInfos) {
                    Jedis j = jInfo.createResource();
                    if (j != null) {
                        String address = jInfo.getHost() + ":" + jInfo.getPort();
                        if (addresses.contains(address))
                            continue;

                        addresses.add(address);

                        String temp = j.save();
                        StringBuilder message = new StringBuilder("[");
                        message.append(address).append(" save ").append(temp).append("]");
                        LOGGER.info("Begin save redis cache to disk, " + message.toString());
                        result.append(message).append("\n");
                    }

                    if (addresses.size() == redisConfiguration.getAddressList().size())
                        break;

                }
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy save() exception.", e);
        }
        return result.toString();
    }


    @Override
    public String bgsave() throws RedisException {
        StringBuilder result = new StringBuilder();
        try {

            ShardedJedis jedis = pool.getResource();
            try {
                Collection<JedisShardInfo> shardInfos = jedis.getAllShardInfo();
                Set<String> addresses = new HashSet<String>();
                for (JedisShardInfo jInfo : shardInfos) {
                    Jedis j = jInfo.createResource();
                    if (j != null) {
                        String address = jInfo.getHost() + ":" + jInfo.getPort();
                        if (addresses.contains(address))
                            continue;

                        addresses.add(address);

                        String temp = j.bgsave();
                        StringBuilder message = new StringBuilder("[");
                        message.append(address).append(" bgsave ").append(temp).append("]");
                        LOGGER.info("Begin bgsave redis cache to disk, " + message.toString());
                        result.append(message).append("\n");
                    }

                    if (addresses.size() == redisConfiguration.getAddressList().size())
                        break;

                }
            } finally {
                pool.returnResource(jedis);
            }

        } catch (Exception e) {
            throw new RedisException("ShardingRedisProxy save() exception.", e);
        }
        return result.toString();
    }

    @Override
    public boolean tryLock(String key) {
        return tryLock(key, 0L, null);
    }

    @Override
    public boolean tryLock(String key, long timeout, TimeUnit unit) {
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            long nano = System.nanoTime();
            do {
                if (LOGGER.isDebugEnabled()) {
                    LOGGER.debug("try lock key: " + key);
                }
                Long i = jedis.setnx(key, key);
                if (i == 1) {
                    jedis.expire(key, DEFAULT_SINGLE_EXPIRE_TIME);
                    if (LOGGER.isDebugEnabled()) {
                        LOGGER.debug("get lock, key: " + key + " , expire in " + DEFAULT_SINGLE_EXPIRE_TIME + " seconds.");
                    }
                    return Boolean.TRUE;
                } else { // 存在锁
                    if (LOGGER.isDebugEnabled()) {
                        String desc = jedis.get(key);
                        LOGGER.debug("key: " + key + " locked by another business：" + desc);
                    }
                }
                if (timeout == 0) {
                    break;
                }
                Thread.sleep(300);
            } while ((System.nanoTime() - nano) < unit.toNanos(timeout));
            return Boolean.FALSE;
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        } finally {
            returnResource(jedis);
        }
        return Boolean.FALSE;
    }

    @Override
    public void lock(String key) {
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            do {
                if (LOGGER.isDebugEnabled()) {
                    LOGGER.debug("lock key: " + key);
                }
                Long i = jedis.setnx(key, key);
                if (i == 1) {
                    jedis.expire(key, DEFAULT_SINGLE_EXPIRE_TIME);
                    if (LOGGER.isDebugEnabled()) {
                        LOGGER.debug("get lock, key: " + key + " , expire in " + DEFAULT_SINGLE_EXPIRE_TIME + " seconds.");
                    }
                    return;
                } else {
                    if (LOGGER.isDebugEnabled()) {
                        String desc = jedis.get(key);
                        LOGGER.debug("key: " + key + " locked by another business：" + desc);
                    }
                }
                Thread.sleep(300);
            } while (true);
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        } finally {
            returnResource(jedis);
        }
    }

    @Override
    public void unLock(String key) {
        ShardedJedis jedis = null;
        try {
            jedis = getResource();
            jedis.del(key);
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("release lock, keys :" + key);
            }
        } catch (JedisConnectionException je) {
            LOGGER.error(je.getMessage(), je);
            returnBrokenResource(jedis);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        } finally {
            returnResource(jedis);
        }
    }


    private ShardedJedis getResource() {
        return pool.getResource();
    }

    private void returnBrokenResource(ShardedJedis jedis) {
        if (jedis == null) {
            return;
        }
        try {
            //容错
            pool.returnBrokenResource(jedis);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
    }

    private void returnResource(ShardedJedis jedis) {
        if (jedis == null) {
            return;
        }
        try {
            pool.returnResource(jedis);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
    }
}
