
 <%@page import="com.cadragen.daos.usersDao"%>
 

 <%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/admin.css">
     <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</head>
 
<body>
   <div class="main_div">
    <div class="div_main_header"></div>
    <img class="logoimg" src="img/mainUser/Logo2020.png" alt="">
    <p class="text1_header">Админ редактор </p>
    
    
    
    
       
    <div class="menu"></div>
          <div class="menu_color"></div>
            <div class="menu_color1"></div>
          <div class="menu_color"></div>
          <div class="menu_color3"></div>
          <div class="menu_color4"></div>
          <div class="menu_color5"></div>
          <div class="menu_color6"></div>

           <div class="menu_color_red_blue"></div>
          <p class="text_menu1">Новый студент</p>
           <p class="text_menu2">Дисцеплины</p>
            <p class="text_menu3">События</p>
             <p class="text_menu4">Преподователи</p>
              <p class="text_menu5">Опаздания</p>
               <p class="text_menu6">Насписание</p>
           
           
          
                
                  <img  class="img1" src="img/mainUser/menu1.png" alt="">
                  <img  class="img2" src="img/mainUser/menu2.png" alt="">
                  <img  class="img3" src="img/mainUser/menu3.png" alt="">
                  <img  class="img4" src="img/mainUser/menu4.png" alt="">
                  <img  class="img5" src="img/mainUser/menu5.png" alt="">
                  <img  class="img6" src="img/mainUser/menu6.png" alt="">
                  
       
                  
           <p class="text1">Анкета регистрации пользователя</p>
           <p class="text2">1.</p>
           <p class="text3">Полное имя</p>
           <p class="text4">2.</p>
           <p class="text5">Специальность</p>
           <p class="text6">3.</p>
           <p class="text7">Пароль от личной комнаты</p>
           <p class="text8">4.</p>
           <p class="text9">Логин от личной комнаты</p>
           <p class="text10">5.</p>
           <p class="text11">Фото  200px/200px</p>       
                  
                  
                 
                  
               
     
     
     
     
     
     
     
     <form action="fileUpload" method="POST" enctype="multipart/form-data" class="form" id="fileForm">
			
						
					 <input class="inp1" name="user_name" type="text" id="tt1" autofocus>
					<input class="inp3" name="user_pass" type="text">
                    <input class="inp4" name="user_logen" type="text">
                     <input class="inp5" type="file"  name="fileInput" onchange="getName(this.value);" id="uploadfile">
   					<select class="inp2"  name="food1"  >
   <% 
// 	 		specDao ud = new specDao();
// 	        List<spec> carsList = ud.getAll("FROM spec ");
// 	        ud.closeCurentSession();
//  		for(spec order : carsList) {	
//  			out.print(" <optgroup label=" + order.getName_spec() + ">");
//  			groopDao r = new groopDao();
// 	        List<groops> carsList1 = r.getAll("FROM groops where id_specR="+order.getId_spec()+"     "); 
// 	        r.closeCurentSession();
// 	    for(groops order1 : carsList1) {
// 	        	out.print(" <option>"+order1.getName_grop()+" </option> ");	
// 	 		}
//  		} out.print("</optgroup>");
		    %> 
   					</select>
					
					    <div class="texto" id="info"></div>
					     <div class="texto1" id="info1"></div>
					     <input class="nevidbutton" id="info2" name="vvodFoto">
					     
					     
					     <button class="inp66" type="button" onclick="uploadFile()" value="Сохранить">Загрузать картинку</button>
						<button id="try1" class="inp6" type="button" onclick="testA1()" value="Сохранить">Сохранить</button>
					
			
		</form>        
    </div>
   <script type="text/javascript">
   document.getElementById("uploadfile").addEventListener("change",function (e) {		
	    document.getElementById("info").value = this.files[0].name;		
	    });

    </script>
    
</body>
</html>