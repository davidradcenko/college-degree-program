package com.rentcar.controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cadragen.daos.anketsDao;
import com.cadragen.daos.usersDao;
import com.roolt.entities.ankets;
import com.roolt.entities.users;




@Controller
public class InputAjax {

	
	
	
	
	@RequestMapping(value = "/InputAjax")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		 
	     
		
		String login=request.getParameter("login");
		String pass=request.getParameter("pass");

		
		

		
		String validResult = proba(login,pass);

		
		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();

		if (validResult == null) {
			usersDao ud = new usersDao();
			users user = ud.getUserByname(login);
			ud.closeCurentSession();
			
			anketsDao ud2 = new anketsDao();
			ankets ank = ud2.getAnketsID(user.getId_user());
			ud2.closeCurentSession();
			if(ank==null) {
				job.put("validStatus", "ok");	
			}
			else {
				job.put("validStatus", "ok1");	
			}
			usersDao ud4 = new usersDao();
			users user4 = ud4.getUserByname(login);
			
			
			Date todaysDate = new Date();
			   DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
		        String strDate = dateFormat.format(todaysDate);
		        
		        
		       user4.setLotstime(strDate);
		       ud4.update(user4);
		       ud4.closeCurentSession();
			session.setAttribute("auth", "ok");
			session.setAttribute("username", login);
			
		
		} else {
			job.put("signStatus", "fail");
			job.put("validMessage", validResult);
		}
		
		
		
		out.print(job);
		out.close();
		}
		

	
public String proba(String id_users,String ProcFunc){
		usersDao ud = new usersDao();
		users user = ud.getUserByname(id_users);
		ud.closeCurentSession();
		
		
		
		if(user == null || !user.getPass().equals(ProcFunc)) {
			return "Не верный логин или пароль!";
		}
		return null;	
				
	}
	

}