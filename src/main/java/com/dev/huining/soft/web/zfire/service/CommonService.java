package com.dev.huining.soft.web.zfire.service;

import com.dev.huining.soft.web.zfire.cache.SystemCache;
import com.dev.huining.soft.web.zfire.dao.JdbcBaseDao;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.base.IRow;
import com.dev.huining.soft.web.zfire.dto.base.IRowSet;
import com.dev.huining.soft.web.zfire.dto.cache.ViewCfg;
import com.dev.huining.soft.web.zfire.dto.ctx.OptExpression;
import com.dev.huining.soft.web.zfire.dto.ctx.QuerySQLCtx;
import com.dev.huining.soft.web.zfire.pojo.entity.SysCvscfg;
import com.dev.huining.soft.web.zfire.pojo.entity.SysDict;
import com.dev.huining.soft.web.zfire.pojo.entity.SysSqlcfg;
import com.dev.huining.soft.web.zfire.pojo.entity.SysViewcfg;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;

import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-5
 * Time: 下午8:37
 */
@Service
public class CommonService {
	@Resource
	private JdbcBaseDao jdao;
	@Resource
	private SystemCache cache;

	/**
	 * @param parameter
	 */
	public Result query(Parameter parameter) {
		Result result = new Result();
		//TODO 根据用户的配置，对用户的字段的控制
		String uc = (String) parameter.getProperty("ucname");
		String viewFlag = (String) parameter.getProperty("viewflag");

		int pageFlag = CommonUtils.parserToInt(parameter.getProperty("pageflag"));
		int totalRow = CommonUtils.parserToInt(parameter.getProperty("totalrow"));
		int pageRow = CommonUtils.parserToInt(parameter.getProperty("pagerow"));
		int pageNumber = CommonUtils.parserToInt(parameter.getProperty("pagenumber"));

		//uc
		//SysUccfg uccfg = cache.getCacheUccfg(uc);
		//sql
		SysSqlcfg sqlcfg = cache.getCacheSqlcfg(uc);
		//cvs
		Map<String, SysCvscfg> cvscfgMap = cache.getCacheSysCvscfg(uc, "2");
		//view
		List<ViewCfg> viewcfgs = cache.getCacheSysViewcfg(uc, viewFlag);
		QuerySQLCtx querySQLCtx = parseMySql(parameter, sqlcfg, cache.getCacheSysCvscfg(uc, "1"));

		if (pageFlag == 1 && totalRow == 0) {
			totalRow = jdao.totalCount(querySQLCtx);
		}
		if (pageFlag == 1) {
			if(pageNumber <=0 ) pageNumber = 1;
			querySQLCtx.setStart((pageNumber - 1) * pageRow);
			querySQLCtx.setLimit(pageRow);
		}
		List<Map<String, Object>> fieldRows = jdao.query(querySQLCtx, new IRowMapper(cvscfgMap));
//		List<Map<String, Object>> resultRows = propertyValue(fieldRows, viewcfgs, cvscfgMap);
		List<IRow> resultRows = propertyValue(fieldRows, viewcfgs, cvscfgMap);

		if(pageFlag != 1) totalRow = resultRows.size();

		IRowSet rowSet = new IRowSet();
		rowSet.setRows(resultRows);
		rowSet.setTotal(totalRow);
		if(pageFlag == 1){
			rowSet.setRowCount(pageRow);
			rowSet.setPageNum(pageNumber);
		}else{
			rowSet.setRowCount(totalRow);
			rowSet.setPageNum(1);
		}
		rowSet.setPageFlag(pageFlag);

//		System.out.println("total size:" + totalRow);
//		System.out.println("data size:" + fieldRows.size());
//		System.out.println("data size:" + resultRows.size());
//
//		System.out.println("data:" + JsonUtils.formatJSONObj(fieldRows));
//		System.out.println("data:" + JsonUtils.formatJSONObj(resultRows));

		result.setData(rowSet);
		return result;
	}


	private QuerySQLCtx parseMySql(Parameter parameter, SysSqlcfg sqlcfg, Map<String, SysCvscfg> cvscfgMap) {
		//参数
		Assert.notNull(parameter, "parameter is null.");
		Assert.notNull(sqlcfg, "Sqlcfg is null.");
		Assert.hasLength(sqlcfg.getCsql(), "sql is empty.");

		String sql = sqlcfg.getCsql().toUpperCase();

		List<String> conditions = new ArrayList<String>();
		List<Object> values = new ArrayList<Object>();
		List<Integer> types = new ArrayList<Integer>();

		if (cvscfgMap == null) cvscfgMap = new HashMap<String, SysCvscfg>();
		for (Map.Entry<String, SysCvscfg> entry : cvscfgMap.entrySet()) {
			SysCvscfg cvscfg = entry.getValue();
			if (cvscfg.getInType() == 1) continue;
			if (cvscfg.getInType() == 2) {

				String property = cvscfg.getProperty();
				Object paramValue = parameter.getProperty(property);
				if (paramValue == null) continue;

				OptExpression expression = OptExpression.fromInt(cvscfg.getResType());
				if (expression == null) continue;

				switch (expression) {
					case like:
						conditions.add(cvscfg.getField() + expression.getExpression());
						values.add("%" + paramValue + "%");
						types.add(cvscfg.getFieldType());
						break;
					case rLike:
						conditions.add(cvscfg.getField() + expression.getExpression());
						values.add(paramValue + "%");
						types.add(cvscfg.getFieldType());
						break;
					case lLike:
						conditions.add(cvscfg.getField() + expression.getExpression());
						values.add("%" + paramValue);
						types.add(cvscfg.getFieldType());
						break;
					case in:
					case notIn:
						String param = paramValue.toString().trim();
						String[] params = param.split(",");
						String rest = "";
						int i = 0;
						for (String value : params) {
							if (i == 0) rest = "?";
							else rest += ",?";
							values.add(value);
							types.add(cvscfg.getFieldType());
							i++;
						}
						conditions.add(cvscfg.getField() + expression.getExpression().replaceAll("\\?", rest));
						break;
					case isNull:
					case isNotNull:
						conditions.add(cvscfg.getField() + expression.getExpression());
						break;
					default:
						conditions.add(cvscfg.getField() + expression.getExpression());
						values.add(paramValue);
						types.add(cvscfg.getFieldType());
						break;
				}
			}
		}

		QuerySQLCtx querySQLCtx = new QuerySQLCtx(sql, conditions, values, types);
		return querySQLCtx;
	}

	/**
	 * 1、将数据库RowSet转换成显示的 property - value
	 * 2、数据显示的格式化（日期，数字、字典）
	 * @param fieldRows 数据库查询出来的Rowset
	 * @param viewcfgs uc配置中的view
	 * @param cvscfgMap uc配置中的cvs
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private List<IRow> propertyValue(List<Map<String, Object>> fieldRows,
									 List<ViewCfg> viewcfgs,
									 Map<String, SysCvscfg> cvscfgMap) {

		List<IRow> propertyValueMaps = new ArrayList<IRow>();

		for (Map<String, Object> fieldValueMap : fieldRows) {
			IRow propertyValueMap = new IRow();
			for (SysViewcfg viewcfg : viewcfgs) {
				SysCvscfg cvscfg = cvscfgMap.get(viewcfg.getCvsId());
				Object value = fieldValueMap.get(cvscfg.getField());
				
				//字典
				String dictNoKey = viewcfg.getDictNo();
				if(StringUtils.isNotBlank(dictNoKey) && value != null){
					SysDict dict = cache.getCacheDict(dictNoKey, String.valueOf(value));
					if(dict != null)value = dict.getDvalue();
				}
				
				
				propertyValueMap.put(cvscfg.getProperty(), value);
			}
			propertyValueMaps.add(propertyValueMap);
		}
		return propertyValueMaps;
	}

	protected class IRowMapper implements RowMapper {
		private Map<String, SysCvscfg> cvscfgMap;

		IRowMapper(Map<String, SysCvscfg> cvscfgMap) {
			this.cvscfgMap = cvscfgMap;
		}

		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {

			Map fieldValueMap = new HashMap<String, Object>();
			for (Map.Entry<String, SysCvscfg> entry : cvscfgMap.entrySet()) {
				SysCvscfg cvscfg = entry.getValue();
				fieldValueMap.put(cvscfg.getField(), rs.getObject(cvscfg.getField()));
			}
			return fieldValueMap;
		}
	}

	/**
	 * 根据字典编号，获取字典数据
	 * @param params
	 * @return
	 */
	public Result queryDictByNo(Parameter params) {
		Result result = new Result();
		String dictno = (String) params.getProperty("dictno");
		if(StringUtils.isNotBlank(dictno)){
			if(dictno.trim().length() == 4) /*dictno = "ZFIRE" + */dictno.trim();
			List<SysDict> dicts = cache.getCacheDicts(dictno);
			result.setResult("dicts", dicts);
		}
		return result;
	}

	/**
	 * 刷新缓存
	 * @param params
	 * dict,ucCfg,pageCfg
	 * @return
	 */
	public Result reloadCaches(Parameter params) {
		Result resultSet = new Result();
		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		List<String> reCaches = (List<String>) paramMaps.get("reCache");
		if(reCaches != null){
			//reload all reCaches.size() == 0
			//dict,ucCfg,pageCfg,layoutCfg
			if(reCaches.contains("dict") || reCaches.size() == 0) {
				this.cache.initDictCache();
			}
			if(reCaches.contains("ucCfg") || reCaches.size() == 0) {
				this.cache.initFunctionCache();
			}
			if(reCaches.contains("pageCfg") || reCaches.size() == 0) {
				this.cache.initPageCache();
			}
			if(reCaches.contains("layoutCfg") || reCaches.size() == 0) {
				this.cache.initLayoutRelationCache();
			}
		}
		return resultSet;
	}


	public static void main(String[] args) {
//		String sql = "select * from sys_user @where1=1 order by username ";
		String test = "";
		for (int i = 0; i < 4; i++) {
			if (i == 0) test = "?";
			else test += ",?";
		}
		System.out.print(test);
	}


}
