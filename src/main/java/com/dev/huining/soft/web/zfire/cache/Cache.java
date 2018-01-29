package com.dev.huining.soft.web.zfire.cache;


import com.dev.huining.soft.web.zfire.exception.CacheException;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 上午8:42
 */
public interface Cache {

	/**
	 * @return
	 */
	String getName();

	/**
	 * @param name
	 */
	void setName(String name);

	/**
	 * 根据key获取缓存对应的值，默认使用hash结构存储，即：返回值是非基本数据类型、String类型
	 * 返回值必须是自定义entity类型，即：保存key时不能保存非自定义entity 类型
	 *
	 * @param key key 目前只支持Sring类型key
	 * @return
	 * @throws com.dev.huining.soft.web.zfire.exception.CacheException
	 */
	Object get(String key) throws CacheException;

	/**
	 * 设置缓存，存在则更新，不存在则创建
	 *
	 * @param key   目前只支持Sring类型key
	 * @param value 必须是自定义entity类型，即：保存key时不能保存非自定义entity 类型
	 * @throws CacheException
	 */
	void set(String key, Object value) throws CacheException;

	/**
	 * @param key
	 * @param value
	 * @param ttl   by seconds
	 * @throws CacheException
	 */
	void set(String key, Object value, int ttl) throws CacheException;

	/**
	 * 根据key删除对应缓存
	 *
	 * @param key 目前只支持Sring类型key
	 * @throws CacheException
	 */
	void delete(String key) throws CacheException;

	void deleteKeys(String pattern) throws CacheException;

	/**
	 * 设置key中，filed字段对应value，即：对某个Entity 的某个属性的value进行设置
	 * 若该key已存在，filed未存在则在原来key基础上新增该filed，filed已存在则对其value进行更新
	 *
	 * @param key   目前只支持Sring类型key
	 * @param field 字段名称
	 * @param value 缓存内容
	 * @throws CacheException
	 */
	@Deprecated
	void set(String key, String field, String value) throws CacheException;

	/**
	 * 根据Key，获取对应filed的value
	 *
	 * @param key   目前只支持Sring类型key
	 * @param field
	 * @return
	 * @throws CacheException
	 */
	@Deprecated
	String get(String key, String field) throws CacheException;

	Long keySize() throws CacheException;
}
