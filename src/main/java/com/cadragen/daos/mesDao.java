package com.cadragen.daos;

import javax.persistence.NoResultException;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

import org.hibernate.query.Query;

import com.roolt.entities.mes;






public class mesDao extends AbstractDao<mes>{
	
	@Override
	public mes get(long id_user) {
		mes user = null;
		try {
			user = (mes) session.get(mes.class, id_user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}


	public Long insertWithId(mes ob) {
		Long newId = null;
		try {
			newId = (Long) session.save(ob);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newId;
	}

	public mes getUserByname(String name) {
		mes user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE login = :loginstring");
			query.setParameter("loginstring", name);
			try {
				user = (mes) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public mes getUserBynameNULL(String name) {
		mes user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE login = :loginstring and roll=2");
			query.setParameter("loginstring", name);
			try {
				user = (mes) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public mes getUserID(long id) {
		mes user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE id_user= :loginstring");
			query.setParameter("loginstring", id);
			try {
				user = (mes) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public mes getUseremail(String email) {
		mes user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE name = :loginstring");
			query.setParameter("loginstring", email);
			try {
				user = (mes) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	public long getnewUser() {
		mes user = null;
		Query query;
		long y=0;

		try {
			query = session.createQuery("select count(id_user)  from user_tablesss");
			try {
				y = (long) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return y;
	}
}