package com.dev.huining.soft.web.zfire.dao;

import com.dev.huining.soft.web.zfire.dto.ctx.QuerySQLCtx;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-9-1
 * Time: 下午3:48
 */
public interface JdbcBaseDao {
	public SqlRowSet queryRowSet(String sql);
	public <T> List<T> query(String sql,RowMapper rowMapper);
	public <T> List<T> query(String sql, Object[] args, int[] types, RowMapper rowMapper);
	public <T> List<T> query(QuerySQLCtx querySQLCtx,RowMapper rowMapper);

	public int totalCount(QuerySQLCtx querySQLCtx);

}
