package com.rentcar.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
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
public class AddAntetAjaxUser {

	
	
	
	
	@RequestMapping(value = "/AddAntetAjaxUser")
	public void ew(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		  
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
	       
	     
		
		String name=request.getParameter("name");
		String nameBY=request.getParameter("nameBY");
		String fam=request.getParameter("fam"); 
		String famBY=request.getParameter("famBY");
		String otch=request.getParameter("otch");
		String otchBY=request.getParameter("otchBY");
		String telefon=request.getParameter("telefon");
		String email=request.getParameter("email"); 
		String cpecialnost=request.getParameter("cpecialnost");
		String form_obuchen=request.getParameter("form_obuchen");
		String baz_obuchen=request.getParameter("baz_obuchen");
		String chlen_brsm=request.getParameter("chlen_brsm");
		String trebuets_obcaga=request.getParameter("trebuets_obcaga"); 
		String pol=request.getParameter("pol");
		String lgota=request.getParameter("lgota");
		
		String data_okonchanie_obrazov=request.getParameter("data_okonchanie_obrazov");
		String okonchil_klasov=request.getParameter("okonchil_klasov");
		String vid_obraz_organ=request.getParameter("vid_obraz_organ"); 
		String gorod_obraz_organiz=request.getParameter("gorod_obraz_organiz");
		String name_uchedn_zaveden=request.getParameter("name_uchedn_zaveden");
		String c_otlichem_medal=request.getParameter("c_otlichem_medal");
		String prohodil_voinskue_uchet=request.getParameter("prohodil_voinskue_uchet");
		String izuchemue_lang=request.getParameter("izuchemue_lang");
		

		float crednie_bal=Float.parseFloat(request.getParameter("crednie_bal"));
		String data_rochden=request.getParameter("data_rochden");
		
		String mecto_rochdenie=request.getParameter("mecto_rochdenie");
		String istochnik_info=request.getParameter("istochnik_info");
		String kanal_reclamnogo_vozdei=request.getParameter("kanal_reclamnogo_vozdei");
		String adres_dle_inform=request.getParameter("adres_dle_inform");
		String kak_abitur_urnal_o_nas=request.getParameter("kak_abitur_urnal_o_nas"); 
		String pocechali_kyrs=request.getParameter("pocechali_kyrs");
		String uvlechenie=request.getParameter("uvlechenie");
		
		
		
		
		 System.out.println("Тест1   " + name);
		 System.out.println("Тест2    " + nameBY);
		 System.out.println("Тест3  " + fam);
		 System.out.println("Тест4   " + famBY);
		 System.out.println("Тест5    " + otch);
		 System.out.println("Тест6   " + otchBY);
		 System.out.println("Тест7   " + telefon);
	System.out.println("Тест8    " + email);
	if(email == null || email.isEmpty()) {
		email="не выбранно";
	}
		 System.out.println("Тест9  " + cpecialnost);
		 System.out.println("Тест10   " + form_obuchen);
		 System.out.println("Тест11    " + baz_obuchen);
	System.out.println("Тест12   " + chlen_brsm);
	if(chlen_brsm == null || chlen_brsm.isEmpty()) {
		chlen_brsm="не выбранно";
	}
	System.out.println("Тест13   " + trebuets_obcaga);
	if(trebuets_obcaga == null || trebuets_obcaga.isEmpty()) {
		trebuets_obcaga="не выбранно";
	}
		 System.out.println("Тест14    " + pol);
	System.out.println("Тест15  " + lgota);
	if(lgota == null || lgota.isEmpty()) {
		lgota="не выбранно";
	}
		 System.out.println("Тест16   " + data_okonchanie_obrazov);
		 System.out.println("Тест17    " + okonchil_klasov);
		 System.out.println("Тест18   " + vid_obraz_organ);
		 System.out.println("Тест19   " + gorod_obraz_organiz);
		 System.out.println("Тест20    " + name_uchedn_zaveden);
	System.out.println("Тест21  " + c_otlichem_medal);
	if(c_otlichem_medal == null || c_otlichem_medal.isEmpty()) {
		c_otlichem_medal="не выбранно";
	}
	System.out.println("Тест22   " + prohodil_voinskue_uchet);
	if(prohodil_voinskue_uchet == null || prohodil_voinskue_uchet.isEmpty()) {
		prohodil_voinskue_uchet="не выбранно";
	}
		 System.out.println("Тест23    " + izuchemue_lang);
		 System.out.println("Тест24   " + crednie_bal);
		 System.out.println("Тест25   " + data_rochden);
		 System.out.println("Тест26    " + mecto_rochdenie);
		 System.out.println("Тест27   " + istochnik_info);
	System.out.println("Тест28   " + kanal_reclamnogo_vozdei);
	if(kanal_reclamnogo_vozdei == null || kanal_reclamnogo_vozdei.isEmpty()) {
		kanal_reclamnogo_vozdei="не выбранно";
	}
		 System.out.println("Тест29    " + adres_dle_inform);
	System.out.println("Тест30  " + kak_abitur_urnal_o_nas);
	if(kak_abitur_urnal_o_nas == null || kak_abitur_urnal_o_nas.isEmpty()) {
		kak_abitur_urnal_o_nas="не выбранно";
	}
	System.out.println("Тест31   " + pocechali_kyrs);
	if(pocechali_kyrs == null || pocechali_kyrs.isEmpty()) {
		pocechali_kyrs="не выбранно";
	}
	System.out.println("Тест32    " + uvlechenie);
	if(uvlechenie == null || uvlechenie.isEmpty()) {
		uvlechenie="не выбранно";
	}
	
	String login = String.valueOf(session.getAttribute("username"));
	usersDao aw=new usersDao();
	users sd=aw.getUserByname(login);
	aw.closeCurentSession();
	
	
	System.out.println("id    " + sd.getId_user());
	
		String validResult = anketste(
				name,nameBY, fam,famBY,otch ,otchBY ,telefon ,email ,cpecialnost ,form_obuchen ,baz_obuchen ,chlen_brsm ,trebuets_obcaga
				,pol ,lgota ,data_okonchanie_obrazov ,okonchil_klasov ,vid_obraz_organ ,gorod_obraz_organiz ,name_uchedn_zaveden
				,c_otlichem_medal ,prohodil_voinskue_uchet ,izuchemue_lang ,crednie_bal ,data_rochden ,mecto_rochdenie ,istochnik_info ,kanal_reclamnogo_vozdei
				,adres_dle_inform ,kak_abitur_urnal_o_nas ,pocechali_kyrs ,uvlechenie);

		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();
		if (validResult == null) {
		long id;
		
		
		
		
		
		
		Date date = Calendar.getInstance().getTime();

        // Display a date in day, month, year format
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	     
        String today = formatter.format(date);
	     
	     
	     
	     
	     
	     
		anketsDao a=new anketsDao();
		ankets as= new ankets(sd.getId_user(),name,nameBY, fam,famBY,otch ,otchBY ,telefon ,email ,cpecialnost ,form_obuchen ,baz_obuchen ,chlen_brsm ,trebuets_obcaga
				,pol ,lgota ,data_okonchanie_obrazov ,okonchil_klasov ,vid_obraz_organ ,gorod_obraz_organiz ,name_uchedn_zaveden
				,c_otlichem_medal ,prohodil_voinskue_uchet ,izuchemue_lang ,crednie_bal ,data_rochden ,mecto_rochdenie ,istochnik_info ,kanal_reclamnogo_vozdei
				,adres_dle_inform ,kak_abitur_urnal_o_nas ,pocechali_kyrs ,uvlechenie,today);
		
		id=a.insertWithId(as);	
		a.closeCurentSession();

	
		job.put("validStatus", "ok");
		} else {

			job.put("signStatus", "fail");

		job.put("validMessage", validResult);
			
			
		}
		out.print(job);
		out.close();
		
		
	}
	
	public String anketste( String name, String nameBY, String fam, String famBY, String otch,
			String otchBY, String telefon, String email, String cpecialnost, String form_obuchen, String baz_obuchen,
			String chlen_brsm, String trebuets_obcaga, String pol, String lgota, String data_okonchanie_obrazov,
			String okonchil_klasov, String vid_obraz_organ, String gorod_obraz_organiz, String name_uchedn_zaveden,
			String c_otlichem_medal, String prohodil_voinskue_uchet, String izuchemue_lang, float crednie_bal,
			String data_rochden, String mecto_rochdenie, String istochnik_info, String kanal_reclamnogo_vozdei,
			String adres_dle_inform, String kak_abitur_urnal_o_nas, String pocechali_kyrs, String uvlechenie) {	
				
		if( 
		
	       name == null || name.isEmpty()
		|| nameBY == null || nameBY.isEmpty() 
		|| fam == null || fam.isEmpty() 
		
|| famBY == null || famBY.isEmpty() 
|| otch == null || otch.isEmpty() 
|| otchBY == null || otchBY.isEmpty() 
|| telefon == null || telefon.isEmpty() 
|| cpecialnost == null || cpecialnost.isEmpty()
|| form_obuchen == null || form_obuchen.isEmpty() 
|| baz_obuchen == null || baz_obuchen.isEmpty() 
|| pol == null || pol.isEmpty() 
|| data_okonchanie_obrazov == null || data_okonchanie_obrazov.isEmpty() 
|| okonchil_klasov == null || okonchil_klasov.isEmpty() 
|| vid_obraz_organ == null || vid_obraz_organ.isEmpty() 
|| gorod_obraz_organiz == null || gorod_obraz_organiz.isEmpty() 
|| name_uchedn_zaveden == null || name_uchedn_zaveden.isEmpty() 
|| izuchemue_lang == null || izuchemue_lang.isEmpty() 
|| crednie_bal == 0  
|| data_rochden == null || data_rochden.isEmpty() 
|| mecto_rochdenie == null || mecto_rochdenie.isEmpty() 
|| istochnik_info == null || istochnik_info.isEmpty() 
|| adres_dle_inform == null || adres_dle_inform.isEmpty() 

		
		
		){
			return "Не все данные заполнены!!";
		}

		return null;	
		
	}
}