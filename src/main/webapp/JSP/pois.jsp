<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>

<div class="divscrol" >
    
 <table class="table_blur">
  <tr>
    <th>Фимилия</th>
    <th>Имя</th>
    <th>Отчество</th>
    <th>Специальность</th>
     <th>Базовое образование</th>
       <th>Форма обучения</th>
    <th>Дата подачи</th>
    </tr>
    <qqq:forEach items="${ordersPageContextS1}" var="order">
 <tr  onclick="testAjax4(${order.getId_anketa()})"  >
  <td> ${order.getFam()}</td>
  <td>${order.getName()}</td>
  <td>${order.getOtch()}</td>
  <td>${order.getCpecialnost()}</td>
   <td>${order.getBaz_obuchen()}</td>
   <td>${order.getForm_obuchen()}</td>
  <td>${order.getDataP()}</td>
 </tr>
  </qqq:forEach> 
</table>
 </div >