package com.cadragen.daos;

import javax.persistence.NoResultException;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

import org.hibernate.query.Query;

import com.roolt.entities.den;




public class denDao extends AbstractDao<den>{
	
	@Override
	public den get(long id_user) {
		den user = null;
		try {
			user = (den) session.get(den.class, id_user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}


	public Long insertWithId(den ob) {
		Long newId = null;
		try {
			newId = (Long) session.save(ob);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newId;
	}

	public den getUserByname(String name) {
		den user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE login = :loginstring");
			query.setParameter("loginstring", name);
			try {
				user = (den) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public den getUserBynameNULL(String name) {
		den user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE login = :loginstring and roll=2");
			query.setParameter("loginstring", name);
			try {
				user = (den) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public den getUserID(long id) {
		den user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE id_user= :loginstring");
			query.setParameter("loginstring", id);
			try {
				user = (den) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public den getUseremail(String email) {
		den user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE name = :loginstring");
			query.setParameter("loginstring", email);
			try {
				user = (den) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	public long getnewUser() {
		den user = null;
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