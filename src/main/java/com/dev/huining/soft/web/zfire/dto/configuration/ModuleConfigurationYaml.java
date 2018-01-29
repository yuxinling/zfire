package com.dev.huining.soft.web.zfire.dto.configuration;

import com.dev.huining.soft.web.zfire.file.yaml.SunYaml;

import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-14
 * Time: 下午5:58
 */
public class ModuleConfigurationYaml extends ModuleConfiguration {
	private ModuleConfiguration moduleConfiguration;

	public ModuleConfigurationYaml(String fileName) {
		SunYaml sunYaml = new SunYaml();
		moduleConfiguration = sunYaml.load(ModuleConfiguration.class, this.getClass().getClassLoader().getResourceAsStream(fileName));
	}

	public ModuleConfiguration getModuleConfiguration() {
		return moduleConfiguration;
	}

	public void setModuleConfiguration(ModuleConfiguration moduleConfiguration) {
		this.moduleConfiguration = moduleConfiguration;
	}

	@Override
	public Map<String, String> getModuleCodes() {
		return moduleConfiguration.getModuleCodes();
	}

	@Override
	public void setModuleCodes(Map<String, String> moduleCodes) {
		moduleConfiguration.setModuleCodes(moduleCodes);
	}
}
