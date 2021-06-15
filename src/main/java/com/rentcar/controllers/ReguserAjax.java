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
public class ReguserAjax {

	
	
	
	
	@RequestMapping(value = "/ReguserAjax")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
	       
	     
		
		String login=request.getParameter("login");
		String pass=request.getParameter("pass");
		String name=request.getParameter("pass2"); 
		
		System.out.println("test"+login);

		String validResult = ss(login,pass, name);

		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();

		
		
		if (validResult.isEmpty()) {
		long id;
		usersDao a=new usersDao();
		users as= new users(pass,login,1,name,"NoFoto.jpg");
		
		id=a.insertWithId(as);	
		a.closeCurentSession();
		System.out.println("test11");
	
		job.put("validStatus", "ok");
		} else {
			//�� ����� signStatus ����� �������� �������� fail
			job.put("signStatus", "fail");
			System.out.println("test"+validResult);
			//� �� ����� message ��������� ��������� �� ������ validResult
			job.put("validMessage", validResult);
			
			
		}
		out.print(job);
		out.close();
		
		}
		
	
	
	
	
	

	
	private static final String LOGIN_PASS_PATTERN = "^[a-zA-Z][a-zA-Z0-9-_\\.]{1,20}$";
	
	public String ss(String login,String passm,String pass2) {
		String result = "";
		String name = login;
		String pass = passm;
		String rpass = pass2;
		System.out.println("��� ������� ��������?");
		
		if (name.matches(LOGIN_PASS_PATTERN)) {
			usersDao od = new usersDao();
			users user = od.getUserByname(name);
			if (user != null) {
				result += "��� ������";
				System.out.println("��� ������");
			}
			System.out.println("C ������ ��� ������");
			od.closeCurentSession();
		} else {
			result += "�� ���������� ������ ����� ";
			System.out.println("�� ���������� ������ �����");
		}

		if( name == null || name.isEmpty() || pass == null || pass.isEmpty() || rpass == null || rpass.isEmpty()) {
			result += "�� ��� ������ ������� ";
			System.out.println("�� ��� ������ �������");
		}

	
		System.out.println("��� ������� ��������? ���������"+result);
		return result;
	}
	

}