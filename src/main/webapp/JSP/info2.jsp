<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/infoCss.css">
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
top: 2050px;

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
      width: 169px;
height: 158px;
        border-radius: 50%;
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
<body>
    <div class="main_div">
        <div class="header_div"></div>
         <div class="div_collor"></div>
        <img class="text_conec11" src="img/addAnket/Group15.png" alt="">
      
        <p class="text_conec61"><a class="text_in_textcontnr6" href="index">Вернутся на главную</a></p>
          <img class="plagin_img" src="img/plagin/mdi_call_made.png" alt="">
            <img class="imgproger" src="img/imegoperaceon.jpg" alt="">
           <div class="blocconec_main"></div>
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

        <div id="id_main_div1">
          <p class="bloc_text1">Операционный логист: плюсы и минусы профессии</p>
<!--                  <p class="bloc_text2">Имя</p> -->
<!--                  <p class="bloc_text3">Имя</p> -->
<!--                  <p class="bloc_text4">Имя</p> -->
<!--                  <p class="bloc_text5">Имя</p> -->
                 
<!--                         <p class="bloc_text6">Должность и стаж работы</p> -->
<!--                      <p class="bloc_text7">Должность и стаж работы</p> -->
<!--                      <p class="bloc_text8">Должность и стаж работы</p> -->
<!--                      <p class="bloc_text9">Должность и стаж работы</p> -->
                     
<!--                  <div class="kryg1"></div> -->
<!--                   <div class="kryg2"></div> -->
<!--                    <div class="kryg3"></div> -->
<!--                     <div class="kryg4"></div> -->
                    <textarea readonly class="text_main">
                                         Операционный логист
                        
	Еще несколько лет назад доставкой товара от поставщиков к посредникам и потребителям занимались подразделения, входящие в состав торговых или производственных предприятий. Сейчас логистика (относительно современное название) – это отдельная отрасль, которая включает несколько взаимосвязанных между собой специальностей. Одной из профессий, входящих в эту сферу деятельности, является операционный логист. Эта специальность подразумевает наличие некоторых знаний и навыков.

	Кто это такой?

	Логистика — это целый комплекс взаимосвязанных между собой служб. Система включает в себя не только доставку товаров, но еще и их складирование, а также разработку наиболее оптимальных способов транспортировки.

	Операционный логист — это специалист, в обязанности которого входит поиск партнеров и клиентов. Кроме того, этот человек занимается анализированием ситуации, складывающейся на рынке транспортных услуг. Дополнительно в обязанности операционного логиста входит заполнение необходимых документов (накладные, акты приемки-передачи и тому подобное).
	Людям, далеким от этой профессии, зачастую интересно, что делает логист в ходе выполнения своих трудовых обязанностей. Операционный логист или специалист по транспорту занимается составлением наиболее оптимальных маршрутов. В соответствии с составленным планом по факту и будет осуществляться доставка.

	Также этот специалист работает на складских помещениях. В поле ответственности логиста находится отгрузка, разгрузка и правильное размещение товаров на складе. Дополнительно он отвечает за выполнение более узких задач, к которым относятся:
             1.материальные вопросы;
             2.системы товародвижения;
             3.нематериальные вопросы (например, сервисные и информационные);
             4.производственные и сбытовые системы.

                                         Должностная инструкция

	Все навыки и знания, которыми должен обладать операционный логист, более подробно прописаны в должностной инструкции. Согласно этому документу, специалист в области логистики должен уметь:
               1.планировать, а после организовывать логистический процесс;
               2.управлять системой, которая связана с закупкой, распределением и производством;
               3.оптимизировать ресурсы предприятия;
               4.производить контроль выполняемых операций.
               
	По факту выполненных работ составляется отчетность, за правильность и своевременность которой также отвечает операционный логист. В структуре компании он непосредственно подчиняется начальнику своего подразделения.

                                           Карьерный рост

	Профессию «операционный логист» нельзя назвать скучной. Человеку, занятому в этом деле, придется чередовать умственные нагрузки с физическими, привыкать к постоянному общению с людьми, ежедневно решать множество вопросов и проблем, возникающих на разных этапах доставки товаров.

Несомненным плюсом профессии является потенциальная возможность карьерного роста и, как следствие, увеличение уровня доходов. Так, работая в компании на протяжении нескольких лет в должности диспетчера, можно развиваться и стать специалистом по логистике и ВЭД. Следующая ступень карьерного роста — начальник логистического отдела. 
                      
                    </textarea>
                    
                    
                           
<!--                    -->
                        <div class="container">

    <div class="slider">
      <div class="slider__wrapper">
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/na3na4/img.jpg" alt="">
              <span class="slider__content_section">Совет эксперта</span>
            </div>
            <h2 class="slider__content_title">Как самому сделать мыльные пузыри?</h2>
            <div class="slider__content_footer">
              <div class="slider__content_avatar">
                <img class="slider__content_photo" src="img/na3na4/img.jpg" alt="">
              </div>
              <span class="slider__content_author">Ирина</span>
              <svg class="slider__content_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path fill="currentColor" d="M10 5C6.947 5 4.16 6.747 2.12 9.61a.726.726 0 0 0 0 .799C4.16 13.253 6.947 15 10 15s5.84-1.747 7.88-4.61a.726.726 0 0 0 0-.799C15.84 6.747 13.053 5 10 5zm.213 8.513c-2.023.13-3.71-1.617-3.585-3.755.106-1.747 1.473-3.178 3.141-3.29 2.024-.13 3.71 1.618 3.585 3.755-.106 1.766-1.455 3.178-3.141 3.29zm-.089-1.617c-1.1.074-1.988-.874-1.934-2.026.053-.948.78-1.71 1.686-1.766 1.1-.074 1.988.874 1.934 2.026-.053.93-.798 1.71-1.686 1.766z"></path>
              </svg>
              <span class="slider__content_views">1250</span>
            </div>
          </div>
        </div>
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/na3na4/img.jpg" alt="">
              <span class="slider__content_section">Подборка</span>
            </div>
            <h2 class="slider__content_title">15 самых полезных свойств черники</h2>
            <div class="slider__content_footer">
              <div class="slider__content_avatar">
                <img class="slider__content_photo" src="img/na3na4/img.jpg" alt="">
              </div>
              <span class="slider__content_author">Тамара</span>
              <svg class="slider__content_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path fill="currentColor" d="M10 5C6.947 5 4.16 6.747 2.12 9.61a.726.726 0 0 0 0 .799C4.16 13.253 6.947 15 10 15s5.84-1.747 7.88-4.61a.726.726 0 0 0 0-.799C15.84 6.747 13.053 5 10 5zm.213 8.513c-2.023.13-3.71-1.617-3.585-3.755.106-1.747 1.473-3.178 3.141-3.29 2.024-.13 3.71 1.618 3.585 3.755-.106 1.766-1.455 3.178-3.141 3.29zm-.089-1.617c-1.1.074-1.988-.874-1.934-2.026.053-.948.78-1.71 1.686-1.766 1.1-.074 1.988.874 1.934 2.026-.053.93-.798 1.71-1.686 1.766z"></path>
              </svg>
              <span class="slider__content_views">757</span>
            </div>
          </div>
        </div>
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/na3na4/img.jpg" alt="">
              <span class="slider__content_section">Подборка</span>
            </div>
            <h2 class="slider__content_title">Лучшие фермерские рынки Майами</h2>
            <div class="slider__content_footer">
              <div class="slider__content_avatar">
                <img class="slider__content_photo" src="img/na3na4/img.jpg" alt="">
              </div>
              <span class="slider__content_author">Иван</span>
              <svg class="slider__content_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path fill="currentColor" d="M10 5C6.947 5 4.16 6.747 2.12 9.61a.726.726 0 0 0 0 .799C4.16 13.253 6.947 15 10 15s5.84-1.747 7.88-4.61a.726.726 0 0 0 0-.799C15.84 6.747 13.053 5 10 5zm.213 8.513c-2.023.13-3.71-1.617-3.585-3.755.106-1.747 1.473-3.178 3.141-3.29 2.024-.13 3.71 1.618 3.585 3.755-.106 1.766-1.455 3.178-3.141 3.29zm-.089-1.617c-1.1.074-1.988-.874-1.934-2.026.053-.948.78-1.71 1.686-1.766 1.1-.074 1.988.874 1.934 2.026-.053.93-.798 1.71-1.686 1.766z"></path>
              </svg>
              <span class="slider__content_views">320</span>
            </div>
          </div>
        </div>
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/na3na4/img.jpg" alt="">
              <span class="slider__content_section">Подборка</span>
            </div>
            <h2 class="slider__content_title">Почему утята такие милые?</h2>
            <div class="slider__content_footer">
              <div class="slider__content_avatar">
                <img class="slider__content_photo" src="img/na3na4/img.jpg" alt="">
              </div>
              <span class="slider__content_author">Тамара</span>
              <svg class="slider__content_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path fill="currentColor" d="M10 5C6.947 5 4.16 6.747 2.12 9.61a.726.726 0 0 0 0 .799C4.16 13.253 6.947 15 10 15s5.84-1.747 7.88-4.61a.726.726 0 0 0 0-.799C15.84 6.747 13.053 5 10 5zm.213 8.513c-2.023.13-3.71-1.617-3.585-3.755.106-1.747 1.473-3.178 3.141-3.29 2.024-.13 3.71 1.618 3.585 3.755-.106 1.766-1.455 3.178-3.141 3.29zm-.089-1.617c-1.1.074-1.988-.874-1.934-2.026.053-.948.78-1.71 1.686-1.766 1.1-.074 1.988.874 1.934 2.026-.053.93-.798 1.71-1.686 1.766z"></path>
              </svg>
              <span class="slider__content_views">1855</span>
            </div>
          </div>
        </div>
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/na3na4/img.jpg" alt="">
              <span class="slider__content_section">Подборка</span>
            </div>
            <h2 class="slider__content_title">Вкусный лимонад в жаркий день</h2>
            <div class="slider__content_footer">
              <div class="slider__content_avatar">
                <img class="slider__content_photo" src="img/na3na4/img.jpg" alt="">
              </div>
              <span class="slider__content_author">Ирина</span>
              <svg class="slider__content_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path fill="currentColor" d="M10 5C6.947 5 4.16 6.747 2.12 9.61a.726.726 0 0 0 0 .799C4.16 13.253 6.947 15 10 15s5.84-1.747 7.88-4.61a.726.726 0 0 0 0-.799C15.84 6.747 13.053 5 10 5zm.213 8.513c-2.023.13-3.71-1.617-3.585-3.755.106-1.747 1.473-3.178 3.141-3.29 2.024-.13 3.71 1.618 3.585 3.755-.106 1.766-1.455 3.178-3.141 3.29zm-.089-1.617c-1.1.074-1.988-.874-1.934-2.026.053-.948.78-1.71 1.686-1.766 1.1-.074 1.988.874 1.934 2.026-.053.93-.798 1.71-1.686 1.766z"></path>
              </svg>
              <span class="slider__content_views">2799</span>
            </div>
          </div>
        </div>
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/na3na4/img.jpg" alt="">
              <span class="slider__content_section">Совет эксперта</span>
            </div>
            <h2 class="slider__content_title">10 заповедей счастливой женщины</h2>
            <div class="slider__content_footer">
              <div class="slider__content_avatar">
                <img class="slider__content_photo" src="img/na3na4/img.jpg" alt="">
              </div>
              <span class="slider__content_author">Тамара</span>
              <svg class="slider__content_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path fill="currentColor" d="M10 5C6.947 5 4.16 6.747 2.12 9.61a.726.726 0 0 0 0 .799C4.16 13.253 6.947 15 10 15s5.84-1.747 7.88-4.61a.726.726 0 0 0 0-.799C15.84 6.747 13.053 5 10 5zm.213 8.513c-2.023.13-3.71-1.617-3.585-3.755.106-1.747 1.473-3.178 3.141-3.29 2.024-.13 3.71 1.618 3.585 3.755-.106 1.766-1.455 3.178-3.141 3.29zm-.089-1.617c-1.1.074-1.988-.874-1.934-2.026.053-.948.78-1.71 1.686-1.766 1.1-.074 1.988.874 1.934 2.026-.053.93-.798 1.71-1.686 1.766z"></path>
              </svg>
              <span class="slider__content_views">1855</span>
            </div>
          </div>
        </div>
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/na3na4/img.jpg" alt="">
              <span class="slider__content_section">Совет эксперта</span>
            </div>
            <h2 class="slider__content_title">Влияние кофе на организм человека</h2>
            <div class="slider__content_footer">
              <div class="slider__content_avatar">
                <img class="slider__content_photo" src="img/na3na4/img.jpg" alt="">
              </div>
              <span class="slider__content_author">Арнольд</span>
              <svg class="slider__content_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path fill="currentColor" d="M10 5C6.947 5 4.16 6.747 2.12 9.61a.726.726 0 0 0 0 .799C4.16 13.253 6.947 15 10 15s5.84-1.747 7.88-4.61a.726.726 0 0 0 0-.799C15.84 6.747 13.053 5 10 5zm.213 8.513c-2.023.13-3.71-1.617-3.585-3.755.106-1.747 1.473-3.178 3.141-3.29 2.024-.13 3.71 1.618 3.585 3.755-.106 1.766-1.455 3.178-3.141 3.29zm-.089-1.617c-1.1.074-1.988-.874-1.934-2.026.053-.948.78-1.71 1.686-1.766 1.1-.074 1.988.874 1.934 2.026-.053.93-.798 1.71-1.686 1.766z"></path>
              </svg>
              <span class="slider__content_views">2107</span>
            </div>
          </div>
        </div>
      </div>
      <a class="slider__control slider__control_left" href="#" role="button"></a>
      <a class="slider__control slider__control_right" href="#" role="button"></a>
    </div>
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
        
    
</body>

</html>