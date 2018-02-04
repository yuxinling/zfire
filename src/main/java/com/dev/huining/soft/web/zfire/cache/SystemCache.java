package com.dev.huining.soft.web.zfire.cache;

import com.dev.huining.soft.web.zfire.dto.cache.LayoutCaseCfg;
import com.dev.huining.soft.web.zfire.dto.cache.PageCfg;
import com.dev.huining.soft.web.zfire.dto.cache.ViewCfg;
import com.dev.huining.soft.web.zfire.pojo.entity.*;
import com.dev.huining.soft.web.zfire.service.DictService;
import com.dev.huining.soft.web.zfire.service.FunctionService;
import com.dev.huining.soft.web.zfire.service.LayoutService;
import com.dev.huining.soft.web.zfire.service.PageService;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import com.dev.huining.soft.web.zfire.utils.ConstantUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cglib.beans.BeanCopier;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-8
 * Time: 上午10:15
 */
@Repository
public class SystemCache {
	private final static Logger logger = LoggerFactory.getLogger(SystemCache.class);

	private CacheManager cacheManager;
	private FunctionService functionService;
	private PageService pageService;
	private LayoutService layoutService;
	private DictService dictService;

	@Autowired
	public SystemCache(@Qualifier(CacheConst.CACHE_MEMORY) CacheManager cacheManager, FunctionService functionService,
					   PageService pageService, LayoutService layoutService,
					   DictService dictService) {

		System.out.println("正在初始化缓存服务......");

		this.cacheManager = cacheManager;
		this.functionService = functionService;
		this.pageService = pageService;
		this.layoutService = layoutService;
		this.dictService = dictService;
		initFunctionCache();
		initPageCache();
		initLayoutRelationCache();
		initDictCache();

		System.out.println("缓存加载完成.");
	}

	/**
	 * cache uc,sql,cvs,view
	 * Map<String,Object>
	 * key:uc name
	 * value:Map<String,Object>
	 * Key:uc/sql/cvs/view
	 * Value:uc/sql/Map<1/2,List<cvs>>/Map<view,List<View>>
	 */
	public void initFunctionCache() {
		logger.debug("Loading Function cache starting...");
		Cache cache = cacheManager.getOrCreateCache(ConstantUtils.SYSTEM_CACHE_NAME);
		cache.delete(ConstantUtils.FUNCTION_CACHE_NAME);
		Map<String, Object> functionCachMap = new HashMap<String, Object>();
		List<SysUccfg> uccfgs = functionService.queryUccfgs();
		if (uccfgs != null) {
			for (SysUccfg uccfg : uccfgs) {
				Map<String, Object> ucCachMap = new HashMap<String, Object>();
				//cache uc
				ucCachMap.put(ConstantUtils.UC_CACHE_NAME, uccfg);
				//cache sql
				SysSqlcfg sqlcfg = functionService.querySqlcfg(uccfg.getId());
				if (sqlcfg != null) ucCachMap.put(ConstantUtils.SQL_CACHE_NAME, sqlcfg);
				//cache cvs
				List<SysCvscfg> cvscfgs = functionService.queryCvscfgs(uccfg.getId());
				if (cvscfgs != null) {

					Map<String, Map<String, SysCvscfg>> cvsCacheMap = new HashMap<String, Map<String, SysCvscfg>>();
					for (SysCvscfg cvscfg : cvscfgs) {
						Map<String, SysCvscfg> cvscfgMapTemp = cvsCacheMap.get(cvscfg.getFlag() + "");
						if (cvscfgMapTemp == null) {
							cvscfgMapTemp = new HashMap<String, SysCvscfg>();
							cvsCacheMap.put(cvscfg.getFlag() + "", cvscfgMapTemp);
						}
						cvscfgMapTemp.put(cvscfg.getId(), cvscfg);
					}
					ucCachMap.put(ConstantUtils.CVS_CACHE_NAME, cvsCacheMap);
				}
				//cache view
				List<SysViewcfg> viewcfgs = functionService.queryViewcfgs(uccfg.getId());
				if (viewcfgs != null) {
					Map<String, List<ViewCfg>> viewCacheMap = new HashMap<String, List<ViewCfg>>();
					BeanCopier beanCopier = BeanCopier.create(SysViewcfg.class, ViewCfg.class, false);
					for (SysViewcfg viewcfg : viewcfgs) {
						List<ViewCfg> viewcfgsTemp = viewCacheMap.get(viewcfg.getViewFlag());
						if (viewcfgsTemp == null) {
							viewcfgsTemp = new ArrayList<ViewCfg>();
							viewCacheMap.put(viewcfg.getViewFlag(), viewcfgsTemp);
						}

						ViewCfg view = new ViewCfg();
						//TODO cpoy value
						beanCopier.copy(viewcfg, view, null);
						SysCvscfg cvscfg = functionService.queryCvscfg(view.getCvsId());
						view.setProperty(cvscfg.getProperty());
						viewcfgsTemp.add(view);
					}
					ucCachMap.put(ConstantUtils.VIEW_CACHE_NAME, viewCacheMap);
				}
				functionCachMap.put(uccfg.getUcName(), ucCachMap);
				functionCachMap.put(uccfg.getId(), ucCachMap);
			}
		}
		cache.set(ConstantUtils.FUNCTION_CACHE_NAME, functionCachMap);
		logger.debug("Loading Function cache finished ...");
	}

	public Map getCacheUcCacheMap(String uc) {
		Cache cache = cacheManager.getCache(ConstantUtils.SYSTEM_CACHE_NAME);
		Map functionCachMap = (Map) cache.get(ConstantUtils.FUNCTION_CACHE_NAME);
		Map ucCacheMap = (Map) functionCachMap.get(uc);
		return ucCacheMap;
	}

	public SysUccfg getCacheUccfg(String idOrName) {
		Cache cache = cacheManager.getCache(ConstantUtils.SYSTEM_CACHE_NAME);
		Map functionCachMap = (Map) cache.get(ConstantUtils.FUNCTION_CACHE_NAME);
		Map ucCacheMap = (Map) functionCachMap.get(idOrName);
		if (ucCacheMap == null) return null;
		//uc
		SysUccfg uccfg = (SysUccfg) ucCacheMap.get(ConstantUtils.UC_CACHE_NAME);
		return uccfg;
	}

	public SysSqlcfg getCacheSqlcfg(String uc) {
		Cache cache = cacheManager.getCache(ConstantUtils.SYSTEM_CACHE_NAME);
		Map functionCachMap = (Map) cache.get(ConstantUtils.FUNCTION_CACHE_NAME);
		Map ucCacheMap = (Map) functionCachMap.get(uc);
		if (ucCacheMap == null) return null;
		//sql
		SysSqlcfg sqlcfg = (SysSqlcfg) ucCacheMap.get(ConstantUtils.SQL_CACHE_NAME);
		return sqlcfg;
	}

	public List<ViewCfg> getCacheSysViewcfg(String uc, String viewFlag) {
		Cache cache = cacheManager.getCache(ConstantUtils.SYSTEM_CACHE_NAME);
		Map functionCachMap = (Map) cache.get(ConstantUtils.FUNCTION_CACHE_NAME);
		Map ucCacheMap = (Map) functionCachMap.get(uc);
		if (ucCacheMap == null) return null;
		//view
		Map<String, List<ViewCfg>> viewCacheMap =
				(Map<String, List<ViewCfg>>) ucCacheMap.get(ConstantUtils.VIEW_CACHE_NAME);
		List<ViewCfg> viewcfgs = viewCacheMap.get(viewFlag);
		return viewcfgs;
	}

	public Map<String, SysCvscfg> getCacheSysCvscfg(String uc, String flag) {
		Cache cache = cacheManager.getCache(ConstantUtils.SYSTEM_CACHE_NAME);
		Map functionCachMap = (Map) cache.get(ConstantUtils.FUNCTION_CACHE_NAME);
		Map ucCacheMap = (Map) functionCachMap.get(uc);
		if (ucCacheMap == null) return null;
		//cvs
		Map<String, Map<String, SysCvscfg>> cvsCacheMap =
				(Map<String, Map<String, SysCvscfg>>) ucCacheMap.get(ConstantUtils.CVS_CACHE_NAME);
		if (cvsCacheMap == null) return null;
		Map<String, SysCvscfg> cvscfgMap = cvsCacheMap.get(flag);
		return cvscfgMap;
	}

	public Map<String, Map<String, SysCvscfg>> getCacheSysCvscfg(String uc) {
		Cache cache = cacheManager.getCache(ConstantUtils.SYSTEM_CACHE_NAME);
		Map functionCachMap = (Map) cache.get(ConstantUtils.FUNCTION_CACHE_NAME);
		Map ucCacheMap = (Map) functionCachMap.get(uc);
		if (ucCacheMap == null) return null;
		//cvs
		Map<String, Map<String, SysCvscfg>> cvsCacheMap =
				(Map<String, Map<String, SysCvscfg>>) ucCacheMap.get(ConstantUtils.CVS_CACHE_NAME);
		return cvsCacheMap;
	}

	//-------------------------------page-----------------------------------//
	public void initPageCache() {
		logger.debug("Loading Page cache starting...");
		Cache cache = cacheManager.getOrCreateCache(ConstantUtils.SYSTEM_CACHE_NAME);
		cache.delete(ConstantUtils.PAGE_CACHE_NAME);
		Map<String, PageCfg> pageCachMap = new HashMap<String, PageCfg>();
		List<SysPage> pages = pageService.queryPages();

		BeanCopier beanCopier = BeanCopier.create(SysPage.class, PageCfg.class, false);
		for (SysPage sysPage : pages) {
			PageCfg page = new PageCfg();
			beanCopier.copy(sysPage, page, null);
			page.setDefaultParams(CommonUtils.getJsonParameters(sysPage.getParams()));

			List<SysPageUc> pageUcs = pageService.queryPageUc(sysPage.getId());
			List<String> ucList = new ArrayList<String>();
			String ucs = "";
			if (pageUcs != null && pageUcs.size() > 0) {
				int i = 0;
				for (SysPageUc pageUc : pageUcs) {
					SysUccfg uccfg = this.getCacheUccfg(pageUc.getUcId());
					if (uccfg == null) continue;
					ucList.add(uccfg.getUcName());

					if (i == 0) ucs = uccfg.getUcName();
					else ucs += "," + uccfg.getUcName();
					i++;
				}
			}
			page.setUcList(ucList);
			page.setUcs(ucs);
			pageCachMap.put(page.getPcode().trim(), page);
			pageCachMap.put(page.getId(), page);
		}
		cache.set(ConstantUtils.PAGE_CACHE_NAME, pageCachMap);
		logger.debug("Loading Page cache finished ...");
	}

	public PageCfg getCachePage(String idOrCode) {
		Cache cache = cacheManager.getCache(ConstantUtils.SYSTEM_CACHE_NAME);
		if (cache == null) return null;
		Map<String, PageCfg> pageCachMap = (Map<String, PageCfg>) cache.get(ConstantUtils.PAGE_CACHE_NAME);
		return pageCachMap.get(idOrCode);
	}

	//-------------------------------layout-----------------------------------//
	public void initLayoutRelationCache() {
		logger.debug("Loading Layout cache starting...");
		Cache cache = cacheManager.getOrCreateCache(ConstantUtils.SYSTEM_CACHE_NAME);
		cache.delete(ConstantUtils.LAYOUTRELATION_CACHE_NAME);
		Map<String, Map<String, Object>> layoutRelationCachMap = new HashMap<String, Map<String, Object>>();
		List<SysLayout> layouts = layoutService.queryLayouts();
		for (SysLayout layout : layouts) {
			Map<String, Object> layoutCacheMap = new HashMap<String, Object>();

			List<SysLayoutType> layouttypes = layoutService.queryLayoutTypes(layout.getId());
			Map<String, List<LayoutCaseCfg>> lcaseCacheMap = new HashMap<String, List<LayoutCaseCfg>>();
			Map<String, SysLayoutType> ltypeCacheMap = new HashMap<String, SysLayoutType>();

			BeanCopier beanCopier = BeanCopier.create(SysLayoutCase.class, LayoutCaseCfg.class, false);
			for (SysLayoutType layouttype : layouttypes) {
				List<SysLayoutCase> layoutcases = layoutService.queryLayoutCases(layouttype.getId());
				List<LayoutCaseCfg> layoutCaseCfgs = new ArrayList<LayoutCaseCfg>();
				for (SysLayoutCase layoutcase : layoutcases) {
					LayoutCaseCfg layoutCaseCfg = new LayoutCaseCfg();
					beanCopier.copy(layoutcase, layoutCaseCfg, null);
					layoutCaseCfg.setDefaultParams(CommonUtils.getJsonParameters(layoutcase.getParams()));
					layoutCaseCfgs.add(layoutCaseCfg);
				}
				lcaseCacheMap.put(layouttype.getLocation(), layoutCaseCfgs);
				ltypeCacheMap.put(layouttype.getLocation(), layouttype);
			}
			layoutCacheMap.put(ConstantUtils.LAYOUT_CACHE_NAME, layout);
			layoutCacheMap.put(ConstantUtils.LTYPE_CACHE_NAME, ltypeCacheMap);
			layoutCacheMap.put(ConstantUtils.LCASE_CACHE_NAME, lcaseCacheMap);

			layoutRelationCachMap.put(layout.getModule() + layout.getLcode(), layoutCacheMap);
			layoutRelationCachMap.put(layout.getId(), layoutCacheMap);
		}
		cache.set(ConstantUtils.LAYOUTRELATION_CACHE_NAME, layoutRelationCachMap);
		logger.debug("Loading Layout cache finished ...");
	}

	public Map<String, Object> getLayoutCacheMap(String module, String lcode) {
		if (StringUtils.isBlank(module) || StringUtils.isBlank(lcode)) return null;
		Cache cache = cacheManager.getOrCreateCache(ConstantUtils.SYSTEM_CACHE_NAME);
		if (cache == null) return null;
		Map<String, Map<String, Object>> layoutRelationCachMap = (Map<String, Map<String, Object>>) cache.get(ConstantUtils.LAYOUTRELATION_CACHE_NAME);
		if (layoutRelationCachMap == null) return null;
		Map<String, Object> layoutCacheMap = layoutRelationCachMap.get(module + lcode);
		return layoutCacheMap;
	}

	public Map<String, Object> getLayoutCacheMap(String lid) {
		Cache cache = cacheManager.getOrCreateCache(ConstantUtils.SYSTEM_CACHE_NAME);
		if (cache == null) return null;
		Map<String, Map<String, Object>> layoutRelationCachMap = (Map<String, Map<String, Object>>) cache.get(ConstantUtils.LAYOUTRELATION_CACHE_NAME);
		if (layoutRelationCachMap == null) return null;
		Map<String, Object> layoutCacheMap = layoutRelationCachMap.get(lid);
		return layoutCacheMap;
	}

	public SysLayout getCacheLayout(String lid) {
		Map<String, Object> layoutCacheMap = this.getLayoutCacheMap(lid);
		if (layoutCacheMap == null) return null;
		return (SysLayout) layoutCacheMap.get(ConstantUtils.LAYOUT_CACHE_NAME);
	}

	public SysLayout getCacheLayout(String module, String lcode) {
		Map<String, Object> layoutCacheMap = this.getLayoutCacheMap(module, lcode);
		if (layoutCacheMap == null) return null;
		return (SysLayout) layoutCacheMap.get(ConstantUtils.LAYOUT_CACHE_NAME);
	}

	public SysLayoutType getCacheLayoutTypes(String lid, String localType) {
		Map<String, Object> layoutCacheMap = this.getLayoutCacheMap(lid);
		if (layoutCacheMap == null) return null;

		Map<String, SysLayoutType> ltypeCacheMap = (Map<String, SysLayoutType>) layoutCacheMap.get(ConstantUtils.LTYPE_CACHE_NAME);
		if (ltypeCacheMap == null) return null;
		return ltypeCacheMap.get(localType);
	}

	public List<LayoutCaseCfg> getCacheLayoutCase(String lid, String localType) {
		Map<String, Object> layoutCacheMap = this.getLayoutCacheMap(lid);
		if (layoutCacheMap == null) return null;

		Map<String, List<LayoutCaseCfg>> ltypeCacheMap = (Map<String, List<LayoutCaseCfg>>) layoutCacheMap.get(ConstantUtils.LCASE_CACHE_NAME);
		if (layoutCacheMap == null) return null;
		return ltypeCacheMap.get(localType);
	}

	//-------------------------------dictactionry-----------------------------------//
	public void initDictCache() {
		logger.debug("Loading Dict cache starting...");
		Cache cache = cacheManager.getOrCreateCache(ConstantUtils.SYSTEM_CACHE_NAME);
		cache.delete(ConstantUtils.DICT_CACHE_NAME);
		Map<String, List<SysDict>> dictCachMap = new HashMap<String, List<SysDict>>();

		List<SysDict> dicts = dictService.queryDicts();
		for (SysDict dict : dicts) {
			String dictNoKey = /*dict.getSys().trim() + */dict.getDictno().trim();
			List<SysDict> cacheDicts = dictCachMap.get(dictNoKey);
			if (cacheDicts == null) {
				cacheDicts = new ArrayList<SysDict>();
				dictCachMap.put(dictNoKey, cacheDicts);
			}
			cacheDicts.add(dict);
		}
		cache.set(ConstantUtils.DICT_CACHE_NAME, dictCachMap);
		logger.debug("Loading Dict cache finished.");
	}

	public List<SysDict> getCacheDicts(String dictNoKey) {
		Cache cache = cacheManager.getOrCreateCache(ConstantUtils.SYSTEM_CACHE_NAME);
		if (cache == null) return null;
		Map<String, List<SysDict>> dictCachMap = (Map<String, List<SysDict>>) cache.get(ConstantUtils.DICT_CACHE_NAME);
		if (dictCachMap == null) return null;
		return dictCachMap.get(dictNoKey);
	}

	public SysDict getCacheDict(String dictNoKey, String dkey) {
		List<SysDict> dicts = this.getCacheDicts(dictNoKey);
		if (dicts == null) return null;

		SysDict dictCache = null;
		for (SysDict dict : dicts) {
			if (dkey.equals(dict.getDkey())) {
				dictCache = dict;
				break;
			}
		}
		return dictCache;
	}
}
