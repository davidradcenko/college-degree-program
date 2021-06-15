package com.rentcar.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cadragen.daos.denDao;
import com.cadragen.daos.usersDao;
import com.roolt.entities.den;
import com.roolt.entities.users;


@Controller
public class DENADD {

	
	
	
	
	@RequestMapping(value = "/ADDDEN")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
	       
	     
		
		String login=request.getParameter("login");
		String pass=request.getParameter("pass");
		
		String validResult = ss(login,pass);

		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();

		
		
		if (validResult.isEmpty()) {
		long id;
		denDao a=new denDao();
		den as= new den(1,login,pass);
		
		id=a.insertWithId(as);	
		a.closeCurentSession();
		System.out.println("test11");
	
		job.put("validStatus", "ok");
		} else {
			//по ключу signStatus будет доступно значение fail
			job.put("signStatus", "fail");
			System.out.println("test"+validResult);
			//и по ключу message добавляем сообщение об ошибке validResult
			job.put("validMessage", validResult);
			
			
		}
		out.print(job);
		out.close();
		
		}
	private static final String LOGIN_PASS_PATTERN = "^[a-zA-Z][a-zA-Z0-9-_\\.]{1,20}$";
	
	public String ss(String login,String passm) {
		String result = "";
		String name = login;
		String pass = passm;
		
		if( name == null || name.isEmpty() || pass == null || pass.isEmpty()) {
			result += "Не все данные введены <br>";
		}
		return result;
	}
	

}