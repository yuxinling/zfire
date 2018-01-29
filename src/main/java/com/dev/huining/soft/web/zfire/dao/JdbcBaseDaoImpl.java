package com.dev.huining.soft.web.zfire.dao;

import com.dev.huining.soft.web.zfire.dto.ctx.QuerySQLCtx;
import com.dev.huining.soft.web.zfire.utils.JsonUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 下午3:49
 */
@Component
public class JdbcBaseDaoImpl implements JdbcBaseDao {
	private final static Logger logger = LoggerFactory.getLogger(JdbcBaseDaoImpl.class);

	@Resource
    private JdbcTemplate jdbcTemplate;

    public void execute(String sql){
        jdbcTemplate.execute(sql);
    }

    public void update(String sql){
        jdbcTemplate.update(sql);
    }

    public <T> List<T> query(String sql,RowMapper rowMapper) {
		logger.debug("Execute sql : " + sql);
		return jdbcTemplate.query(sql, new Object[]{}, rowMapper);
	}

	public <T> List<T> query(String sql, Object[] args, int[] types, RowMapper rowMapper) {
		return jdbcTemplate.query(sql, args, types, rowMapper);
	}

	@Override
	public <T> List<T> query(QuerySQLCtx querySQLCtx,RowMapper rowMapper) {
		Assert.notNull(querySQLCtx, "querySQLCtx is must not null.");
		String sql = querySQLCtx.getPageQuerysql();
		Object[] args = querySQLCtx.getQueryArgs();
		int[] types = querySQLCtx.getArgsTypes();
		Assert.hasLength(sql, "sql is must not empty.");
		logger.debug("Execute sql : " + sql);
		logger.debug("Execute args : " + JsonUtils.formatJSONObj(args));
		logger.debug("Execute types : " + JsonUtils.formatJSONObj(types));
		return jdbcTemplate.query(sql, querySQLCtx.getQueryArgs(), querySQLCtx.getArgsTypes(), rowMapper);
	}

	@Override
	public int totalCount(QuerySQLCtx querySQLCtx) {
		Assert.notNull(querySQLCtx, "querySQLCtx is must not null.");
		String sql = querySQLCtx.getTotalRowQuerysql();
		Object[] args = querySQLCtx.getQueryArgs();
		int[] types = querySQLCtx.getArgsTypes();
		Assert.hasLength(sql, "sql is must not empty.");
		logger.debug("Execute sql : " + sql);
		logger.debug("Execute args : " + JsonUtils.formatJSONObj(args));
		logger.debug("Execute types : " + JsonUtils.formatJSONObj(types));
		SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, querySQLCtx.getQueryArgs(), querySQLCtx.getArgsTypes());
		rowSet.next();
		return rowSet.getInt(1);
	}

	public SqlRowSet queryRowSet(String sql) {
		Assert.hasLength(sql, "sql is must not empty.");
		return jdbcTemplate.queryForRowSet(sql);
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
}
