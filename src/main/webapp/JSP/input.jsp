<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>

		<!DOCTYPE html>
		<html lang="en">
		<head>
			<meta charset="UTF-8">
			<title>Document</title>
			 <link rel="stylesheet" href="css/input.css">
			 <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
		</head>
		
		<body>
		   <div class="main_cenor">
			<div class="main_div"></div>
			<img class="img_main" src="img/input/Frame%2014.png" alt="">
 <img class="text_conec11" src="img/addAnket/Group15.png" alt="">
 
 
			<div class="blocconec"></div>
				 <div class="lineaconec"></div>
				<p class="text_conec1"><a class="text_in_textcontnr1" href="contect">Контакты</a></p>
				 <p class="text_conec2"><a class="text_in_textcontnr2" href="input">Личный кабинет</a></p>
				  <p class="text_conec3">Адрес: 222310 Минская обл., г. Молодечно, пл. Центральная, 1</p>
				   <p class="text_conec4">© 2020 AbiMTEC.by</p>
					<p class="text_conec5">Электронная почта нашего колледжа</p>
					 <p class="text_conec6">E-Mail: mtec@bks.by, mail@mtec.by</p>
					  <p class="text_conec7">Больше информации на</p>
					   <p class="text_conec8"><a href="#">www.mtec.by</a></p>
						<p class="text_conec10">Начальник отдела образования и науки Белкоопсоюза: Мостовская Елена Павловна тел. 8(017)226-95-69 Горячая линия: тел. 8(017)226-91-05</p>
			   <img class="img11" src="img/img6.png" alt="">

					
						  
							 <p class="text_main6"><a  href="index">Вернутся на главную</a></p>
							 
							  <img class="img12" src="img/plagin/mdi_call_made.png" alt="">
							  
							  
							  <div id="mainbloc1">
							  <div class="main_div_bloc1"></div>
							  <div class="main_div_bloc2"></div>
							  
							  <p class="main_div_bloc_text1">Авторизация</p>
							  <p class="main_div_bloc_text2">При потери регистрационных данных, обратитесь в вычислитеный центор колледжа.</p>
<!-- 							  <p id="r1" class="main_div_bloc_text3"> <a class="a_text_main_bloc" href="#">Забыл пароль?</a></p> -->
  
							  <form id="signForm" class="form-signin" action="PassUser()">
							 
							  
							   <p  ><input class="button_class1" name="login" maxlength="20"  type="text"  placeholder="  Login" value=""></p>
								<p  ><input class="button_class2" name="pass" maxlength="20"  type="password"   placeholder="  ******************" value=""></p>
								<p class="button_class218" id="info"></p>
								 <a class="button_class23"  type="button" href="RegistNewUser" value="Регистрация">Регистрация</a>
								 
								 
								 <p  ><input class="button_class"  type="button" onclick="PassUser()" value="Войти"></p>
								 </form>
	 
								</div>
					
			</div>

		</body>
		</html>



