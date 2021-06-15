package com.rentcar.controllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;



import com.cadragen.daos.anketsDao;
import com.cadragen.daos.denDao;
import com.cadragen.daos.mesDao;
import com.cadragen.daos.usersDao;
import com.roolt.entities.ankets;
import com.roolt.entities.den;
import com.roolt.entities.mes;
import com.roolt.entities.users;



@Controller
/*@RequestMapping(value = "/test")*/
public class TestController {
	
	/*@PostMapping
	@PostMapping(value = {"/test1", "/test2"})
	public String testPost(HttpServletRequest request, Model model) {
		System.out.println("testPost");
		model.addAttribute("testData", request.getParameter("testInput"));
		return "redirect: test";
	}
	
	@GetMapping
	public String testGet() {
		System.out.println("testGet");
		return "testPage";
	}*/
	
	@PostMapping(value = "/fileUploadAjax")
	@SuppressWarnings("unchecked")
	public void fileUploadAjax(MultipartHttpServletRequest request, HttpServletResponse response) throws IOException {
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");

			MultipartFile partFile = request.getFile("fileInput"); //Достаем файл из модифицированного реквеста
			
			
			String re=partFile.getOriginalFilename();


             
			PrintWriter out = response.getWriter();
			JSONObject jsonObj = new JSONObject();
			String dirPath = "D:\\Проект Java\\zapas\\RentCarMaven\\src\\main\\webapp\\img\\na3na4\\"; //путь к папке, в которую будем сохранять файл
			File dir = new File(dirPath);
			if (!dir.exists()) {
				dir.mkdir(); //если такой папки не существует - создаем ее
			}
			
			File file = new File(dirPath + partFile.getOriginalFilename()); //создаем объект File с полным путем к файлу, который мы сохраним ('C:\\testfolder\\filename.type')
			try {
				partFile.transferTo(file); //полученный файл сохраняем по указанному пути
	jsonObj.put("upload", "ok");
			} catch (IOException e) {
	jsonObj.put("upload", "fail");
			}
			out.print(jsonObj);
			out.close();
			
	}
	
	
	
	
	@PostMapping(value = "/fileUploadAjax2")
	@SuppressWarnings("unchecked")
	public void fileUploadAjax2(MultipartHttpServletRequest request, HttpServletResponse response) throws IOException {
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");

			MultipartFile partFile = request.getFile("fileInput"); //Достаем файл из модифицированного реквеста
			
			
			String re=partFile.getOriginalFilename();
System.out.println("dgfg");

             
			PrintWriter out = response.getWriter();
			JSONObject jsonObj = new JSONObject();
			String dirPath = "D:\\Проект Java\\zapas\\RentCarMaven\\src\\main\\webapp\\img\\teacherFoto\\"; //путь к папке, в которую будем сохранять файл
			File dir = new File(dirPath);
			if (!dir.exists()) {
				dir.mkdir(); //если такой папки не существует - создаем ее
			}
			
			File file = new File(dirPath + partFile.getOriginalFilename()); //создаем объект File с полным путем к файлу, который мы сохраним ('C:\\testfolder\\filename.type')
			try {
				partFile.transferTo(file); //полученный файл сохраняем по указанному пути
				
				long id;
				usersDao a=new usersDao();
				users as= new users("mmm","mmm",3,"mmm",re);
				
				id=a.insertWithId(as);	
				a.closeCurentSession();
				
				
				
				
				
	jsonObj.put("upload", "ok");
			} catch (IOException e) {
	jsonObj.put("upload", "fail");
			}
			out.print(jsonObj);
			out.close();
			
	}
	
	
	@PostMapping(value = "/fileUploadAjax3")
	@SuppressWarnings("unchecked")
	public void fileUploadAjax3(MultipartHttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");

			MultipartFile partFile = request.getFile("fileInput"); //Достаем файл из модифицированного реквеста
			
			
			String re=partFile.getOriginalFilename();
System.out.println("dgfg");

             
			PrintWriter out = response.getWriter();
			JSONObject jsonObj = new JSONObject();
			String dirPath = "D:\\Проект Java\\zapas\\RentCarMaven\\src\\main\\webapp\\img\\teacherFoto\\"; //путь к папке, в которую будем сохранять файл
			File dir = new File(dirPath);
			if (!dir.exists()) {
				dir.mkdir(); //если такой папки не существует - создаем ее
			}
			
			File file = new File(dirPath + partFile.getOriginalFilename()); //создаем объект File с полным путем к файлу, который мы сохраним ('C:\\testfolder\\filename.type')
			try {
				partFile.transferTo(file); //полученный файл сохраняем по указанному пути
				
				String login = String.valueOf(session.getAttribute("username"));
				
				usersDao cdr = new usersDao();
				users zakaz = cdr.getUserByname(login);
				
				
				
				
				zakaz.setFoto(re);
				cdr.update(zakaz);

				cdr.closeCurentSession();
				
				
				
	jsonObj.put("upload", "ok");
			} catch (IOException e) {
	jsonObj.put("upload", "fail");
			}
			out.print(jsonObj);
			out.close();
			
	}
	
	
	
	
	
	@RequestMapping(value = "/POiscAnkets_1")
	public String POiscAnkets(HttpServletRequest request, Model model) {
		long idStr = Long.parseLong(request.getParameter("inputDataName"));
		  
		anketsDao cd = new anketsDao();
System.out.println("он выполняется"+idStr);
//
//"+idStr+"
		ankets carsListS = cd.getAnketsID(idStr);
		model.addAttribute("ordersPageContextS", carsListS);
		System.out.println("он выполняется"+carsListS.getAdres_dle_inform());
		cd.closeCurentSession();
		return "orders_table";
	}
	
	@RequestMapping(value = "/POiscAnkets_1user")
	public String POiscAnkets1(HttpServletRequest request, Model model) {
		System.out.println("он выполняется");
		String idStr =request.getParameter("inputDataName");
		anketsDao cd = new anketsDao();
		System.out.println("он выполняется");
				List<ankets> carsList = cd.getAll("FROM ankets where fam like '%" + idStr + "%'");
				model.addAttribute("ordersPageContextS1", carsList);
				cd.closeCurentSession();
				return "pois";
	}

	
		
	@RequestMapping(value = "/infoUsers")
	@ResponseBody
	public String infoUsers(HttpServletRequest request, HttpSession session) {
		String idStr =request.getParameter("id");
		System.out.println("он выполняется"+idStr);
		session.setAttribute("InfoUser", idStr);
		return "OK";
	}
	
	@RequestMapping(value = "/DELLDEN")
	@ResponseBody
	public String dan(HttpServletRequest request) {
		String idStr =request.getParameter("id") ;

		denDao cd = new denDao();
		den zakaz = cd.get(Long.parseLong(idStr));
		cd.delete(zakaz);
		
		cd.closeCurentSession();
		return "OK";
	}
	
	@RequestMapping(value = "/DELLDENuser")
	@ResponseBody
	public String dan1(HttpServletRequest request) {
		String idStr =request.getParameter("id") ;

		usersDao cd = new usersDao();
		users zakaz = cd.get(Long.parseLong(idStr));
		cd.delete(zakaz);
		
		cd.closeCurentSession();
		return "OK";
	}
	
}
