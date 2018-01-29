package com.dev.huining.soft.web.zfire.dao;

import org.hibernate.*;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * @param <PK>
 */
@Component
public class HibernateBaseDAOImpl<PK extends Serializable> implements HibernateBaseDAO<PK>, Serializable {

	@Resource
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
//		return this.sessionFactory.openSession();
	}

    @Override
    public Object get(Class clazz, PK id) {
        return getSession().get(clazz, id);
    }

    @Override
    public Object load(Class clazz, PK id) {
        return getSession().load(clazz, id);
    }

    @Override
    public List<?> loadAll(Class clazz) {
		Criteria criteria = getSession().createCriteria(clazz);
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return criteria.list();
    }

    @Override
    public void update(Object entity) {
       getSession().update(entity);
    }

    @Override
    public void merge(Object entity) {
        getSession().merge(entity);
    }

    @Override
    public Serializable save(Object entity) {
        return getSession().save(entity);
    }

    @Override
    public void batchSave(final List<?> entityList) {
		Session session = getSession();
		int i = 0;
		for (Object entity : entityList) {
			session.save(entity);
			if (i++ % 20 == 0) {
				session.flush();
				session.clear();
			}
		}
    }

    @Override
    public void saveOrUpdate(Object entity) {
		getSession().saveOrUpdate(entity);
    }

    @Override
    public void saveOrUpdateAll(Collection<?> entities) {
		Session session = getSession();
		for (Object entity : entities) {
			session.saveOrUpdate(entity);
		}
    }

    @Override
    public void persist(Object entity) {
		getSession().persist(entity);
    }

    @Override
    public void batchPersist(final List<?> entityList) {
		Session session = getSession();
		int i = 0;
		for (Object entity : entityList) {
			session.persist(entity);
			if (i++ % 20 == 0) {
				session.flush();
				session.clear();
			}
		}
    }

    @Override
    public void delete(Object entity) {
		getSession().delete(entity);
    }

    @Override
    public void deleteByKey(Class clazz, PK id) {
        this.delete(this.get(clazz, id));
    }

    @Override
    public void deleteAll(Collection<?> entities) {
		Session session = getSession();
		for (Object entity : entities) {
			session.delete(entity);
		}
    }

    @Override
    public int bulkUpdate(String queryString) {
        return bulkUpdate(queryString, (Object[]) null);
    }

    @Override
    public int bulkUpdate(String queryString, Object[] values) {
		Session session = getSession();
		Query queryObject = session.createQuery(queryString);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				queryObject.setParameter(i, values[i]);
			}
		}
		return queryObject.executeUpdate();
    }

    @Override
    public List find(String queryString) {
        return find(queryString, (Object[]) null);
    }

	@Override
	public Object findUniqueEntity(String queryString) {
		List objs = this.find(queryString);
		if (objs != null && objs.size() == 1) {
			return objs.get(0);
		}else if( objs != null && objs.size() > 1) {
			throw new RuntimeException("find more than one rows.");
		}
		return null;
	}

	@Override
    public List find(String queryString, Object[] values) {
		Session session = getSession();
		Query queryObject = session.createQuery(queryString);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				queryObject.setParameter(i, values[i]);
			}
		}
		return queryObject.list();
    }

	@Override
	public Object findUniqueEntity(String queryString, Object[] values) {
		List objs = this.find(queryString,values);
		if (objs != null && objs.size() > 0) {
			return objs.get(0);
		}
		return null;
	}

	@Override
    public List find(String queryString, String[] paramNames, Object[] values) {
		if (paramNames.length != values.length) {
			throw new IllegalArgumentException("Length of paramNames array must match length of values array");
		}
		Session session = getSession();
		Query queryObject = session.createQuery(queryString);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				applyNamedParameterToQuery(queryObject, paramNames[i], values[i]);
			}
		}
		return queryObject.list();
    }

    @Override
    public List find(String queryString, Map<String, Object> params) {
        return null;
    }

    public DetachedCriteria createDetachedCriteria(Class clazz) {
        return DetachedCriteria.forClass(clazz);
    }

    @Override
    public Criteria createCriteria(Class clazz) {
        return this.createDetachedCriteria(clazz).getExecutableCriteria(this.getSession());
    }

    @Override
    public Criteria getCriteria(Class clazz) {
        return getSession().createCriteria(clazz);
    }

    @Override
    public List findByCriteria(DetachedCriteria criteria) {
        return findByCriteria(criteria, -1, -1);
    }

    @Override
    public List findByCriteria(DetachedCriteria criteria, int firstResult, int maxResults) {
		Assert.notNull(criteria, "DetachedCriteria must not be null");
		Session session = getSession();
		Criteria executableCriteria = criteria.getExecutableCriteria(session);
		if (firstResult >= 0) {
			executableCriteria.setFirstResult(firstResult);
		}
		if (maxResults > 0) {
			executableCriteria.setMaxResults(maxResults);
		}
		return executableCriteria.list();
    }

    @Override
    public List<?> findByCriterion(List<Criterion> criterionList, int firstResult, int maxResults) {
        return findByCriterion(criterionList, firstResult, maxResults, null);
    }

    @Override
    public List<?> findByCriterion(List<Criterion> criterionList, int firstResult, int maxResults, Order[] orders) {
//        Criteria criteria = createCriteria();
//        for (Criterion criterion : criterionList){
//            criteria.add(criterion);
//        }
//        addOrder(criteria, orders);
//
//        // 添加分页属性
//        addPageProToCriteria(criteria, firstResult, maxResults);
//        return criteria.list();
        return null;
    }

    @Override
    public List<?> findByCriterion(Criteria criteria, int firstResult, int maxResults) {
        return criteria.setFirstResult(firstResult).setMaxResults(maxResults).list();
    }

    @Override
    public List<?> findByCriterion(List<Criterion> criterionList) {
        return findByCriterion(criterionList, -1, -1);
    }

    @Override
    public Object findUniqueEntity(Criteria criteria) {
        return criteria.setMaxResults(1).uniqueResult();
    }

    @Override
    public Integer getRowCount(Class clazz, List<Criterion> criterionList) {
        DetachedCriteria criteria = createDetachedCriteria(clazz);
        for (Criterion criterion : criterionList) {
            criteria.add(criterion);
        }
        return getRowCount(criteria);
    }

    public Integer getRowCount(DetachedCriteria criteria) {
        criteria.setProjection(Projections.rowCount());
        List list = this.findByCriteria(criteria, 0, 1);
        return (Integer) list.get(0);
    }

    // 新增排序字段
    private void addOrder(Criteria criteria, Order[] orders) {
        // 如果排序对象为 null 或 长度为 0，则认为不需要排序
        if (null == orders || orders.length == 0)
            return;

        for (Order order : orders)
            criteria.addOrder(order);
    }

    private Criteria addPageProToCriteria(Criteria criteria, int firstResult, int maxResults) {
        if (firstResult < 0 && maxResults < 0) return criteria;
        return criteria.setFirstResult(firstResult).setMaxResults(maxResults);
    }

	/**
	 * Apply the given name parameter to the given Query object.
	 * @param queryObject the Query object
	 * @param paramName the name of the parameter
	 * @param value the value of the parameter
	 * @throws HibernateException if thrown by the Query object
	 */
	protected void applyNamedParameterToQuery(Query queryObject, String paramName, Object value)
			throws HibernateException {

		if (value instanceof Collection) {
			queryObject.setParameterList(paramName, (Collection) value);
		}
		else if (value instanceof Object[]) {
			queryObject.setParameterList(paramName, (Object[]) value);
		}
		else {
			queryObject.setParameter(paramName, value);
		}
	}
}
