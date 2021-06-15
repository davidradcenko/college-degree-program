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
       
             <img class="text_conec11" src="img/addAnket/Group15.png" alt="">
            
            
                  
                     <p class="text_main6"><a href="index">Вернутся на главную</a></p>
                     
                      <img class="img12" src="img/plagin/mdi_call_made.png" alt="">

                      <img class="imgMainADD" src="img/addAnket/18_full.jpg" alt="">
                      <div class="divclovo"></div>
                      
                      <p class="textADDANK1">Регистрация</p>
                      <p class="textADDANK2">Логин</p>
                      <p class="textADDANK3">Имя</p>
                       <p class="textADDANK4">Пароль</p>
                       
                       
                       
                   <form id="signFormReguser" class="form-signin" action="Reguser()">
                       <div class="line1ADD"></div>
                       <input class="int1ADD" name="login" type="text" >
                       <input class="int2ADD" name="pass2" type="text" >
                       <input class="int3ADD" name="pass" type="password" >
                       <p class="int4ADDwe" id="info"></p>
                       <input onclick="Reguser()" class="int4ADD" type="button"  value="Зарегестрироваться">
                  </form>
                      
    </div>
</body>
</html>