package com.dev.huining.soft.web.zfire.dto.configuration;

import com.dev.huining.soft.web.zfire.cache.CacheConst;

import java.util.List;

/**
 * User: yu_xinling
 * Date: 14-5-17
 * Time: 下午3:22
 */
public class RedisConfiguration {
	private boolean sharding;
	private int shardingCount;
	private List<String> addressList;
	private int maxActiveCount;
	private String hashType;

	public RedisConfiguration() {
	}

	public String getHashType() {
		return hashType;
	}

	public void setHashType(String hashType) {
		this.hashType = hashType;
	}

	public boolean isSharding() {
		return sharding;
	}

	public void setSharding(boolean sharding) {
		this.sharding = sharding;
	}

	public int getShardingCount() {
		return shardingCount;
	}

	public void setShardingCount(int shardingCount) {
		this.shardingCount = shardingCount;
	}

	public List<String> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<String> addressList) {
		this.addressList = addressList;
	}

	public int getMaxActiveCount() {
		if (maxActiveCount < CacheConst.REDIS_DEFAULT_MAX_ACTIVE_COUNT) {
			return CacheConst.REDIS_DEFAULT_MAX_ACTIVE_COUNT;
		}
		return maxActiveCount;
	}

	public void setMaxActiveCount(int maxActiveCount) {
		this.maxActiveCount = maxActiveCount;
	}
}
