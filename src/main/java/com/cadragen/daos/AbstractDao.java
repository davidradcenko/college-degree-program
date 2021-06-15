package com.cadragen.daos;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.roolt.database.HibernateUtil;

public abstract class AbstractDao<T> {
	protected Session session;

	public AbstractDao() {
		session = HibernateUtil.getSession();
	}

	public void insert(T ob) {
		try {
			session.save(ob);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public abstract T get(long id);
	
	public void update(T ob) {
		try {
			session.update(ob);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void delete(T ob) {
		try {
			session.delete(ob);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<T> getAll(String sql) {
		List<T> obList = null;
		Query query;
		try {
			query = session.createQuery(sql);
			obList = (List<T>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return obList;
	}

	public void closeCurentSession() {
		HibernateUtil.closeSession(session);
	}
}