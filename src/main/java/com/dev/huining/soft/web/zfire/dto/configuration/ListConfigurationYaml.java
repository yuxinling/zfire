package com.dev.huining.soft.web.zfire.dto.configuration;

import com.dev.huining.soft.web.zfire.dto.ListConfig;
import com.dev.huining.soft.web.zfire.dto.cache.ListConfigCache;
import com.dev.huining.soft.web.zfire.file.yaml.SunYaml;
import com.dev.huining.soft.web.zfire.utils.ConstantUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-28
 * Time: 上午10:28
 */
public class ListConfigurationYaml extends ListConfiguration {
	private ListConfiguration listConfiguration;

	public ListConfigurationYaml(String fileName) {
		SunYaml sunYaml = new SunYaml();
		listConfiguration = sunYaml.load(ListConfiguration.class, this.getClass().getClassLoader().getResourceAsStream(fileName));
	}

	public ListConfiguration getListConfiguration() {
		return listConfiguration;
	}

	public void setListConfiguration(ListConfiguration listConfiguration) {
		this.listConfiguration = listConfiguration;
	}


	@Override
	public List<ListConfig> getListConfigs() {
		return listConfiguration.getListConfigs();
	}

	@Override
	public void setListConfigs(List<ListConfig> listConfigs) {
		listConfiguration.setListConfigs(listConfigs);
	}

	public Map<String,ListConfig> getListConfigMap() {
		Map<String, ListConfig> listConfigMap = new HashMap<String, ListConfig>();
		if(this.getListConfigs() != null) {
			for (ListConfig listConfig : this.getListConfigs()) {
				listConfigMap.put(listConfig.getId(), listConfig);
			}
		}
		return listConfigMap;
	}

	public Map<String,ListConfig> getListConfigCacheMap() {
		Map<String, ListConfig> listConfigMap = new HashMap<String, ListConfig>();
		if(this.getListConfigs() != null) {
			for (ListConfig listConfig : this.getListConfigs()) {
				listConfigMap.put(listConfig.getId(), new ListConfigCache(listConfig));
			}
		}
		return listConfigMap;
	}


	public static void main(String[] args) {
		ListConfigurationYaml yaml = new ListConfigurationYaml(ConstantUtils.LIST_CONFIG_FILE);

		System.out.print(yaml.getListConfigCacheMap());
	}
}
