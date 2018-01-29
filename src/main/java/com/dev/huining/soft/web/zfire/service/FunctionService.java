package com.dev.huining.soft.web.zfire.service;

import com.dev.huining.soft.web.zfire.dao.HibernateBaseDAO;
import com.dev.huining.soft.web.zfire.dao.JdbcBaseDao;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.ctx.QuerySQLCtx;
import com.dev.huining.soft.web.zfire.pojo.entity.*;
import com.dev.huining.soft.web.zfire.utils.BeanUtils;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.jdbc.support.rowset.SqlRowSetMetaData;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-8-11
 * Time: 上午12:21
 */
@Service
public class FunctionService {
	@Resource
	private HibernateBaseDAO hdao;

	@Resource
	private JdbcBaseDao jdao;

	public Result addUccfg(Parameter params) {
		Result result = new Result();

		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		SysUccfg ucCfg = new SysUccfg();

		BeanUtils.fillBeanValue(paramMaps, ucCfg);
//		BeanUtils.fillBeanValue(params, ucCfg);
		if (StringUtils.isBlank(ucCfg.getId())) {
			ucCfg.setId(CommonUtils.uuid());
		}

		if(StringUtils.isNotBlank(ucCfg.getUcName()))
			ucCfg.setUcName(ucCfg.getUcName().toUpperCase());
		hdao.save(ucCfg);
		return result;
	}

    public void deleteUccfg(Parameter parameter) {
		String id = (String) parameter.getProperty("ucid");
		hdao.deleteByKey(SysUccfg.class, id);
	}

    public Result updateUccfg(Parameter params){
		Result result = new Result();
		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);

		String ucId = (String) paramMaps.get("ucId");
		SysUccfg ucCfg = (SysUccfg) hdao.get(SysUccfg.class, ucId);
		BeanUtils.fillBeanValue(paramMaps, ucCfg);

		String type = (String) paramMaps.get("type");
		String csql = (String) paramMaps.get("csql");
		if(StringUtils.isBlank(type) && StringUtils.isBlank(csql)) {
			SysSqlcfg sqlcfg = this.querySqlcfg(ucId);
			if(sqlcfg != null) hdao.delete(sqlcfg);
		}else{
			SysSqlcfg sqlcfg = null;
			String sqlId = (String) paramMaps.get("sqlId");
			if(StringUtils.isBlank(sqlId)){
				sqlcfg = new SysSqlcfg();
				sqlcfg.setId(CommonUtils.uuid());
			}else sqlcfg = (SysSqlcfg) hdao.get(SysSqlcfg.class, sqlId);
			BeanUtils.fillBeanValue(paramMaps, sqlcfg);
			hdao.saveOrUpdate(sqlcfg);
		}
		hdao.saveOrUpdate(ucCfg);
		return result;
	}

    public void queryUccfg(Parameter parameter){
		String id = (String) parameter.getProperty("ucid");
		SysUccfg ucCfg = (SysUccfg) hdao.get(SysUccfg.class, id);
		System.out.println(JsonUtils.formatJSONObj(ucCfg));
    }


	/**
	 * ucId:对应的uc的id
	 * type:1-sql,2-存储过程
	 * @param parameter
	 */
	public void addSqlcfg(Parameter parameter) {

		SysSqlcfg sqlcfg = new SysSqlcfg();
		BeanUtils.fillBeanValue(parameter, sqlcfg);
		Assert.hasLength(sqlcfg.getUcId(), "UC id is required");
		if (StringUtils.isBlank(sqlcfg.getId())) {
			sqlcfg.setId(CommonUtils.uuid());
		}
		hdao.save(sqlcfg);
	}

	public void deleteSqlcfg(Parameter parameter) {
		String id = (String) parameter.getProperty("sqlid");
		hdao.deleteByKey(SysSqlcfg.class, id);
	}

	public void updateSqlcfg(Parameter parameter) {
		String id = (String) parameter.getProperty("sqlid");
		SysSqlcfg sqlcfg = (SysSqlcfg) hdao.get(SysSqlcfg.class, id);
		BeanUtils.fillBeanValue(parameter, sqlcfg);
		hdao.saveOrUpdate(sqlcfg);
	}

	public void querySqlcfg(Parameter parameter){


	}
	//TODO cvs
	public Result addCvscfg(Parameter params) {
		Result result = new Result();

		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		SysCvscfg cvscfg = null;
		String id = (String) paramMaps.get("id");
		if(StringUtils.isBlank(id)) {
			cvscfg = new SysCvscfg();
			cvscfg.setId(CommonUtils.uuid());
		}else  cvscfg = (SysCvscfg) hdao.get(SysCvscfg.class, id);

		BeanUtils.fillBeanValue(paramMaps, cvscfg, new String[]{"id"});
		hdao.saveOrUpdate(cvscfg);

		return result;
	}
	public void deleteCvscfg(Parameter parameter) {
		String id = (String) parameter.getProperty("cvsid");
		hdao.deleteByKey(SysCvscfg.class, id);
	}

	public void updateCvscfg(Parameter parameter) {
		String id = (String) parameter.getProperty("cvsid");
		SysCvscfg cvscfg = (SysCvscfg) hdao.get(SysCvscfg.class, id);
		BeanUtils.fillBeanValue(parameter, cvscfg);
	}
	public void queryCvscfg(Parameter parameter){

	}

    //TODO view
	public Result addViewcfg(Parameter params) {
		Result result = new Result();

		String data = (String) params.getProperty("data");
		Map paramMaps = JsonUtils.parseJSONObj(data, Map.class);
		SysViewcfg viewcfg = null;

		String id = (String) paramMaps.get("id");
		if(StringUtils.isBlank(id)) {
			viewcfg = new SysViewcfg();
			viewcfg.setId(CommonUtils.uuid());
		}else viewcfg = (SysViewcfg) hdao.get(SysViewcfg.class, id);

		BeanUtils.fillBeanValue(paramMaps, viewcfg,new String[]{"id"});
		hdao.saveOrUpdate(viewcfg);
		return result;
	}
	public void deleteViewcfg(Parameter parameter){
		String id = (String) parameter.getProperty("viewid");
		hdao.deleteByKey(SysViewcfg.class, id);
	}

	public Result updateViewcfg(Parameter parameter) {
		Result result = new Result();

		String id = (String) parameter.getProperty("viewid");
		SysViewcfg viewcfg = (SysViewcfg) hdao.get(SysViewcfg.class, id);
		BeanUtils.fillBeanValue(parameter, viewcfg);


		hdao.saveOrUpdate(viewcfg);

		return result;
	}
	public void queryViewcfg(Parameter parameter){

	}

	public Result updateUcCvsView(Parameter parameter) {
		Result result = new Result();
		String ucid = (String) parameter.getProperty("ucid");
		Assert.hasLength(ucid, "UC id is required.");

		SysSqlcfg sqlcfg = (SysSqlcfg) hdao.findUniqueEntity("from SysSqlcfg o where o.ucId = ?", new Object[]{ucid});
		Assert.notNull(sqlcfg, "Does not exist uc id is " + ucid + " SysSqlcfg.");
		Assert.hasLength(sqlcfg.getCsql(), "sql is empty.");

		QuerySQLCtx querySQLCtx = new QuerySQLCtx();
		querySQLCtx.setSql(sqlcfg.getCsql().toUpperCase());
		SqlRowSet rowSet = jdao.queryRowSet(querySQLCtx.getJoinQuerysql());

		SqlRowSetMetaData metaData = rowSet.getMetaData();
		int columnCount = metaData.getColumnCount();

		for (int i = 1; i <= columnCount; i++) {
			SysCvscfg cvscfg = new SysCvscfg();

			cvscfg.setId(CommonUtils.uuid());
			cvscfg.setUcId(ucid);
			cvscfg.setFlag(2);

//			String catalogName = metaData.getCatalogName(i);
			String columnClassName = metaData.getColumnClassName(i);
//			int columnDisplaySize = metaData.getColumnDisplaySize(i);
//			String columnLable = metaData.getColumnLabel(i);
			String columnName = metaData.getColumnName(i);
			int columnType = metaData.getColumnType(i);
			String columnTypeName = metaData.getColumnTypeName(i);
			int precision = metaData.getPrecision(i);

//			int scale = metaData.getScale(i);
//			String schemaName = metaData.getSchemaName(i);
			String table = metaData.getTableName(i);
			cvscfg.setProperty(CommonUtils.fieldProperty(columnName));

			String field = table + "." + columnName;
			cvscfg.setField(field.toUpperCase());
			cvscfg.setInType(1);

			cvscfg.setFieldLen(precision);
			cvscfg.setFieldType(columnType);
			cvscfg.setFieldTypeName(columnTypeName);
			cvscfg.setJavaType(columnClassName);

			String hql = "from SysCvscfg o where o.ucId = ? and o.flag = ? and field = ? and o.property = ?";
			Object[] values = new Object[]{ucid, cvscfg.getFlag(), cvscfg.getField(), cvscfg.getProperty()};

			List list = hdao.find(hql, values);
			if (list == null || list.size() == 0) {
				cvscfg.setId(CommonUtils.uuid());
				hdao.save(cvscfg);
			} else cvscfg = (SysCvscfg) list.get(0);

			SysViewcfg viewcfg = new SysViewcfg();

			viewcfg.setUcId(ucid);
			viewcfg.setCvsId(cvscfg.getId());
			viewcfg.setLevel(0);
			viewcfg.setTitle(cvscfg.getProperty());
			viewcfg.setDataType(0);
			viewcfg.setSort(200);
			viewcfg.setAlign("center");
			viewcfg.setViewFlag("DEFAULT");

			hql = "from SysViewcfg o where o.ucId = ? and o.cvsId = ?";
			values = new Object[]{viewcfg.getUcId(), viewcfg.getCvsId()};

			list = hdao.find(hql, values);
			if (list == null || list.size() == 0) {
				viewcfg.setId(CommonUtils.uuid());
				hdao.save(viewcfg);
			}
		}
		System.out.println("data:" + JsonUtils.formatJSONObj(metaData));
		return result;
	}

	public List<SysUccfg> queryUccfgs(){
		List<SysUccfg> uccfgs = hdao.find("from SysUccfg");
		return uccfgs;
	}

	public SysSqlcfg querySqlcfg(String ucid){
		Assert.hasLength(ucid,"UC id is required.");
		SysSqlcfg sqlcfg = (SysSqlcfg) hdao.findUniqueEntity("from SysSqlcfg o where o.ucId = ?", new Object[]{ucid});
		return sqlcfg;
	}

	public List<SysCvscfg> queryCvscfgs(String ucid){
		Assert.hasLength(ucid,"UC id is required.");
		List<SysCvscfg> cvscfgs = hdao.find("from SysCvscfg o where o.ucId = ? order by o.property ", new Object[]{ucid});
		return cvscfgs;
	}

	public SysCvscfg queryCvscfg(String cvsid){
		Assert.hasLength(cvsid,"CVSID id is required.");
		SysCvscfg cvscfg = (SysCvscfg) hdao.get(SysCvscfg.class, cvsid);
		return cvscfg;
	}

	public List<SysViewcfg> queryViewcfgs(String ucid){
		Assert.hasLength(ucid,"UC id is required.");
		List<SysViewcfg> viewcfgs = hdao.find("from SysViewcfg o where o.ucId = ? order by o.viewFlag,o.sort", new Object[]{ucid});
//		List<SysViewcfg> viewcfgs = hdao.find("from SysViewcfg o where o.ucId = ? order by o.sort", new Object[]{ucid});
		return viewcfgs;
	}

	public List<SysCvscfg> queryCvscfgs(){
		List<SysCvscfg> cvscfgs = hdao.find("from SysCvscfg o  order by o.property ");
		return cvscfgs;
	}

	public void updateCvscfgs(SysCvscfg cvscfg){
		hdao.update(cvscfg);
	}
}
