  <%@page import="com.roolt.entities.mes"%> 
 <%@page import="com.cadragen.daos.mesDao"%>
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
    <link rel="stylesheet" href="css/UserMessage.css">
    <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
 <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
 <style>
        .container {
    border: 2px solid #dedede;
    background-color: #f1f1f1;
    border-radius: 5px;
    padding: 10px;
    margin: 10px 0;
     
}

/* Darker chat container */
.darker {
    border-color: #ccc;
    background-color: #ddd;
}

/* Clear floats */
.container::after {
    content: "";
    clear: both;
    display: table;
}

/* Style images */
.container img {
    float: left;
    max-width: 60px;
    width: 100%;
    margin-right: 20px;
    border-radius: 50%;
}

/* Style the right image */
.container img.right {
    float: right;
    margin-left: 20px;
    margin-right:0;
}

/* Style time text */
.time-right {
    float: right;
    color: #aaa;
}

/* Style time text */
.time-left {
    float: left;
    color: #999;
}
        .scroll{
             overflow: scroll;
          
            overflow-x: hidden;
position: absolute;
width: 969px;
height: 489px;
left: 414px;
top: 70px;
    margin: 50px auto 0;
    border: solid 1px #ccc;
        }
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


//??????????????
double srBALL=0.0;
int srkoll=0;
for(ankets order : carsList) {
	srkoll++;
	srBALL+=order.getCrednie_bal();
	}
double otv=srBALL/srkoll;
String result = String.format("%.1f",otv);
//
//?????????????? ??????????
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
         <input class="stringSautch" type="text" maxlength="18" placeholder="??????????..." autofocus>
         <p class="textName">${AnketsInfoPageContext.getName()}  ${AnketsInfoPageContext.getFam()}  ${AnketsInfoPageContext.getOtch()}</p>
         <div class="ImgHeader"><img class="rre" src="img/teacherFoto/${userInfoPageContext.getFoto()}"></div>
          <img id="Menu_header" class="imgSautchPlagen" src="img/mainUser/imghlagerHeader.png" alt="">
           <img id="Menu_header2" class="imgSautchPlagen" src="img/mainUser/imghlagerHeader2.png" alt="">
          
         
          
<!--          menu -->
          <div class="menu"></div>
          <div class="menu_color"></div>
            <div class="menu_color1"></div>
          <div class="menu_color"></div>
          <div class="menu_color3"></div>
          <div class="menu_color4"></div>
          <div class="menu_color5"></div>
         

            <div class="menu_color_red_blue"></div>
         <p class="text_menu1"><a href="UserAdmin">?????? ??????????????</a></p>
           <p class="text_menu2" ><a href="UserMessage">??????????????????</a></p>
          
               <%if(session.getAttribute("InfoUser") != null){ %>
               <p class="text_menu3"><a href="UserInfo">????????????????</a></p>
                <%} else {%>
                 <p class="text_menu3"><a href="UserAdmin">????????????????</a></p>
                 <%}%>
            
              <p class="text_menu4"><a href="UserTON">??????????????????????</a></p>
               <p class="text_menu5"><a href="UserNas">??????????????????</a></p>

                  
                  <img  class="img1" src="img/mainUser/menu1.png" alt="">
                  <img  class="img2" src="img/mainUser/menu2.png" alt="">
                  <img  class="img3" src="img/mainUser/menu7.png" alt="">
                  <img  class="img4" src="img/mainUser/menu8.png" alt="">
                  <img  class="img5" src="img/mainUser/menu9.png" alt="">
                
              
          <!--      close    menu -->
          
           <div class="blocconec"></div>
         <div class="lineaconec"></div>
        <p class="text_conec1"><a class="text_in_textcontnr1" href="#">????????????????</a></p>
         <p class="text_conec2"><a class="text_in_textcontnr2" href="#">???????????? ??????????????</a></p>
          <p class="text_conec3">??????????: 222310 ?????????????? ??????., ??. ??????????????????, ????. ??????????????????????, 1</p>
           <p class="text_conec4">?? 2020 AbiMTEC.by</p>
            <p class="text_conec5">?????????????????????? ?????????? ???????????? ????????????????</p>
             <p class="text_conec6">E-Mail: mtec@bks.by, mail@mtec.by</p>
              <p class="text_conec7">???????????? ???????????????????? ????</p>
               <p class="text_conec8"><a href="#">www.mtec.by</a></p>
                <p class="text_conec10">?????????????????? ???????????? ?????????????????????? ?? ?????????? ????????????????????????: ???????????????????? ?????????? ???????????????? ??????. 8(017)226-95-69 ?????????????? ??????????: ??????. 8(017)226-91-05</p>
       <img class="img11" src="img/img6.png" alt="">
          
          
          
          
          
          
          
          
          
          
          
          
          
         <div id="chat_bisada1" class="scroll">
         
         
         
    <%
    
    
    anketsDao ud0 = new anketsDao();  
    List<ankets> carsList2 = ud0.getAll("FROM ankets where cpecialnost='"+anket.getCpecialnost()+"' and baz_obuchen='"+anket.getBaz_obuchen()+"' order by crednie_bal DESC");    
    ud0.closeCurentSession();
    for(ankets orderp : carsList2) {
mesDao udA1 = new mesDao();
List<mes> carsList22 = udA1.getAll("FROM mes where id_userR='"+orderp.getId_userD()+"'");
for(mes order2 : carsList22) {
	
	usersDao ude = new usersDao();
	users usere = ude.getUserID(order2.getId_userR());
	ude.closeCurentSession();
	
	anketsDao udew = new anketsDao();
	ankets userew = udew.getAnketsID(order2.getId_userR());
	udew.closeCurentSession();
	
	
	if(order2.getId_userR()==user.getId_user()){
		out.print("<div class='container darker'>");
				out.print("<img src='img/teacherFoto/"+usere.getFoto()+"' alt='Avatar' class='right'>");
						out.print("<p>"+userew.getFam()+" "+userew.getName()+":  "+order2.getText() +"</p>");
								out.print("<span class='time-left'>"+order2.getData()+"</span>");
										out.print("</div>");	
	}else{
		out.print("<div class='container'>");
		out.print("  <img src='img/teacherFoto/"+usere.getFoto()+"' alt='Avatar'>");
		out.print("    <p>"+userew.getFam()+" "+userew.getName()+":  "+order2.getText() +"</p>     ");
		out.print("    <span class='time-right'>"+order2.getData()+"</span>     ");
		out.print("   </div>     ");	
	}

	


// 	out.print("<tr>");
// 		out.print("<td>" + m + "</td>");			
// 		out.print("<td align='center'> <img class='rre' src='img/teacherFoto/"+forouser.getFoto()+"''>   <p onclick=getinfousers('"+forouser.getLogin()+"')>" + order2.getName() + " " + order2.getFam() + "</p></td>");			
// 		out.print("<td>" + order2.getCpecialnost() + "</td>");
// 		out.print("<td>" + order2.getCrednie_bal() + "</td>");
// 		out.print("<td>" + order2.getDataP() + "</td>");
// 		out.print("</tr>");
	}
udA1.closeCurentSession();
    }

%>         
         











</div>













 <form action="testS" id="FormADDANKwe"  method="POST" enctype="multipart/form-data" class="form" id="pois">
 
<input maxlength="255" id="tty1" name="trw" type="text" class="text_input_message1" >   </input>
<button class="button_chating"  onclick="testS()" value="??????????????????"> ?????????????????? </button> 
     
   </form>     
        




















          <div id="vspl" class="vsplOcn">
          <div class="vspl1"></div>
          <div class="vspl2"></div>
          <p class="text1"> <a href="index">???? ??????????????</a> </p>
           <p class="text2">???????????? ????????</p>
<!--                                         <p class="text22">???? ??????????????</p>-->
             <p class="text3">??????????</p>
              <img  class="imgSautchPlagen1" src="img/mainUser/HomePlagen.png" alt="">
               <img id="ytu1"  class="imgSautchPlagen2" src="img/mainUser/Perecl1.png" alt="">
            <img id="ytu2"  class="imgSautchPlagen22" src="img/mainUser/Perecl2.png" alt="">
                 <img  class="imgSautchPlagen3" src="img/mainUser/utpud.png" alt="">
          </div>  
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