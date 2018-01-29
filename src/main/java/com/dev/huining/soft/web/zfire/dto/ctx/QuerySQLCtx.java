package com.dev.huining.soft.web.zfire.dto.ctx;

import com.dev.huining.soft.web.zfire.utils.ConstantUtils;
import org.apache.commons.lang.StringUtils;

import java.util.Arrays;
import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-9-10
 * Time: 下午8:15
 */
public class QuerySQLCtx {
	private String sql;
	private List<String> conditions;
	private List<Integer> types;
	private List<Object> args;
	private boolean limitFlag;
	private int start;
	private int limit;


	public QuerySQLCtx() {
		this.start = 0;
		this.limit = -1;
	}

	public QuerySQLCtx(String sql, List<String> conditions, List<Object> args, List<Integer> types) {
		this.sql = sql;
		this.args = args;
		this.conditions = conditions;
		this.types = types;
		this.start = 0;
		this.limit = -1;
		if (StringUtils.isNotBlank(sql)) {
			int limitIndex = this.sql.indexOf(ConstantUtils.PLACE_OF_LIMIT);
			this.limitFlag = limitIndex > 0 ? true : false;
		}
	}

	public String getJoinQuerysql() {
		String restriction = catQueryConditions(conditions, limitFlag);
		return joinQueryRestriction(sql, restriction);
	}

	public String getPageQuerysql(int start, int limit) {
		String query = getJoinQuerysql();
		if (StringUtils.isBlank(query)) return query;
		if (limit < 0) return query;
		if (start < 0) start = 0;
		StringBuffer limitQuery = new StringBuffer(query);
		limitQuery.append(" limit ");
		limitQuery.append(start).append(",").append(limit).append(" ");
		return limitQuery.toString();
	}

	public String getPageQuerysql() {
		String query = getJoinQuerysql();
		if (StringUtils.isBlank(query)) return query;
		if (limit < 0) return query;
		if (start < 0) start = 0;
		StringBuffer limitQuery = new StringBuffer(query);
		limitQuery.append(" limit ");
		limitQuery.append(start).append(",").append(limit).append(" ");
		return limitQuery.toString();
	}

	public String getTotalRowQuerysql() {
		String query = getJoinQuerysql();
		if (StringUtils.isBlank(query)) return query;
		if (limitFlag) {
			StringBuffer buffer = new StringBuffer(" SELECT COUNT(*) FROM ( ").append(query).append(" ) _V ");
			return buffer.toString();
		}
		return query.replaceFirst("\\*", "COUNT(*)");
	}

	private static String catQueryConditions(List<String> conditions, boolean limitFlag) {
		String restriction = "";
		if (conditions == null) return restriction;
		int i = 0;
		for (String str : conditions) {
			if (!limitFlag) {
				int index = str.indexOf(".");
				if (index > 0)
					str = str.substring(index + 1, str.length());
			}
			if (i == 0) restriction += str;
			else restriction += " and " + str;
			i++;
		}
		return restriction;
	}

	private static String joinQueryRestriction(String sql, String restriction) {
		if (StringUtils.isBlank(sql)) return sql;

		int limitIndex = sql.indexOf(ConstantUtils.PLACE_OF_LIMIT);
		StringBuffer buffer = new StringBuffer(sql);
		if (limitIndex > 0) {
			if (StringUtils.isBlank(restriction)) restriction = "1=1";
			String preSql = buffer.substring(0, limitIndex).trim();
			if (preSql.endsWith(ConstantUtils.SQL_OF_WHERE)
					|| preSql.endsWith(ConstantUtils.SQL_OF_AND)
					|| preSql.endsWith(ConstantUtils.SQL_OF_OR)) {
				buffer.replace(limitIndex, limitIndex + ConstantUtils.PLACE_OF_LIMIT.length(), restriction);
			} else {
				StringBuffer rest = new StringBuffer(ConstantUtils.SQL_OF_WHERE).append(" ").append(restriction);
				buffer.replace(limitIndex, limitIndex + ConstantUtils.PLACE_OF_LIMIT.length(), rest.toString());
			}

		} else {
			if (StringUtils.isNotBlank(restriction)) {
				buffer = new StringBuffer(" SELECT * FROM ( ").
						append(sql).append(" ) _V WHERE  ").append(restriction);
			}
		}
		return buffer.toString();
	}

	public Object[] getQueryArgs() {
		if (this.args == null) return new Object[]{};
		Object[] tempArgs = new Object[this.args.size()];
		for (int i = 0; i < this.args.size(); i++) {
			tempArgs[i] = this.args.get(i);
		}
		return tempArgs;
	}

	public int[] getArgsTypes() {
		if (this.types == null) return new int[]{};
		int[] tempTyps = new int[this.types.size()];
		for (int i = 0; i < this.types.size(); i++) {
			tempTyps[i] = this.types.get(i);
		}
		return tempTyps;
	}

	public List<Object> getArgs() {
		return args;
	}

	public void setArgs(List<Object> args) {
		this.args = args;
	}

	public List<String> getConditions() {
		return conditions;
	}

	public void setConditions(List<String> conditions) {
		this.conditions = conditions;
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public List<Integer> getTypes() {
		return types;
	}

	public void setTypes(List<Integer> types) {
		this.types = types;
	}

	public static void main(String[] args) {
		String[] tests = new String[]{"fff.eee", "aaaaaaa.bbbbbb", "cccccc.ddddd", "vvvvv.eeee"};
		System.out.println(catQueryConditions(Arrays.asList(tests), false));
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}
}
