package com.dev.huining.soft.web.zfire.cache.redis;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * User: yu_xinling
 * Date: 13-5-23
 * Time: AM9:54
 */
public interface RedisManager {

	Object getObject(byte[] key) throws RedisException;

	byte[] getByte(byte[] key) throws RedisException;

	String get(String key) throws RedisException;

	void set(String key, String value) throws RedisException;

	void set(String key, String value, int ttl) throws RedisException;

	void setByte(byte[] key, byte[] value) throws RedisException;

	void setByte(byte[] key, byte[] value, int ttl) throws RedisException;

	void setObject(byte[] key, Object value) throws RedisException;

	void setObject(byte[] key, Object value, int ttl) throws RedisException;

	void setAdd(byte[] key, int ttl, byte[]... members) throws RedisException;

	void setAdd(String key, int ttl, String... members) throws RedisException;

	void setAdd(byte[] key, byte[]... members) throws RedisException;

	void setAdd(String key, String... members) throws RedisException;

	Set<byte[]> setMembers(byte[] key) throws RedisException;

	Set<String> setMembers(String key) throws RedisException;

	String setRandMember(String key) throws RedisException;

	byte[] setRandMember(byte[] key) throws RedisException;

	long setCard(String key) throws RedisException;

	boolean isSetMember(String key, String member) throws RedisException;

	boolean isSetMember(byte[] key, byte[] member) throws RedisException;

	void setRemove(String key, String... members) throws RedisException;

	void setRemove(byte[] key, byte[]... members) throws RedisException;

	String redisInfo();

	Map<String, String> hgetAll(String key) throws RedisException;

	Map<byte[], byte[]> hgetAll(byte[] key) throws RedisException;

	void hset(String key, Map<String, String> map, int ttl) throws RedisException;

	void hset(String key, Map<String, String> map) throws RedisException;

	void hset(byte[] key, Map<byte[], byte[]> map) throws RedisException;

	void hset(byte[] key, Map<byte[], byte[]> map, int ttl) throws RedisException;

	void hset(String key, String field, String value) throws RedisException;

	Set<String> hKeys(String key) throws RedisException;

	Long hdel(String key, String... fields) throws RedisException;

	Long hincrBy(String key, String field, Long offset) throws RedisException;

	String hget(String key, String field) throws RedisException;

	void delete(String key) throws RedisException;

	Long llen(String key) throws RedisException;

	Long rpush(String key, String... values) throws RedisException;

	List<String> lrange(String key, long start, long stop) throws RedisException;

	Long lrem(String key, long count, String value) throws RedisException;

	Long zadd(String key, double score, String value) throws RedisException;

	Long zrem(String key, String... members) throws RedisException;

	Long zcount(String key, double min, double max) throws RedisException;

	Long zcard(String key) throws RedisException;

	Set<String> zrevrangeByScore(String key, double max, double min) throws RedisException;

	Set<String> zrangeByScore(String key, double min, double max) throws RedisException;

	Set<String> zrangeByScore(String key, String min, String max) throws RedisException;

	Set<String> zrevrange(String key, long start, long stop) throws RedisException;

	Long zrank(String key, String member) throws RedisException;

	/**
	 * Returns all the keys matching the glob-style pattern as space separated strings.
	 * For example if you have in the database the keys "foo" and  "foobar"
	 * the pattern is "foo*", the method will delete keys in  "foo foobar".
	 *
	 * @param pattern
	 * @throws RedisException
	 */
	void deleteKeys(String pattern) throws RedisException;

	Long ttl(String key) throws RedisException;

	Long incrBy(String key, Long offset) throws RedisException;

	Long incrBy(String key, Long offset, int ttl) throws RedisException;

	Long expire(String key, int ttl) throws RedisException;

	Long expire(byte[] key, int ttl) throws RedisException;

	boolean exists(String key) throws RedisException;

	String save() throws RedisException;

	String bgsave() throws RedisException;

	void unLock(String key);

	void lock(String key);

	boolean tryLock(String key, long timeout, TimeUnit unit);

	boolean tryLock(String key);

}
