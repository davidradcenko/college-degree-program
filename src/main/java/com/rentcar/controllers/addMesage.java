
package com.rentcar.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cadragen.daos.mesDao;
import com.cadragen.daos.usersDao;
import com.roolt.entities.mes;
import com.roolt.entities.users;


@Controller
public class addMesage {

	
	
	
	
	@RequestMapping(value = "/POiscAnkets_1usersd")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
	       
	     
		String login = String.valueOf(session.getAttribute("username"));
		String text=request.getParameter("trw");	
		System.out.println("test"+login);

		String validResult = ss(text);

		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();

		
		
		if (validResult.isEmpty()) {
			usersDao ud = new usersDao();
			users user = ud.getUserByname(login);
			ud.closeCurentSession();
			
			 Date date = new Date();
		      System.out.println(date.toString());
			
			long id;
			mesDao a=new mesDao();
			mes as= new mes(user.getId_user(),text,date.toString());
			
			id=a.insertWithId(as);	
			a.closeCurentSession();
	
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
	public String ss(String text) {
		String result = "";
		String name = text;
		System.out.println("ОНО вообеще работает?");
		if( name == null || name.isEmpty()) {
			result += "Не все данные введены";
			System.out.println("Не все данные введены");
		}
		System.out.println("ОНО вообеще работает? результат"+result);
		return result;
	}
	

}