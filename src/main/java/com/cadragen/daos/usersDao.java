package com.cadragen.daos;

import javax.persistence.NoResultException;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

import org.hibernate.query.Query;


import com.roolt.entities.users;

public class usersDao extends AbstractDao<users>{
	
	@Override
	public users get(long id_user) {
		users user = null;
		try {
			user = (users) session.get(users.class, id_user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public usersDao() {
		
	}
	public Long insertWithId(users ob) {
		Long newId = null;
		try {
			newId = (Long) session.save(ob);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newId;
	}

	public users getUserByname(String name) {
		users user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE login = :loginstring");
			query.setParameter("loginstring", name);
			try {
				user = (users) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public users getUserBynameNULL(String name) {
		users user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE login = :loginstring and roll=2");
			query.setParameter("loginstring", name);
			try {
				user = (users) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public users getUserID(long id) {
		users user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE id_user= :loginstring");
			query.setParameter("loginstring", id);
			try {
				user = (users) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public users getUseremail(String email) {
		users user = null;
		Query query;

		try {
			query = session.createQuery("FROM users WHERE name = :loginstring");
			query.setParameter("loginstring", email);
			try {
				user = (users) query.getSingleResult();
			} catch (NoResultException e) {
				user = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	public long getnewUser() {
		users user = null;
		Query query;
		long y=0;

		try {
			query = session.createQuery("select count(id_user)  from user_tablesss");
			
			///////////////////////////////////////////////////////////session.createStoredProcedureCall("kk");
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
	
	public void getNapoln(String NAME_USERt,String SURNAME_USERt,String PATRONYMICt,int ROLt,String LOGINt,String PASSt) {
		users user = null;
		StoredProcedureQuery query;
		long y=0;
		query = session.createStoredProcedureQuery("proc11");
		query.registerStoredProcedureParameter("NAME_USERt", String.class, ParameterMode.IN);
		query.registerStoredProcedureParameter("SURNAME_USERt", String.class, ParameterMode.IN);
		query.registerStoredProcedureParameter("PATRONYMICt", String.class, ParameterMode.IN);
		query.registerStoredProcedureParameter("ROLt", Integer.class, ParameterMode.IN);
		query.registerStoredProcedureParameter("LOGINt", String.class, ParameterMode.IN);
		query.registerStoredProcedureParameter("PASSt", String.class, ParameterMode.IN);
		
		
		
		
		query.setParameter("NAME_USERt", NAME_USERt);
		query.setParameter("SURNAME_USERt", SURNAME_USERt);
		query.setParameter("PATRONYMICt", PATRONYMICt);
		query.setParameter("ROLt", ROLt);
		query.setParameter("LOGINt", LOGINt);
		query.setParameter("PASSt", PASSt);
		query.execute();
		
		
//		try {
//			//String queryString = "hr.proc1 '"+name+"','"+mail+",'"+pass+"'";
//			 query = session.createSQLQuery(
//				    "CALL hr.proc1(:appID, :fromYear, :fromMon)")
//				    .setParameter("appID", mail)
//				    .setParameter("fromYear", name)
//				 
//				    .setParameter("fromMon", pass);
//			 //query.list();  
//	
//			try {
//				y = (long) query.getSingleResult();
//				
//			} catch (NoResultException e) {
//				user = null;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	
		
}
}