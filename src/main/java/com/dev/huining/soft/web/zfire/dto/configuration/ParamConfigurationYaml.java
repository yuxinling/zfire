package com.dev.huining.soft.web.zfire.dto.configuration;

import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.file.yaml.SunYaml;
import com.dev.huining.soft.web.zfire.utils.ConstantUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;

import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-14
 * Time: 下午5:58
 */
public class ParamConfigurationYaml extends ParamConfiguration {
	private ParamConfiguration paramConfiguration;

	public ParamConfigurationYaml(String fileName) {
		SunYaml sunYaml = new SunYaml();
		paramConfiguration = sunYaml.load(ParamConfiguration.class, this.getClass().getClassLoader().getResourceAsStream(fileName));
	}

	public ParamConfiguration getParamConfiguration() {
		return paramConfiguration;
	}

	public void setParamConfiguration(ParamConfiguration paramConfiguration) {
		this.paramConfiguration = paramConfiguration;
	}

	@Override
	public void setDefaultParams(Map defaultParams) {
		paramConfiguration.setDefaultParams(defaultParams);
	}

	@Override
	public Map getDefaultParams() {
		return paramConfiguration.getDefaultParams();
	}

	public Parameter getDefaultParameter() {
		Parameter defaultParams = new Parameter();
		Map paramMap = getDefaultParams();
		for (Object key : paramMap.keySet()) {
			defaultParams.setProperty((String) key, paramMap.get(key));
		}
		return defaultParams;
	}

	public static void main(String[] args) {
		ParamConfigurationYaml yaml = new ParamConfigurationYaml(ConstantUtils.DEF_PARAM_FILE);
		System.out.print(JsonUtils.formatJSONObj(yaml.getParamConfiguration().getDefaultParams()));

	}


}
