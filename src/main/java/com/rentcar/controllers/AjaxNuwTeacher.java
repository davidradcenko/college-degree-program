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
public class AjaxNuwTeacher {

	
	
	
	
	@RequestMapping(value = "/AjaxNuwTeacher")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("application/json");
//		
//	       
//	     
//		
//		String name_user=request.getParameter("id1Admin2");
//		String name_kyrs=request.getParameter("food12");
//		String user_pass=request.getParameter("id2Admin2"); 
//		String user_login=request.getParameter("id3Admin2");
//		String foto=request.getParameter("vvodFoto");
//		
//		
//		
//		groopDao a1=new groopDao();
//		groops otv = a1.getNameCyrsId(name_kyrs);
//		int otv_id= (int)otv.getId_groops();
//		a1.closeCurentSession();
//		
//		
//		
//		
//		String validResult = proba(name_user,name_kyrs, user_pass,user_login,foto);
//
//		JSONObject job = new JSONObject();
//		PrintWriter out = response.getWriter();
//
//		
//		System.out.println("Тест на name_user  " + name_user);
//		System.out.println("Тест на name_kyrs   " + name_kyrs);
//		System.out.println("Тест на user_pass  " + user_pass);
//		System.out.println("Тест на user_login  " + user_login);
//		System.out.println("Тест на foto   " + foto);
//		System.out.println("Тест на otv_id   " + otv_id);
//		if (validResult == null) {
//		long id;
//		prepodsDao a=new prepodsDao();
//		prepods as= new prepods(user_pass,user_login,1,name_user,foto,otv_id);
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
		
		}
		
	
	
	
	
	

	
	
public String proba(String id_users,String ProcFunc,String Categor,String Name_Proc,String foto){
		
		if( ProcFunc == null || ProcFunc.isEmpty() || Categor == null || Categor.isEmpty() || Name_Proc == null || Name_Proc.isEmpty()  || foto == null || foto.isEmpty()) {
			System.out.println("!!!!!!!!!!!!!!!!!");	
			return "Не все данные заполнены!!";
		}

		return null;	
				
	}
	

}