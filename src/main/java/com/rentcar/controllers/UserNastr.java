
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
public class UserNastr {

	
	
	
	
	@RequestMapping(value = "/POiscAnketsttt")
	public void sign(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		
		
		String VK=request.getParameter("name");
		String INST=request.getParameter("name1");
		 
		
		String login = String.valueOf(session.getAttribute("username"));

		String validResult = ss(VK,INST);

		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();

		if(VK == null || VK.isEmpty()) {
			VK="�� ��������";	
		}
		if(INST == null || INST.isEmpty()) {
			INST="�� ��������";	
		}
		
		
		if (validResult.isEmpty()) {
		
			
			
			usersDao cdr = new usersDao();
			users zakaz = cdr.getUserByname(login);
			
			
			
			
			
			zakaz.setVk(VK);
			cdr.update(zakaz);
			zakaz.setInst(INST);
			cdr.update(zakaz);
			
			
			
			cdr.closeCurentSession();
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
	
	public String ss(String login,String passm) {
		String result = "";
		String name = login;
		String pass = passm;
		return result;
	}
	

}