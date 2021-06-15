<%@page import="com.roolt.entities.ankets"%> 
<%@page import="com.cadragen.daos.anketsDao"%> 
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>
 <%@page import="com.roolt.entities.users"%> 
 <%@page import="com.cadragen.daos.usersDao"%>
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
top: 326px;
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
<body>
   
  <div class="main">
    <img class="logoimg" src="img/mainUser/Logo2020.png" alt="">
   
    
    <div class="erd"></div>
    
    
   
 <a href="MainAdminADD" class="r11">Лучшие студенты</a>

    <a href="MainAdmin" class="r2">Анкеты</a>
    <a href="MainAdminDEN" class="r4">Дни открытых дверей</a>
    <p  class="r3">Админ панель </p>
 


<%

        usersDao ud2 = new usersDao();
		List<users> carsList3 = ud2.getAll("FROM users  where roll=3");
		pageContext.setAttribute("ordersPageContext3", carsList3);
		ud2.closeCurentSession();
		
		
		
		
         %> 





 <div id="addUser1">
                      <form action="uploadFileadmin2" method="POST" enctype="multipart/form-data" class="form" id="fileForm2">
                              <p  class="e1">Выберите картинку </p>
                                                        
                                                     
                                                      
               <input  class="inp5" type="file"  name="fileInput" onchange="getName(this.value);" id="uploadfile">
                                                         
                                                         
                                                         
                         <div class="texto" id="info"></div>
					     <div class="texto1" id="info1"></div>
					     <input class="nevidbutton" id="info2" name="vvodFoto">
                                                    
                                                        
<button class="inp6" type="button" onclick="uploadFileadmin2()" value="Сохранить">Загрузить картинку</button>

                                                                        

    </form>
                 </div>
 
         
        <div class="container">
    <div class="slider">
      <div class="slider__wrapper">
      
      
      
      
      
       <qqq:forEach items="${ordersPageContext3}" var="order2">
        <div class="slider__item">
          <div class="slider__content">
            <div class="slider__content_header">
              <img class="slider__content_img" src="img/teacherFoto/${order2.getFoto()}" alt="">
             <span class="slider__content_section"><img title="Удалить запись" class="imgdell" onclick="DeleteUser('${order2.getId_user()}')" src="img/addAnket/mdi_close.png" alt=""></span>
            </div>
            
            
          </div>
        </div>
        </qqq:forEach> 
    
      </div>
      <a class="slider__control slider__control_left" href="#" role="button"></a>
      <a class="slider__control slider__control_right" href="#" role="button"></a>
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
 
</body>
</html>