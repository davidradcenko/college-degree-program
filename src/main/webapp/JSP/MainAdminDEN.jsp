<%@page import="com.roolt.entities.ankets"%> 
<%@page import="com.cadragen.daos.anketsDao"%> 
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>
 <%@page import="com.roolt.entities.den"%> 
 <%@page import="com.cadragen.daos.denDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/MainAdmin.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</head>
<body>

    <div class="main">
       <div class="div_main_header"></div>
    <img class="logoimg" src="img/mainUser/Logo2020.png" alt="">
   
    
      <%  
  denDao ud = new denDao();
	List<den> carsList = ud.getAll("FROM den");
	pageContext.setAttribute("ordersPageContext", carsList);
	ud.closeCurentSession();
    %>  
    
  <form id="signForm"  action="testAjaxDenADD()">
							 
							  <p class="textDen1">Дата проведения</p>
							   <p class="textDen2">Время проведения</p>
							  <input id="inputPassword1" class="rrtr1" name="login" maxlength="50"  type="text"   value="">
							<input id="inputPassword2" class="rrtr2" name="pass" maxlength="50"  type="text"    value="">
								
								 <p class="rrtrt4" id="info"></p>
								 
					<input class="rrtr3"  type="button" onclick="testAjaxDenADD()" value="Добавить">
    </form>   
    <div class="divscrol2" >
    
<table class="table_blur2">   
        <tr>
    <th>Дата проведения</th>
    <th>Место проведения</th>
    </tr>
        <qqq:forEach items="${ordersPageContext}" var="order"> 
  <tr>
     <td>${order.getText()}</td>
     <td align="center">${order.getData()} <img title="Удалить запись" class="imgdell" onclick="DeleteDEN('${order.getId_den()}')" src="img/addAnket/mdi_close.png" alt=""></td>
    </tr>
     </qqq:forEach> 
</table>
 </div >

 
 
  <a href="MainAdminADD" class="r1">Лучшие студенты</a>
    <a href="MainAdmin" class="r2">Анкеты</a>
    <a href="MainAdminDEN" class="r44">Дни открытых дверей</a>
    <p  class="r3">Админ панель </p>
 
 
 

 </div> 
</body>
</html>