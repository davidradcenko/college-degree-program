package com.rentcar.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cadragen.daos.usersDao;

import com.roolt.entities.users;

@Controller
public class RegAuthoriseController {
	private static final String LOGIN_PASS_PATTERN = "^[a-zA-Z][a-zA-Z0-9-_\\.]{1,20}$";
	private static final String EMAIL_PATTERN = "^[-\\w.]+@([A-z0-9][-A-z0-9]+\\.)+[A-z]{2,4}$";
	

	@RequestMapping(value = "/sign")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
        
		String login = request.getParameter("login");
		String pass = request.getParameter("pass");

		String validResult = proba(login, pass);

		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();

		if (validResult == null) {
			session.setAttribute("auth", "ok");
			session.setAttribute("username", login);
			
			//по ключу signStatus будет доступно значение success
			job.put("signStatus", "success");
		} else {
			//по ключу signStatus будет доступно значение fail
			job.put("signStatus", "fail");
			//и по ключу message добавляем сообщение об ошибке validResult
			job.put("message", validResult);
		}
		out.print(job);
		out.close();
	}
	
	
public String proba(String name,String pass){
		
		if(!name.matches(LOGIN_PASS_PATTERN) || !pass.matches(LOGIN_PASS_PATTERN)) {
			return "Не корректный логин или пароль!";
		}
		System.out.println("_____________");
	
		usersDao ud = new usersDao();
		System.out.println("_____________1");
		users user = ud.getUserByname(name);
		System.out.println("_____________2"+user);
		ud.closeCurentSession();
		
		if(user == null || !user.getPass().equals(pass)) {
			return "Не верный логин или пароль!";
		}
		
		return null;	
				
	}
	
}
