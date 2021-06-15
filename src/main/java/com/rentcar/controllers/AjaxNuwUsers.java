package com.rentcar.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.cadragen.daos.usersDao;

import com.roolt.entities.users;

@Controller
public class AjaxNuwUsers {

	
	
	
	
	@RequestMapping(value = "/AjaxNuwUsers1")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("application/json");
//		
//	       
//	     
//		
//		String name_user=request.getParameter("user_name");
//		String name_kyrs=request.getParameter("food1");
//		String user_pass=request.getParameter("user_pass"); 
//		String user_login=request.getParameter("user_logen");
//		String foto=request.getParameter("vvodFoto");
//		
//		
//		System.out.println("Тест на картинку" + foto);
//		
//		
//		String validResult = proba(name_user,name_kyrs, user_pass,user_login,foto);
//
//		
//		groopDao a1=new groopDao();
//		groops otv = a1.getNameCyrsId(name_kyrs);
//		int otv_id= (int)otv.getId_groops();
//		a1.closeCurentSession();
//		
//		JSONObject job = new JSONObject();
//		PrintWriter out = response.getWriter();
//
//		if (validResult == null) {
//		long id;
//		usersDao a=new usersDao();
//		users as= new users(user_pass,user_login,1,otv_id,name_user,foto);
//		
//		id=a.insertWithId(as);	
//		a.closeCurentSession();
//	
//	
//		job.put("validStatus", "ok");
//		} else {
//			//по ключу signStatus будет доступно значение fail
//			//job.put("signStatus", "fail");
//			//и по ключу message добавляем сообщение об ошибке validResult
//			job.put("validMessage", validResult);
//			
//			
//		}
//		out.print(job);
//		out.close();
//		
		}
		
	
	
	
	
	

	
	
public String proba(String id_users,String ProcFunc,String Categor,String Name_Proc,String foto){
		
		if( ProcFunc == null || ProcFunc.isEmpty() || Categor == null || Categor.isEmpty() || Name_Proc == null || Name_Proc.isEmpty()  || foto == null || foto.isEmpty()) {
			System.out.println("!!!!!!!!!!!!!!!!!");	
			return "Не все данные заполнены!!";
		}

		return null;	
				
	}
	

}
