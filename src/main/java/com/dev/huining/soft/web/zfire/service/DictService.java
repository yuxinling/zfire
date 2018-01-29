package com.dev.huining.soft.web.zfire.service;

import com.dev.huining.soft.web.zfire.dao.HibernateBaseDAO;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.pojo.entity.SysDict;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: yu_xinling
 * Date: 13-8-11
 * Time: 上午12:22
 */
@Service
public class DictService {
	@Resource
	private HibernateBaseDAO hdao;

	public void addDict(){

	}

	public void deleteDict(){

	}

	public void updateDict(){

	}

	public List<SysDict> queryDicts() {
		List<SysDict> dicts = hdao.find("from SysDict o order by o.sys,o.dictno,o.dkey");
		return dicts;
	}

	public Result queryDictByNo(Parameter params){
		return null;
	}

}
