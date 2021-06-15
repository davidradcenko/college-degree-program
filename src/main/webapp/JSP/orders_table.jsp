<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>



    <form action="addAnkwt" method="POST" enctype="multipart/form-data" class="form" id="FormADDANK">
                                     <div id="id1">
                                  
                                         <div class="regAnket"></div>
                                         <p class="text1">Анкета абитуриента</p>
                                            <img id="close" class="close" src="img/addAnket/mdi_close.png" alt="">
                                         <div class="line"></div>
                                         <p class="text2">Имя</p>
                                         <p class="text3">Имя (бел)</p>
                                         <p class="text4">Фамилия</p>
                                         <p class="text5">Фамилия (бел)</p>
                                         <p class="text6">Отчество</p>
                                         <p class="text7">Отчество (бел)</p>
                                         <p class="text8"> Мобильный телефон</p>
                                         <p class="text9">email</p>
                                         <p class="text10">1/ 4</p>
                                         <img id="n1" class="imgNext" src="img/addAnket/Vector.png" alt="">

                                         <input class="in1" type="text" value="${ordersPageContextS.getName()}" name="name" id="">
                                         <input class="in2" type="text" value="${ordersPageContextS.getNameBY()}" name="nameBY" id="">
                                         <input class="in3" type="text" value="${ordersPageContextS.getFam()}" name="fam" id="">
                                         <input class="in4" type="text" value="${ordersPageContextS.getFamBY()}" name="famBY" id="">
                                         <input class="in5" type="text" value="${ordersPageContextS.getOtch()}" name="otch" id="">
                                         <input class="in6" type="text" value="${ordersPageContextS.getOtchBY()}" name="otchBY" id="">

                                          <input class="in7" value="${ordersPageContextS.getTelefon()}" maxlength="255" type="text" name="telefon" id="" placeholder="+375 29 8353435">
                                         <input class="in8" value="${ordersPageContextS.getEmail()}" maxlength="255" type="text" name="email" id="" placeholder="EvgenieVlacol1991@gmail.com">
                                     </div>
                                     <div id="id2">
                             <div class="regAnket"></div>
                             <p class="text1">Анкета абитуриента</p>
                                <img id="close2" class="close" src="img/addAnket/mdi_close.png" alt="">
                             <div class="line"></div>
                             
                             <p class="text11">Специальность </p>
                             <p class="text12">Форма обучения</p>
                             <p class="text13">Базовое образование</p>
                             <input  class="in9" name="cpecialnost" type="text" value="${ordersPageContextS.getCpecialnost()}">
 <input  class="in10" name="form_obuchen" type="text" value="${ordersPageContextS.getForm_obuchen()}">
                           
                              
                           <input  class="in11" name="baz_obuchen" type="text" value="${ordersPageContextS.getBaz_obuchen()}">
                              
                             <input  class="in12" name="chlen_brsm" type="text" value="Член БРСМ:${ordersPageContextS.getChlen_brsm()}"> 
                            
                             <input  class="in13" name="trebuets_obcaga" type="text" value="Требуется общежитие:${ordersPageContextS.getTrebuets_obcaga()}"> 
                            
                             
                            <p class="text14">Льгота</p>
                             <input  class="in14" name="lgota" type="text"  value="${ordersPageContextS.getLgota()}">
                             <p class="text15">Пол</p>
                             
                             
                             <input  class="in15" name="pol" type="text"  value="${ordersPageContextS.getPol()}">
                              
                             
                              <p class="text10">2/ 4</p>
                                         <img id="n3" class="imgNext" src="img/addAnket/Vector.png" alt="">
                                          <img id="n2" class="imgNext2" src="img/addAnket/Vector2.png" alt="">
                         </div>
  
                        <div id="id3">
                                         
                                          <div class="regAnket"></div>
                                             <img id="close" class="close" src="img/addAnket/mdi_close.png" alt="">
                                         <p class="text1">Анкета абитуриента</p>
                                            <img id="close3" class="close" src="img/addAnket/mdi_close.png" alt="">
                                         <div class="line"></div>
                                          <p class="text10">3/ 4</p>
                                         <img id="1n25" class="imgNext" src="img/addAnket/Vector.png" alt="">
                                          <img id="n4" class="imgNext2" src="img/addAnket/Vector2.png" alt="">
                                          
                                          
                                              <p class="text16">Дата окончания образования </p>
                                              
                                               <input maxlength="255"  class="inp16" name="data_okonchanie_obrazov" type="text"  value="${ordersPageContextS.getData_okonchanie_obrazov()}">
                                              
                                              
                                        
                                              <p class="text17">Окончил классов</p>
                       <input maxlength="255"  class="inp17" name="okonchil_klasov" type="text"  value="${ordersPageContextS.getOkonchil_klasov()}">                       
                                           
                                              <p class="text18">Вид образовательной организации</p>
                                              
                           <input maxlength="255"  class="inp18" name="vid_obraz_organ" type="text"  value="${ordersPageContextS.getVid_obraz_organ()}">                                                                
                                                               
                                                            
                                              
                                              <p class="text19">Город образовательной организации</p>
                           <input maxlength="255"  class="inp19" name="gorod_obraz_organiz" type="text"  value="${ordersPageContextS.getGorod_obraz_organiz()}">                    
                                          
                                              <p class="text20">Наименование учебного заведения</p>
                                               <input maxlength="255"  class="inp20" name="name_uchedn_zaveden" type="text"  value="${ordersPageContextS.getName_uchedn_zaveden()}"> 
                                          
                                        <input maxlength="255"  class="inp21" name="c_otlichem_medal" type="text"  value="С отличием:${ordersPageContextS.getC_otlichem_medal()}">       
                                         
                                             <input maxlength="255"  class="inp22" name="prohodil_voinskue_uchet" type="text"  value="Военская службу:${ordersPageContextS.getProhodil_voinskue_uchet()}">
                                          
                                              <p class="text23">Изучаемый иностранный язык</p>
                                              
                                              
                                              <input maxlength="255"  class="inp23" name="izuchemue_lang" type="text"  value="${ordersPageContextS.getIzuchemue_lang()}">
                                              
                
                                              <p class="text24">Средний балл аттестата</p>
                                              <input maxlength="255"  class="inp24" name="crednie_bal" type="text"  value="${ordersPageContextS.getCrednie_bal()}">
                                        
                                          
                                          
                        </div>
                     <div id="id4">
                              <div class="regAnket"></div>
                                         <p class="text1">Анкета абитуриента</p>
                                            <img id="close4" class="close" src="img/addAnket/mdi_close.png" alt="">
                                         <div class="line"></div>
                                          <p class="text10">4/ 4</p>
                                        
                                          <img id="1n34" class="imgNext2" src="img/addAnket/Vector2.png" alt="">
                         
                         
                         <p class="text25">Дата рождения</p>
                         <p class="text26">Место рождения</p>
                         <p class="text27">Источник информации</p>
                         <p class="text28">Адрес по прописке </p>
                         <p class="text29">Адрес для информирования</p>
                         <p class="text30">Канал рекламного воздействия</p>
                        
                         <p class="text32">Увлечения</p>
                         
                         <input maxlength="255"  class="inpr25" name="data_rochden" type="text"  value="${ordersPageContextS.getData_rochden()}">
                          <input maxlength="255"  class="inpr26" name="mecto_rochdenie" type="text"  value="${ordersPageContextS.getMecto_rochdenie()}">
                         
                         
                         
                         
                         <input maxlength="255"  class="inpr27" name="istochnik_info" type="text"  value="${ordersPageContextS.getIstochnik_info()}">
                       
                         
                      <input maxlength="255"  class="inpr28" name="kanal_reclamnogo_vozdei" type="text"  value="${ordersPageContextS.getKanal_reclamnogo_vozdei()}">   
                         
                                                         
                         
                         <input maxlength="255"  class="inpr29" name="adres_dle_inform" type="text"  value="${ordersPageContextS.getAdres_dle_inform()}">   
                         
                          <input maxlength="255"  class="inpr30" name="kak_abitur_urnal_o_nas" type="text"  value="${ordersPageContextS.getKak_abitur_urnal_o_nas()}"> 
                         
                         
                         <input maxlength="255"  class="inpr31" name="pocechali_kyrs" type="text"  value="Посещал курсы:${ordersPageContextS.getPocechali_kyrs()}"> 
                         
                         
                        <input maxlength="255"  class="inpr32" name="uvlechenie" type="text"  value="${ordersPageContextS.getUvlechenie()}"> 
                          
                         
                         
                     </div>
                  
                    </form>
                     <script type="text/javascript">
   document.getElementById('id1').style.display = "block";
     document.getElementById('id2').style.display = "none" ;
         document.getElementById('id3').style.display = "none" ;
          document.getElementById('id4').style.display = "none" ;
        
  </script>
  <script>var btn = document.getElementById('close');

  btn.onclick = function() {
	  document.getElementById('id1').style.display = "none";
	     document.getElementById('id2').style.display = "none" ;
	         document.getElementById('id3').style.display = "none" ;
	          document.getElementById('id4').style.display = "none" ;
  }
  var btn = document.getElementById('close2');

  btn.onclick = function() {
	  document.getElementById('id1').style.display = "none";
	     document.getElementById('id2').style.display = "none" ;
	         document.getElementById('id3').style.display = "none" ;
	          document.getElementById('id4').style.display = "none" ;
  }
  var btn = document.getElementById('close3');

  btn.onclick = function() {
	  document.getElementById('id1').style.display = "none";
	     document.getElementById('id2').style.display = "none" ;
	         document.getElementById('id3').style.display = "none" ;
	          document.getElementById('id4').style.display = "none" ;
  }
  var btn = document.getElementById('close4');

  btn.onclick = function() {
	  document.getElementById('id1').style.display = "none";
	     document.getElementById('id2').style.display = "none" ;
	         document.getElementById('id3').style.display = "none" ;
	          document.getElementById('id4').style.display = "none" ;
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
var btn = document.getElementById('n1');

btn.onclick = function() {
    document.getElementById('id1').style.display = "none";
     document.getElementById('id2').style.display = "block"
}


 var btn = document.getElementById('n2');

btn.onclick = function() {
    document.getElementById('id1').style.display = "block";
     document.getElementById('id2').style.display = "none"
}

 var btn = document.getElementById('n3');

btn.onclick = function() {
    document.getElementById('id3').style.display = "block";
     document.getElementById('id2').style.display = "none"
}

 var btn = document.getElementById('n4');

btn.onclick = function() {
    document.getElementById('id2').style.display = "block";
     document.getElementById('id3').style.display = "none"
}

//var btn = document.getElementById('1n4');
//
//btn.onclick = function() {
//    document.getElementById('id3').style.display = "block";
//     document.getElementById('id4').style.display = "none"
//}

var btn = document.getElementById('1n25');
btn.onclick = function() {
    document.getElementById('id4').style.display = "block";
     document.getElementById('id3').style.display = "none";
}

var btn = document.getElementById('1n34');
btn.onclick = function() {
    document.getElementById('id3').style.display = "block";
     document.getElementById('id4').style.display = "none";
}

            </script>
