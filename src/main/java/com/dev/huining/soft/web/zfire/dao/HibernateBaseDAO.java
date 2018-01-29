package com.dev.huining.soft.web.zfire.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;


/**
 * @param <PK>
 */

public interface HibernateBaseDAO<PK extends Serializable> {

    public Object get(Class clazz, PK id);

    public Object load(Class clazz, PK id);

    public List<?> loadAll(Class clazz);

    public void update(Object entity);

    public void merge(Object entity);

    public Serializable save(Object entity);

    public void batchSave(List<?> entityList);

    public void saveOrUpdate(Object entity);

    public void saveOrUpdateAll(Collection<?> entities);

    public void persist(Object entity);

    public void batchPersist(List<?> entityList);

    public void delete(Object entity);

    public void deleteByKey(Class clazz, PK id);

    public void deleteAll(Collection<?> entities);

    public int bulkUpdate(String queryString);

    public int bulkUpdate(String queryString, Object[] values);

    public List find(String queryString);

    public Object findUniqueEntity(String queryString);

    public List find(String queryString, Object[] values);

    public Object findUniqueEntity(String queryString, Object[] values);

    public List find(String queryString, String[] paramNames, Object[] values);

    public List find(String queryString, Map<String, Object> params);

    public Criteria createCriteria(Class clazz);

    public Criteria getCriteria(Class clazz);

    public List findByCriteria(DetachedCriteria criteria);

    public List findByCriteria(DetachedCriteria criteria, int firstResult, int maxResults);

    public List<?> findByCriterion(List<Criterion> criterionList, int firstResult, int maxResults);

    public List<?> findByCriterion(List<Criterion> criterionList, int firstResult, int maxResults, Order[] orders);

    public List<?> findByCriterion(Criteria criteria, int firstResult, int maxResults);

    public List<?> findByCriterion(List<Criterion> criterionList);

    public Integer getRowCount(DetachedCriteria criteria);

    public Object findUniqueEntity(Criteria criteria);

    public Integer getRowCount(Class clazz, List<Criterion> criterionList);

}
