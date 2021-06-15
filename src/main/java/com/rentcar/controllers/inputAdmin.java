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


import com.cadragen.daos.usersDao;

import com.roolt.entities.users;




@Controller
public class inputAdmin {

	
	
	
	
	@RequestMapping(value = "/inputAdminR")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		 
	     
		
		String login=request.getParameter("w");
		String pass=request.getParameter("ww");

		
		
		System.out.println("Тест на login" + login);
		System.out.println("Тест на login" + pass);
		
		String validResult = proba(login,pass);

		
		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();


		usersDao ud = new usersDao();
		users user = ud.getUserBynameNULL(login);
		
		
		if (validResult == null && user != null) {
			   Date todaysDate = new Date();
			   DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
		        String strDate = dateFormat.format(todaysDate);
		       user.setLotstime(strDate);
		       ud.update(user);
			
			
			session.setAttribute("auth", "ok");
			session.setAttribute("username", login);
			
		job.put("validStatus", "ok");
		} else {
			job.put("signStatus", "fail");
			job.put("validMessage", validResult);
		}	
		ud.closeCurentSession();
		out.print(job);
		out.close();
		}
		

	
public String proba(String id_users,String ProcFunc){
		usersDao ud = new usersDao();
		users user = ud.getUserBynameNULL(id_users);
		ud.closeCurentSession();
		
		
		
		if(user == null || !user.getPass().equals(ProcFunc)) {
			return "Не верный логин или пароль!";
		}
		return null;	
				
	}
	

}