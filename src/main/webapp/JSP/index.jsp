 <%@page import="com.roolt.entities.users"%> 
 <%@page import="com.cadragen.daos.usersDao"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>
 <%@page import="com.roolt.entities.den"%> 
 <%@page import="com.cadragen.daos.denDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
      <style>
	    /*!
     * chiefSlider (https://itchief.ru/lessons/php/feedback-form-for-website)
     * Copyright 2018 Alexander Maltsev
     * Licensed under MIT (https://github.com/itchief/feedback-form/blob/master/LICENSE)
     */

    *,
    *::before,
    *::after {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
      color: #fff;
    }

    .slider {
      position: relative;
      overflow: hidden;
      max-width: 1600px;
      margin: 0 auto;
      padding-left: 40px;
      padding-right: 40px;
        position: absolute;
width: 1174.16px;
height: 375px;
left: 133px;
top: 3359px;
    }

    .slider__wrapper {
      display: flex;
      transition: transform 0.6s ease;
    }

    .slider__item {
      flex: 0 0 100%;
      max-width: 100%;
      padding-left: 10px;
      padding-right: 10px;
    }

    @media (min-width: 576px) {
      .slider__item {
        flex: 0 0 50%;
        max-width: 50%;
      }
    }

    @media (min-width: 992px) {
      .slider__item {
        flex: 0 0 33.333333%;
        max-width: 33.333333%;
      }
    }

    @media (min-width: 1200px) {
      .slider__item {
        flex: 0 0 25%;
        max-width: 25%;
      }
    }

    .slider__control {
      position: absolute;
      top: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      width: 50px;
        height:310px; 
      color: #fff;
      text-align: center;
      bottom: 0;
      background: #fff;
    }

    .slider__control:hover,
    .slider__control:focus {
      color: #fff;
      text-decoration: none;
      outline: 0;
    }

    .slider__control_left {
      left: 0;
    }

    .slider__control_right {
      right: 0;
    }

    .slider__control::before {
      content: '';
      display: inline-block;
      width: 20px;
      height: 20px;
      background: transparent no-repeat center center;
      background-size: 100% 100%;
    }

    .slider__control_left::before {
      background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23424242' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E");
    }

    .slider__control_right::before {
      background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23424242' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E");
    }

    .slider__content_header {
      position: relative;
        align-content: center;
    }

 
 .slider__content_img {
      display: block;
      width: 269px;
height: 258px;
        margin: 0 auto;
        
    }
    .slider__content_section {
      position: absolute;
      bottom: 0;
      left: 0;
      background: #009688;
      color: #fff;
      padding: 4px 8px;
    }

    .slider__content_title {
      background: #f5f5f5;
      color: #424242;
      white-space: normal;
      font-weight: 700;
      font-size: 20px;
      line-height: 1.3;
      padding: 10px 15px;
      margin: 0;
      height: 52px;
    }

    .slider__content_footer {
      background: #f5f5f5;
      display: flex;
      padding: 20px 15px;
      color: #616161;
    }

    .slider__content_avatar {
      flex: 0 0 40px;
      max-width: 40px;
    }

    .slider__content_photo {
      display: block;
      height: auto;
      max-width: 100%;
      border-radius: 50%;
        
    }

    .slider__content_author {
      margin-left: 8px;
      line-height: 40px;
    }

    .slider__content_icon {
      height: 18px;
      margin-top: 12px;
      margin-left: auto;
    }

    .slider__content_views {
      margin-left: 4px;
      line-height: 40px;
    }
  </style>
</head>
<body >

 



    <div  class="main_bloc"> 
     <div class="bloc_main_from">
     <header class="header" id="header">
       
             <div class="nav">
                <div class="fotomain">
                 <a href="#">
                     <img src="img/Component%201.png" alt="">
                 </a>
                 </div>
                 <ul class="menu">
                 <%if(session.getAttribute("auth") != null && session.getAttribute("auth").toString().equals("ok")){ %>
               <li class="menu_item1"><a  href="UserAdmin">Личный кабинет</a></li>
                <%} else {%>
                 <li class="menu_item1"><a  href="input">Личный кабинет</a></li>
                 <%}%>
                    
                     <li class="menu_item2"><a href="contect">Контакты</a></li>
                     <li class="menu_item3"> <a href="#">+375 (29) 827-48-96</a></li>
                    
                 </ul>
                 
             
              </div>
            
              <p class="textvideo"><a  class="fdf" href="https://youtu.be/LSUEBq0XxXw">Видео о колледже</a></p>
         <p class="text_main">УО Молодечненский торгово- экономический колледж Белкоопсоюза</p>
              <p class="imail_main">Viber Telegram WhatsApp</p>
              
              

          
              
<!--              Блоки с навигацией-->
               <p  id="navaceon1"><input id="rr0" class="button_bloc_1"  type="button" value="На основе 9 классов"></p>
                  <p  id="navaceon2"><input id="rr1" class="button_bloc_2"  type="button" value="На основе 11 классов"></p>
               <p  id="navaceon3"><input id="rr2" class="button_bloc_3"  type="button" value="Заочная форма"></p>
              
              
<!--               <div class="button_bloc_1">  </div>-->
<!--                  <p  class=""><a class="fdf1" href="#">На основе 9 классов</a></p>     -->
<!--
                    <div class="button_bloc_2">  </div>
                    <p id="navaceon2" class="text_button2"><a  href="#">На основе 11 классов</a></p>
-->
<!--
                     <div class="button_bloc_3">  </div>
                    <p id="navaceon3" class="text_button3"><a  href="#">Заочная форма</a></p>
-->

<!--              блок с контекстом  блок1-->
    <div id="main_content1">
              <div class="main_blocinfo"> </div>
                 
                    <img class="img1" src="img/o_422bfe3a35%201.png" alt="">
                    <img class="img2"  src="img/vector-financial-accountant-making-report-illustration%201.png" alt="">
                    <img class="img3" src="img/kisspng-human-behavior-vision-care-profession-eyewear-eyes-office-women-glasses-5ab051cfd00988%201.png" alt="">
                    <img class="img4" src="img/Decreto-ingiuntivo-quando-conviene-rivolgerti-al-giudice%201.png" alt="">
                     <div class="linie1"></div>
                      <div class="linie2"></div>
                       <div class="linie3"></div>
                        <div class="linie4"></div>
                          <p class="text_clad">Лучшие ученики и наша гордость!!</p>
                         <p class="text_name_profisie1"><a href="info">Техник-программист</a></p>
                          <p class="text_name_profisie2"><a href="info2">Операционный логист NEW!!!</a></p>
                           <p class="text_name_profisie3"><a href="info3">Бухгалтер</a></p>
                            <p class="text_name_profisie4"><a href="info4">Юрист</a></p>
                              <p class="text_nambeclass1">9 классов</p>
                               <p class="text_nambeclass2">9 классов</p>
                                <p class="text_nambeclass3">9 классов</p>
                                 <p class="text_nambeclass4">9 классов</p>
                                  <p class="text_datanabora1">Начало набора с 15 августа</p>
                                   <p class="text_datanabora2">Начало набора с 15 августа</p>
                                    <p class="text_datanabora3">Начало набора с 15 августа</p>
                                     <p class="text_datanabora4">Начало набора с 15 августа</p>
                                      <p class="text_prodolteach1">3 года 10 месяцев</p>
                                       <p class="text_prodolteach2">2 года 10 месяцев</p>
                                        <p class="text_prodolteach3">2 года 10 месяцев</p>
                                         <p class="text_prodolteach4">2 года 10 месяцев</p>
                                         <p class="text_colteach1">Мест: 25 из 25</p>
                                         <p class="text_colteach2">Мест: 25 из 25</p>
                                         <p class="text_colteach3">Мест: 25 из 25</p>
                                         <p class="text_colteach4">Мест: 25 из 25</p>
    </div>                  
<!--                    конец блока                     -->
 
 
 <!--              блок с контекстом  блок2-->
    <div id="main_content2">
              <div class="main_blocinfo"> </div>
                 
                    <img class="img1" src="img/o_422bfe3a35%201.png" alt="">
                    <img class="img2"  src="img/vector-financial-accountant-making-report-illustration%201.png" alt="">
                    <img class="img3" src="img/kisspng-human-behavior-vision-care-profession-eyewear-eyes-office-women-glasses-5ab051cfd00988%201.png" alt="">
                    <img class="img4" src="img/Decreto-ingiuntivo-quando-conviene-rivolgerti-al-giudice%201.png" alt="">
                     <div class="linie1"></div>
                      <div class="linie2"></div>
                       <div class="linie3"></div>
                        <div class="linie4"></div>
                          <p class="text_clad">Лучшие ученики и наша гордость!!</p>
                         <p class="text_name_profisie1"><a href="info">Техник-программист</a></p>
                          <p class="text_name_profisie2"><a href="info2">Операционный логист NEW!!!</a></p>
                           <p class="text_name_profisie3"><a href="info3">Бухгалтер</a></p>
                            <p class="text_name_profisie4"><a href="info4">Юрист</a></p>
                              <p class="text_nambeclass1">11 классов</p>
                               <p class="text_nambeclass2">11 классов</p>
                                <p class="text_nambeclass3">11 классов</p>
                                 <p class="text_nambeclass4">11 классов</p>
                                  <p class="text_datanabora1">Начало набора с 15 августа</p>
                                   <p class="text_datanabora2">Начало набора с 15 августа</p>
                                    <p class="text_datanabora3">Начало набора с 15 августа</p>
                                     <p class="text_datanabora4">Начало набора с 15 августа</p>
                                      <p class="text_prodolteach1">2 года 10 месяцев</p>
                                       <p class="text_prodolteach2">1 года 10 месяцев</p>
                                        <p class="text_prodolteach3">1 года 10 месяцев</p>
                                         <p class="text_prodolteach4">1 года 10 месяцев</p>
                                         <p class="text_colteach1">Мест: 25 из 25</p>
                                         <p class="text_colteach2">Мест: 25 из 25</p>
                                         <p class="text_colteach3">Мест: 25 из 25</p>
                                         <p class="text_colteach4">Мест: 28 из 28</p>
                                         
                                         <p class="text_colteach_rol1">дневная</p>
                                         <p class="text_colteach_rol2">дневная</p>
                                         <p class="text_colteach_rol3">дневная</p>
                                         <p class="text_colteach_rol4">дневная</p>
                                         
                                         
                                         
                                         
                                         
    </div>                  
<!--                    конец блока                     -->
 
 <!--              блок с контекстом  блок3-->
    <div id="main_content3">
              <div class="main_blocinfo"> </div>
                 
                   
                    <img class="img1" src="img/kisspng-human-behavior-vision-care-profession-eyewear-eyes-office-women-glasses-5ab051cfd00988%201.png" alt="">
                    <img class="img2" src="img/Decreto-ingiuntivo-quando-conviene-rivolgerti-al-giudice%201.png" alt="">
                     <div class="linie1"></div>
                      <div class="linie2"></div>
                       <div class="linie3"></div>
                        <div class="linie4"></div>
                          <p class="text_clad">Лучшие ученики и наша гордость!!</p>
                         <p class="text_name_profisie1"><a href="info">Бухгалтер</a></p>
                          <p class="text_name_profisie2"><a href="info2">Юрист</a></p>
                          
                              <p class="text_nambeclass1">11 классов</p>
                               <p class="text_nambeclass2">11 классов</p>
                                
                                  <p class="text_datanabora1">Начало набора с 15 августа</p>
                                   <p class="text_datanabora2">Начало набора с 15 августа</p>
                                    
                                      <p class="text_prodolteach1">2 года 8 месяцев</p>
                                       <p class="text_prodolteach2">2 года 7 месяцев</p>
                                        
                                         <p class="text_colteach1">Мест: 20 из 20</p>
                                         <p class="text_colteach2">Мест: 30 из 30</p>
                                        
                                         
                                         <p class="text_colteach_rol1">заочная</p>
                                         <p class="text_colteach_rol2">заочная</p>
                                        
    </div>                  
<!--                    конец блока                     -->
 
  </header>
  <img class="img5" src="img/Group%2013.png" alt="">
   <div class="kryg"></div>
      <p class="text_inkryg">Подай анкету на поступление и следи за набором августа 2020г. После поступления ты получишь полный доступ к личной комнате студента. Удачи на конкурсе!!</p>
       <p class="text_lichcom">Личная комната студента</p>
         
         
         
         <iframe class="rrlt" width="530" height="431" src="https://www.youtube.com/embed/LSUEBq0XxXw?controls=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
         
       
       
      
       
        <p class="text_prirent1">Информирование</p>
         <p class="text_prirent2">Обратная связь</p>
          <p class="text_prirent3">Новые события</p>
           <p class="text_prirent4">Чат для студентов</p>
      
       <p class="text_prirent1_1">Возможнасть следить за конкурсом</p>
         <p class="text_prirent2_1">Преподаватели дают обратную связь и отвечают на вопросы</p>
          <p class="text_prirent3_1">Обьявляется о новых событиях в колледже</p>
           <p class="text_prirent4_1">Чат в котором можно обсудить поступления</p>
      
       <img class="img6" src="img/img1.png" alt="">
                    <img class="img7"  src="img/img2.png" alt="">
                    
                    <img class="img8" src="img/img3.png" alt="">
                    <img class="img9" src="img/img4.png" alt="">
      
      
        <div class="blokrasp"></div>
         
              <div class="blokrasp3"></div>
               <div class="blokrasp4"></div>
       <p class="text_OTRDVER1">Дни открытых дверей в 2019-2020 году Место проведения: актовый зал колледжа</p>
       
       
 <%  
        denDao ud = new denDao();
		List<den> carsList = ud.getAll("FROM den");
		pageContext.setAttribute("ordersPageContext", carsList);
		ud.closeCurentSession();
    %>  
       <div class="rewq">
       <table class="table_blur">   
        <tr>
    <th>Дата проведения</th>
    <th>Место проведения</th>
    </tr>
        <qqq:forEach items="${ordersPageContext}" var="order"> 
  <tr>
     <td>${order.getText()}</td>
     <td>${order.getData()}</td>
    </tr>
     </qqq:forEach> 
</table>

       </div>
       
       
       
       
       
       
           <p class="text_OTRDVER5">Контактный номер</p>
               <p class="text_OTRDVER9">+375298301885 MTC</p>
                <p class="text_OTRDVER10">+375338539994  Velcom</p>
                <p class="text_OTRDVER11">Мы ждем тебя !!</p>
      
       <img class="img10" src="img/img5.png" alt="">
       
       
        <div class="blocconec"></div>
         <div class="lineaconec"></div>
  
        
        <p class="text_conec1"><a class="text_in_textcontnr1" href="input">Контакты</a></p>
        <%if(session.getAttribute("auth") != null && session.getAttribute("auth").toString().equals("ok")){ %>
               <p class="text_conec2"><a class="text_in_textcontnr2" href="UserAdmin">Личный кабинет</a></p>
                <%} else {%>
                   <p class="text_conec2"><a class="text_in_textcontnr2" href="input">Личный кабинет</a></p>
                 <%}%>
      
          <p class="text_conec3">Адрес: 222310 Минская обл., г. Молодечно, пл. Центральная, 1</p>
           <p class="text_conec4">© 2020 AbiMTEC.by</p>
            <p class="text_conec5">Электронная почта нашего колледжа</p>
             <p class="text_conec6">E-Mail: mtec@bks.by, mail@mtec.by</p>
              <p class="text_conec7">Больше информации на</p>
               <p class="text_conec8"><a href="http://mtec.by/">www.mtec.by</a></p>
                <p class="text_conec10">Начальник отдела образования и науки Белкоопсоюза: Мостовская Елена Павловна тел. 8(017)226-95-69 Горячая линия: тел. 8(017)226-91-05</p>
       <img class="img11" src="img/img6.png" alt="">
       
         <%

        usersDao ud2 = new usersDao();
		List<users> carsList3 = ud2.getAll("FROM users");
		pageContext.setAttribute("ordersPageContext3", carsList3);
		ud2.closeCurentSession();
         %>  
       <div class="container">
    <div class="slider">
      <div class="slider__wrapper">
      
      
      
      
      
       <qqq:forEach items="${ordersPageContext3}" var="order2">
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/teacherFoto/${order2.getFoto()}" alt="">
             
            </div>
            
            
          </div>
        </div>
        </qqq:forEach> 
    
      </div>
      <a class="slider__control slider__control_left" href="#" role="button"></a>
      <a class="slider__control slider__control_right" href="#" role="button"></a>
    </div>
    
    
    
  </div>

  <script>
    'use strict';
    var multiItemSlider = (function () {

      function _isElementVisible(element) {
        var rect = element.getBoundingClientRect(),
          vWidth = window.innerWidth || doc.documentElement.clientWidth,
          vHeight = window.innerHeight || doc.documentElement.clientHeight,
          elemFromPoint = function (x, y) { return document.elementFromPoint(x, y) };
        if (rect.right < 0 || rect.bottom < 0
          || rect.left > vWidth || rect.top > vHeight)
          return false;
        return (
          element.contains(elemFromPoint(rect.left, rect.top))
          || element.contains(elemFromPoint(rect.right, rect.top))
          || element.contains(elemFromPoint(rect.right, rect.bottom))
          || element.contains(elemFromPoint(rect.left, rect.bottom))
        );
      }

      return function (selector, config) {
        var
          _mainElement = document.querySelector(selector),
          _sliderWrapper = _mainElement.querySelector('.slider__wrapper'),
          _sliderItems = _mainElement.querySelectorAll('.slider__item'),
          _sliderControls = _mainElement.querySelectorAll('.slider__control'),
          _sliderControlLeft = _mainElement.querySelector('.slider__control_left'),
          _sliderControlRight = _mainElement.querySelector('.slider__control_right'),
          _wrapperWidth = parseFloat(getComputedStyle(_sliderWrapper).width),
          _itemWidth = parseFloat(getComputedStyle(_sliderItems[0]).width),
          _html = _mainElement.innerHTML,
          _positionLeftItem = 0,
          _transform = 0,
          _step = _itemWidth / _wrapperWidth * 100,
          _items = [],
          _interval = 0,
          _states = [
            { active: false, minWidth: 0, count: 1 },
            { active: false, minWidth: 576, count: 2 },
            { active: false, minWidth: 992, count: 3 },
            { active: false, minWidth: 1200, count: 4 },
          ],
          _config = {
            isCycling: false,
            direction: 'right',
            interval: 5000,
            pause: true
          };

        for (var key in config) {
          if (key in _config) {
            _config[key] = config[key];
          }
        }

        _sliderItems.forEach(function (item, index) {
          _items.push({ item: item, position: index, transform: 0 });
        });

        var _setActive = function () {
          var _index = 0;
          var width = parseFloat(document.body.clientWidth);
          _states.forEach(function (item, index, arr) {
            _states[index].active = false;
            if (width >= _states[index].minWidth)
              _index = index;
          });
          _states[_index].active = true;
        }

        var _getActive = function () {
          var _index;
          _states.forEach(function (item, index, arr) {
            if (_states[index].active) {
              _index = index;
            }
          });
          return _index;
        }

        var position = {
          getItemMin: function () {
            var indexItem = 0;
            _items.forEach(function (item, index) {
              if (item.position < _items[indexItem].position) {
                indexItem = index;
              }
            });
            return indexItem;
          },
          getItemMax: function () {
            var indexItem = 0;
            _items.forEach(function (item, index) {
              if (item.position > _items[indexItem].position) {
                indexItem = index;
              }
            });
            return indexItem;
          },
          getMin: function () {
            return _items[position.getItemMin()].position;
          },
          getMax: function () {
            return _items[position.getItemMax()].position;
          }
        }

        var _transformItem = function (direction) {
          var nextItem;
          if (!_isElementVisible(_mainElement)) {
            return;
          }
          if (direction === 'right') {
            _positionLeftItem++;
            if ((_positionLeftItem + _wrapperWidth / _itemWidth - 1) > position.getMax()) {
              nextItem = position.getItemMin();
              _items[nextItem].position = position.getMax() + 1;
              _items[nextItem].transform += _items.length * 100;
              _items[nextItem].item.style.transform = 'translateX(' + _items[nextItem].transform + '%)';
            }
            _transform -= _step;
          }
          if (direction === 'left') {
            _positionLeftItem--;
            if (_positionLeftItem < position.getMin()) {
              nextItem = position.getItemMax();
              _items[nextItem].position = position.getMin() - 1;
              _items[nextItem].transform -= _items.length * 100;
              _items[nextItem].item.style.transform = 'translateX(' + _items[nextItem].transform + '%)';
            }
            _transform += _step;
          }
          _sliderWrapper.style.transform = 'translateX(' + _transform + '%)';
        }

        var _cycle = function (direction) {
          if (!_config.isCycling) {
            return;
          }
          _interval = setInterval(function () {
            _transformItem(direction);
          }, _config.interval);
        }

        var _controlClick = function (e) {
          if (e.target.classList.contains('slider__control')) {
            e.preventDefault();
            var direction = e.target.classList.contains('slider__control_right') ? 'right' : 'left';
            _transformItem(direction);
            clearInterval(_interval);
            _cycle(_config.direction);
          }
        };

        var _handleVisibilityChange = function () {
          if (document.visibilityState === "hidden") {
            clearInterval(_interval);
          } else {
            clearInterval(_interval);
            _cycle(_config.direction);
          }
        }

        var _refresh = function () {
          clearInterval(_interval);
          _mainElement.innerHTML = _html;
          _sliderWrapper = _mainElement.querySelector('.slider__wrapper');
          _sliderItems = _mainElement.querySelectorAll('.slider__item');
          _sliderControls = _mainElement.querySelectorAll('.slider__control');
          _sliderControlLeft = _mainElement.querySelector('.slider__control_left');
          _sliderControlRight = _mainElement.querySelector('.slider__control_right');
          _wrapperWidth = parseFloat(getComputedStyle(_sliderWrapper).width);
          _itemWidth = parseFloat(getComputedStyle(_sliderItems[0]).width);
          _positionLeftItem = 0;
          _transform = 0;
          _step = _itemWidth / _wrapperWidth * 100;
          _items = [];
          _sliderItems.forEach(function (item, index) {
            _items.push({ item: item, position: index, transform: 0 });
          });
        }

        var _setUpListeners = function () {
          _mainElement.addEventListener('click', _controlClick);
          if (_config.pause && _config.isCycling) {
            _mainElement.addEventListener('mouseenter', function () {
              clearInterval(_interval);
            });
            _mainElement.addEventListener('mouseleave', function () {
              clearInterval(_interval);
              _cycle(_config.direction);
            });
          }
          document.addEventListener('visibilitychange', _handleVisibilityChange, false);
          window.addEventListener('resize', function () {
            var
              _index = 0,
              width = parseFloat(document.body.clientWidth);
            _states.forEach(function (item, index, arr) {
              if (width >= _states[index].minWidth)
                _index = index;
            });
            if (_index !== _getActive()) {
              _setActive();
              _refresh();
            }
          });
        }

        // инициализация
        _setUpListeners();
        if (document.visibilityState === "visible") {
          _cycle(_config.direction);
        }
        _setActive();

        return {
          right: function () {
            _transformItem('right');
          },
          left: function () {
            _transformItem('left');
          },
          stop: function () {
            _config.isCycling = false;
            clearInterval(_interval);
          },
          cycle: function () {
            _config.isCycling = true;
            clearInterval(_interval);
            _cycle();
          }
        }

      }
    }());

    var slider = multiItemSlider('.slider', {
      isCycling: true
    })
  </script>
      </div>
  </div>
  
<!--  js код для контентной части -->
   <script type="text/javascript">
   document.getElementById('main_content1').style.display = "block";
     document.getElementById('main_content2').style.display = "none" ;
       document.getElementById('main_content3').style.display = "none" ;
  </script>
  
  <script>
                var btn = document.getElementById('navaceon1');

btn.onclick = function() {
   document.getElementById('main_content1').style.display = "block";
     document.getElementById('main_content2').style.display = "none" ;
       document.getElementById('main_content3').style.display = "none" ;
    
    
    
    
     document.getElementById('rr1').style.background = "rgba(196, 196, 196, 0.5)";
    document.getElementById('rr1').style.color="#F2F2F2";
    
     document.getElementById('rr0').style.background = "#FFFFFF";
    document.getElementById('rr0').style.color="#000000";
    
     document.getElementById('rr2').style.background = "rgba(196, 196, 196, 0.5)";
    document.getElementById('rr2').style.color="#F2F2F2";
}


 var btn = document.getElementById('navaceon2');

btn.onclick = function() {
   document.getElementById('main_content1').style.display = "none";
     document.getElementById('main_content2').style.display = "block" ;
       document.getElementById('main_content3').style.display = "none" ;
    
     document.getElementById('main_content3').style.transform="3s"  ;
    
    
    
    
         document.getElementById('rr0').style.background = "rgba(196, 196, 196, 0.5)";
    document.getElementById('rr0').style.color="#F2F2F2";
    
     document.getElementById('rr1').style.background = "#FFFFFF";
    document.getElementById('rr1').style.color="#000000";
    
     document.getElementById('rr2').style.background = "rgba(196, 196, 196, 0.5)";
    document.getElementById('rr2').style.color="#F2F2F2";
    
    
}

var btn = document.getElementById('navaceon3');

btn.onclick = function() {
   document.getElementById('main_content1').style.display = "none";
     document.getElementById('main_content2').style.display = "none" ;
       document.getElementById('main_content3').style.display = "block" ;
    
    
    document.getElementById('rr0').style.background = "rgba(196, 196, 196, 0.5)";
    document.getElementById('rr0').style.color="#F2F2F2";
    
     document.getElementById('rr2').style.background = "#FFFFFF";
    document.getElementById('rr2').style.color="#000000";
    
     document.getElementById('rr1').style.background = "rgba(196, 196, 196, 0.5)";
    document.getElementById('rr1').style.color="#F2F2F2";
}
            </script>
</body>
</html>