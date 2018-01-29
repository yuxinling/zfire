package com.dev.huining.soft.web.zfire.dto.ctx;

/**
 * User: yu_xinling
 * Date: 13-9-8
 * Time: 下午5:03
 */
public enum OptExpression {
	eq(0, " = ? "),
	ne(1, " <> ? "),
	gt(2, " > ? "),
	lt(3, " < ? "),
	le(4, "<= ? "),
	ge(5, " >= ? "),
	like(6, " like ? "),
	rLike(7, " like ? "),
	lLike(8, " like ? "),
	in(9, " in ( ? ) "),
	notIn(10, " not in ( ? ) "),
	isNull(11, " is null "),
	isNotNull(12, " is not null "),
	and(13, " and ? "),
	or(14, "or ? ");

	private String expression;
	private int type;

	OptExpression(int type, String expression) {
		this.type = type;
		this.expression = expression;
	}

	public String getExpression() {
		return expression;
	}

	public int getType() {
		return type;
	}

	public static OptExpression fromInt(int type) {
		if (type < 0 || type > 14) return null;

		if (type == 0)
			return eq;
		if (type == 1)
			return ne;
		if (type == 2)
			return gt;
		if (type == 3)
			return lt;
		if (type == 4)
			return le;
		if (type == 5)
			return ge;
		if (type == 6)
			return like;
		if (type == 7)
			return rLike;
		if (type == 8)
			return lLike;
		if (type == 9)
			return in;
		if (type == 10)
			return notIn;
		if (type == 11)
			return isNull;
		if (type == 12)
			return isNotNull;
		if (type == 13)
			return and;
		if (type == 14)
			return or;
		return eq;
	}
}