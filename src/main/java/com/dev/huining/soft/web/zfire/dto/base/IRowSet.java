package com.dev.huining.soft.web.zfire.dto.base;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-8-10
 * Time: 下午11:54
 */
public class IRowSet implements Iterator {

	private int total;// 总的记录数
	private int rowCount;//每页的记录数
	private int pageCount;//总页数
	private int pageNum;//当前的页码
	private int count;//当前页的记录数
	private int pageFlag;//是否分页

	private List<IRow> rows = null;
	private Iterator<IRow> rowIterator;

	public IRowSet() {
		super();
		rows = new ArrayList<IRow>();
		rowIterator = rows.iterator();
	}

	public List<IRow> getRows() {
		return this.rows;
	}

	public void setRows(Collection<IRow> value) {
		rows.addAll(value);
		this.rowIterator = rows.iterator();
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}

	public int getTotal() {
		return total;
	}

	public int getRowCount() {
		return rowCount;
	}

	public int getPageCount() {
		pageCount = 1;
		if (pageFlag == 1 && rowCount > 0) {
			pageCount = total / rowCount;
			if (total % rowCount > 0)
				pageCount = pageCount + 1;
		}
		return pageCount;
	}

	public int getPageNum() {
		return pageNum;
	}

	public int getCount() {
		this.count = this.rows.size();
		return count;
	}

	public int getPageFlag() {
		return pageFlag;
	}

	@Override
	 public boolean hasNext() {
		return this.rowIterator.hasNext();
	}

	@Override
	public Object next() {
		return this.rowIterator.next();
	}

	@Override
	public void remove() {
		this.rowIterator.remove();
	}

}
