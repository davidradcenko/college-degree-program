
 
 <%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="">
     <link rel="stylesheet" href="css/admin2.css">
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
                  
                     <p class="text1">Редактирование преподовательского состава</p>
                     
                     
                     
                     <div id="addUser1">
                      <form action="uploadFileadmin2" method="POST" enctype="multipart/form-data" class="form" id="fileForm2">
                                                         <img id="id_but_1" class="imgADD" src="img/mainUser/adminADD.png" alt="">
                                                         <p class="addUser">Подсчитать</p>
                                               <p class="text2">1.</p>
                                               <p class="text3">Полное имя</p>
                                               <p class="text4">2.</p>
                                               <p class="text5">Куратор группы:</p>
                                               <p class="text6">3.</p>
                                               <p class="text7">Пароль от личной комнаты</p>
                                               <p class="text8">4.</p>
                                               <p class="text9">Логин от личной комнаты</p>
                                               <p class="text10">5.</p>
                                               <p class="text11">Фото  200px/200px</p>       
                                                      <input name="id1Admin2" class="inp1" type="text" autofocus> 
                                                       <input name="id2Admin2" class="inp3" type="text">
                                                        <input name="id3Admin2" class="inp4" type="text">
                                                         <input  class="inp5" type="file"  name="fileInput" onchange="getName(this.value);" id="uploadfile">
                                                         
                                                         
                                                         
                         <div class="texto" id="info"></div>
					     <div class="texto1" id="info1"></div>
					     <input class="nevidbutton" id="info2" name="vvodFoto">
                                                    
                                                         
<button class="inp6" type="button" onclick="uploadFileadmin2()" value="Сохранить">Загрузать картинку</button>
                                                           <input id="try1" class="inp7" onclick="testA1admin2()" type="button" value="Сохранить">  
                                                                        
<select class="inp2" id="infoqw" name="food12">
 	<optgroup label="Группы:">
<% 
//              groopDao r = new groopDao();

// 	        List<groops> carsList1 = r.getAll("FROM groops where id_groops<36 "); 
// 	        r.closeCurentSession();
// 	    for(groops order1 : carsList1) {
// 	        	out.print(" <option>"+order1.getName_grop()+" </option> ");	
// 	 		}
	    %>                  
 	</optgroup>
</select>
    </form>
                 </div>
        
        <script type="text/javascript">
   document.getElementById("uploadfile").addEventListener("change",function (e) {		
	    document.getElementById("info").value = this.files[0].name;		
	    });

    </script>
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
           <div id="redactPrepod2">
               <img id="id_but_2" class="imgADD" src="img/mainUser/adminADD.png" alt="">
                     <p class="addUser">Добавить </p>
          <input class="datamain" type="date">
            <input class="datamain2" type="date">
            <p class="text_info_redact1">по</p>
            <input class="buttonclass1" type="button" value="Подсчитать">
                <p class="text_1_red">Преподовательский состав</p>
              
               
                                                                             <table>
                                                                <tr>
                                                                    <th>Employee</th>
                                                                    <th>Salary</th>
                                                                    <th>Bonus</th>
                                                                    <th>Supervisor</th>
                                                                </tr>
                                                                <tr>
                                                                    <td>Stephen C. Cox</td>
                                                                    <td>$300</td>
                                                                    <td>$50</td>
                                                                    <td>Bob</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Josephin Tan</td>
                                                                    <td>$150</td>
                                                                    <td>-</td>
                                                                    <td>Annie</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Joyce Ming</td>
                                                                    <td>$200</td>
                                                                    <td>$35</td>
                                                                    <td>Andy</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>James A. Pentel</td>
                                                                    <td>$175</td>
                                                                    <td>$25</td>
                                                                    <td>Annie</td>
                                                                </tr>
                                                                </table>
           </div>
            
            
            
         <script type="text/javascript">
   document.getElementById('redactPrepod2').style.display = "none";
     document.getElementById('addUser1').style.display = "block" ;
  </script>
  
  <script>
                var btn = document.getElementById('id_but_1');

btn.onclick = function() {
    document.getElementById('redactPrepod2').style.display = "block";
     document.getElementById('addUser1').style.display = "none";
}


 var btn = document.getElementById('id_but_2');

btn.onclick = function() {
    document.getElementById('redactPrepod2').style.display = "none";
     document.getElementById('addUser1').style.display = "block";
}
            </script> 
            
             
    </div>
</body>
</html>