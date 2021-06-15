package com.cadragen.daos;

import javax.persistence.NoResultException;

import org.hibernate.query.Query;

import com.roolt.entities.ankets;




public class anketsDao extends AbstractDao<ankets>{
	
	@Override
	public ankets get(long id_user) {
		ankets user = null;
		try {
			user = (ankets) session.get(ankets.class, id_user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}


	public Long insertWithId(ankets ob) {
		Long newId = null;
		try {
			newId = (Long) session.save(ob);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newId;
	}

	public ankets getUsersID(Long id) {
		ankets user = null;
		Query query;
//
		try {
			query = session.createQuery("FROM ankets  where id_userD=:loginstring");
			query.setParameter("loginstring", id);
			try {
				user = (ankets) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public ankets getUsersFAM(String id) {
		ankets user = null;
		Query query;
//
		try {
			query = session.createQuery("FROM ankets  where fam=:loginstring");
			query.setParameter("loginstring", id);
			try {
				user = (ankets) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public ankets getAnketsID(Long id) {
		ankets user = null;
		Query query;
//
		try {
			query = session.createQuery("FROM ankets  where id_anketa=:loginstring");
			query.setParameter("loginstring", id);
			try {
				user = (ankets) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
}