 <%@page import="com.roolt.entities.users"%> 
 <%@page import="com.cadragen.daos.usersDao"%>
  <%@page import="com.roolt.entities.ankets"%> 
 <%@page import="com.cadragen.daos.anketsDao"%>
 <%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="stylesheet" href="css/UserNas.css">
    <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
 <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
<style type="text/css">
/*
#container {
	min-width: 1011px;
	max-width: 1011px;
	height: 441px;
	margin: 0 auto
        left: 372px;
top: 440px;
}
*/

/*
.container {
	min-width: 1011px;
	max-width: 1011px;
    
    left: 372px;
top: 440px;

    
	height: 441px;
	margin: 0 auto;
	text-align:center;
}
*/
	</style>
</head>
<body>


 <%if(session.getAttribute("auth") != null && session.getAttribute("auth").toString().equals("ok")){ %>
             

<%String login = String.valueOf(session.getAttribute("username"));

usersDao ud = new usersDao();
users user = ud.getUserByname(login);
ud.closeCurentSession();


anketsDao udA = new anketsDao();
ankets anket = udA.getUsersID(user.getId_user());
List<ankets> carsList = udA.getAll("FROM ankets order by crednie_bal DESC");


//подсчет
double srBALL=0.0;
int srkoll=0;
for(ankets order : carsList) {
	srkoll++;
	srBALL+=order.getCrednie_bal();
	}
double otv=srBALL/srkoll;
String result = String.format("%.1f",otv);
//
//подсчет места
int koll=0;
int mesto=0;
for(ankets order : carsList) {
	koll++;
	if(user.getId_user()==order.getId_userD()){
		mesto=koll; break;                    }
	}
int koll1=0;
for(ankets order : carsList) {
	koll1++;
	}
pageContext.setAttribute("mestoInfoPageContext", mesto);
pageContext.setAttribute("kollInfoPageContext", koll1);

pageContext.setAttribute("BALLInfoPageContext", result);
pageContext.setAttribute("userInfoPageContext", user);
pageContext.setAttribute("AnketsInfoPageContext", anket);
udA.closeCurentSession();












%>

    <div class="div_min">
        <div class="header"></div>
        <img class="imgLogo" src="img/mainUser/Logo2020.png" alt="">
         <img class="imgSautch" src="img/mainUser/sautch.png" alt="">
         
         
          <input  class="stringSautch" type="text" maxlength="18" placeholder="Поиск..." autofocus>
         <span class="text_menu1" id="result"></span>
<script>
  var input = document.body.children[0];

  input.oninput = function() {
    document.getElementById('result').innerHTML = input.value;
  };
</script>
   
         
         
         
         
         
         
         <p class="textName">${AnketsInfoPageContext.getName()}  ${AnketsInfoPageContext.getFam()}  ${AnketsInfoPageContext.getOtch()}</p>
         <div class="ImgHeader"><img class="rre" src="img/teacherFoto/${userInfoPageContext.getFoto()}"></div>
        
          
         
          
<!--          menu -->
          <div class="menu"></div>
          <div class="menu_color"></div>
            <div class="menu_color1"></div>
          <div class="menu_color"></div>
          <div class="menu_color3"></div>
          <div class="menu_color4"></div>
          <div class="menu_color5"></div>
         

           <div class="menu_color_red_blue"></div>
         <p class="text_menu1"><a href="UserAdmin">Мой профиль</a></p>
           <p class="text_menu2" ><a href="UserMessage">Сообщения</a></p>
          
               <%if(session.getAttribute("InfoUser") != null){ %>
               <p class="text_menu3"><a href="UserInfo">Контакты</a></p>
                <%} else {%>
                 <p class="text_menu3"><a href="UserAdmin">Контакты</a></p>
                 <%}%>
            
              <p class="text_menu4"><a href="UserTON">Абитуриенты</a></p>
               <p class="text_menu5"><a href="UserNas">Настройки</a></p>

                  
                  <img  class="img1" src="img/mainUser/menu1.png" alt="">
                  <img  class="img2" src="img/mainUser/menu2.png" alt="">
                  <img  class="img3" src="img/mainUser/menu7.png" alt="">
                  <img  class="img4" src="img/mainUser/menu8.png" alt="">
                  <img  class="img5" src="img/mainUser/menu9.png" alt="">
              
          <!--      close    menu -->
          
           <div class="blocconec"></div>
         <div class="lineaconec"></div>
        <p class="text_conec1"><a class="text_in_textcontnr1" href="#">Контакты</a></p>
         <p class="text_conec2"><a class="text_in_textcontnr2" href="#">Личный кабинет</a></p>
          <p class="text_conec3">Адрес: 222310 Минская обл., г. Молодечно, пл. Центральная, 1</p>
           <p class="text_conec4">© 2020 AbiMTEC.by</p>
            <p class="text_conec5">Электронная почта нашего колледжа</p>
             <p class="text_conec6">E-Mail: mtec@bks.by, mail@mtec.by</p>
              <p class="text_conec7">Больше информации на</p>
               <p class="text_conec8"><a href="#">www.mtec.by</a></p>
                <p class="text_conec10">Начальник отдела образования и науки Белкоопсоюза: Мостовская Елена Павловна тел. 8(017)226-95-69 Горячая линия: тел. 8(017)226-91-05</p>
       <img class="img11" src="img/img6.png" alt="">
          
          
          
          <div class="ttb"></div>
           <input class="in1te" type="text" name="name" id="tty1">

         
<form action="testS" method="POST" enctype="multipart/form-data" class="form" id="poisrr">
 <p class="egc">Ссылка на VK:</p>
  <p class="egc1">Ссылка на Instagram </p>
    <input class="in1te" type="text" name="name" id="tty1">
    <input class="in1te1" type="text" name="name1" id="tty2">
        <button class="in2te" type="button" onclick="testS()" value="Сохранить">Сахранить</button>
 </form>





<form action="uploadFileadmin3" method="POST" enctype="multipart/form-data" class="form" id="fileForm2">
                              <p  class="e1">Фото 200px/200px</p>                                  
               <input  class="inp5" type="file"  name="fileInput" onchange="getName(this.value);" id="uploadfile">                                
                         <div class="texto" id="info"></div>
					     <div class="texto1" id="info1"></div>
					     <input class="nevidbutton" id="info2" name="vvodFoto">                                                                                                        
              <button class="inp6" type="button" onclick="uploadFileadmin3()" value="Сохранить">Загрузить картинку</button>                                                         
</form>




















            <script>
                 document.getElementById('vspl').style.display = "none";
                 document.getElementById('Menu_header2').style.display = "none";
                document.getElementById('ytu2').style.display = "none";
                var btn = document.getElementById('Menu_header');
btn.onclick = function() {
    document.getElementById('vspl').style.display = "block";
      document.getElementById('Menu_header2').style.display = "block";
     document.getElementById('Menu_header').style.display = "none";
}

var btn = document.getElementById('Menu_header2');
btn.onclick = function() {
     document.getElementById('vspl').style.display = "none";
      document.getElementById('Menu_header2').style.display = "none";
     document.getElementById('Menu_header').style.display = "block";
}
   var btn = document.getElementById('ytu1');
btn.onclick = function() {
     document.getElementById('ytu2').style.display = "block";
     document.getElementById('ytu1').style.display = "none";
     
} 
   var btn = document.getElementById('ytu2');
btn.onclick = function() {
     document.getElementById('ytu1').style.display = "block";
     document.getElementById('ytu2').style.display = "none";
     
}
            </script>
            <script>
        document.getElementById('but_rol2').style.display = "none";
              document.getElementById('plat2').style.display = "none";   
                 var btn = document.getElementById('but1');
                btn.onclick = function() {
     document.getElementById('but_rol1').style.display = "block";
     document.getElementById('but_rol2').style.display = "none";
                     document.getElementById('plat1').style.display = "block";   
                     document.getElementById('plat2').style.display = "none";   
     
}
                var btn = document.getElementById('but2');
                btn.onclick = function() {
     document.getElementById('but_rol2').style.display = "block";
     document.getElementById('but_rol1').style.display = "none";
                    document.getElementById('plat2').style.display = "block";   
                     document.getElementById('plat1').style.display = "none";   
     
}
        </script>
    </div>
                <%} else {%>
              <% response.sendRedirect("input"); %> 
                 <%}%>
</body>
</html>