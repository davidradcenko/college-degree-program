<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
     <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
    <style>
        body{
    background: #FFFFFF;
    font-family: 'Montserrat',sans-serif;  
    margin: 0px;
}
        .main{
position: relative;
width: 1440px;
height: 1024px;
background: #FFFFFF;
            margin: 0 auto;
        }
        .bloc1{
          position: absolute;
width: 628px;
height: 393px;
left: 406px;
top: 68px;
background: #F3F3F3;
border: 1px solid #000000;
box-sizing: border-box;
        }
        .test{
            position: absolute;
width: 243px;
height: 42px;
left: 598px;
top: 1px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 42px;
color: #A22020;
        }
        .button_class1{
            position: absolute;
width: 504.09px;
height: 54px;
left: 468px;
top: 118px;
            font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 24px;
line-height: 42px;
background: #FFFFFF;
border: 1px solid #000000;
box-sizing: border-box;
box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.5);
border-radius: 10px;
        }
        .button_class2{
            position: absolute;
width: 504.09px;
height: 54px;
left: 468px;
top: 210px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 24px;
line-height: 42px;
background: #FFFFFF;
border: 1px solid #000000;
box-sizing: border-box;
box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.5);
border-radius: 10px;
        }
        .button_class{
            position: absolute;
width: 171.56px;
height: 54px;
left: 634px;
top: 335px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 24px;
background: #55C2E1;
border: 1px solid #000000;
box-sizing: border-box;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.5);
border-radius: 10px;
        }
        .button_class218{
           position: absolute;
width: 171.56px;
height: 54px;
left: 634px;
top: 315px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 24px;
background: #55C2E1;     
        }
    </style>
</head>
<body>
    <div class="main">
        
        <div class="bloc1"></div>
       <p class="test">Админ панель</p>
        
     
        
        
        
                    <form id="signForm" class="form-signin" action="PassUserAdmin()">
                      
                      <input class="button_class1"   name="w"  type="text"  placeholder="  Login" value="">
                       <input class="button_class2"  name="ww" type="password"   placeholder="  **************" >
                       
                        <p class="button_class218" id="info"></p>
                        <input class="button_class" onclick="PassUserAdmin()"  type="button" value="Ввойти">
                     </form>
    </div>
</body>
</html>