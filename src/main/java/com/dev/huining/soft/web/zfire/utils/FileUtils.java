package com.dev.huining.soft.web.zfire.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * User: yu_xinling
 * Date: 13-9-7
 * Time: 上午9:27
 */
public class FileUtils {
	private final static Logger logger = LoggerFactory.getLogger(FileUtils.class);

	public static Properties loadPropertiesFile(String fileName) {
		Properties properties = new Properties();
		try {
			InputStream in = FileUtils.class.getClassLoader().getResourceAsStream(fileName);
			properties.load(in);
		} catch (IOException e) {
			e.printStackTrace();
			logger.error("Load default parameter properties file occur error:" + e.getMessage());
		}
		return properties;
	}
}
