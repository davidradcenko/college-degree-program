<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/abiturientReg.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</head>
<body>
    
    <div class="main_cenor">
   

    <div class="blocconec"></div>
         <div class="lineaconec"></div>
        <p class="text_conec1"><a class="text_in_textcontnr1" href="#">Контакты</a></p>
         <p class="text_conec2"><a class="text_in_textcontnr2" href="#">Личный кабинет</a></p>
          <p class="text_conec3">Адрес: 222310 Минская обл., г. Молодечно, пл. Центральная, 1</p>
           <p class="text_conec4">© 2020 AbiMTEC.by</p>
            <p class="text_conec5">Электронная почта нашего колледжа</p>
             <p class="text_conec6">E-Mail: mtec@bks.by, mail@mtec.by</p>
              <p class="text_conec7">Больше информации на</p>
               <p class="text_conec8"><a href="#">www.mtec.by</a></p>
                <p class="text_conec10">Начальник отдела образования и науки Белкоопсоюза: Мостовская Елена Павловна тел. 8(017)226-95-69 Горячая линия: тел. 8(017)226-91-05</p>
       <img class="img11" src="img/img6.png" alt="">
       
      <img class="text_conec11" src="img/addAnket/Group15.png" alt="">
                  
                     <p class="text_main6"><a class="ing1" href="index">Вернутся на главную</a></p>
                     
                     <img class="img_main" src="img/input/Frame%2014.png" alt="">
                     
                    <form action="addAnkwt" method="POST" enctype="multipart/form-data" class="form" id="FormADDANK">
                                     <div id="id1">
                                         <div class="regAnket"></div>
                                         <p class="text1">Анкета абитуриента</p>
                                         <div class="line"></div>
                                         <p class="text2">Имя</p>
                                         <p class="text3">Имя (бел)</p>
                                         <p class="text4">Фамилия</p>
                                         <p class="text5">Фамилия (бел)</p>
                                         <p class="text6">Отчество</p>
                                         <p class="text7">Отчество (бел)</p>
                                         <p class="text8"> Мобильный телефон</p>
                                         <p class="text9">email</p>
                                         <p class="text10">1/ 5</p>
                                         <img id="n1" class="imgNext" src="img/addAnket/Vector.png" alt="">

                                         <input class="in1" type="text" name="name" id="">
                                         <input class="in2" type="text" name="nameBY" id="">
                                         <input class="in3" type="text" name="fam" id="">
                                         <input class="in4" type="text" name="famBY" id="">
                                         <input class="in5" type="text" name="otch" id="">
                                         <input class="in6" type="text" name="otchBY" id="">

                                          <input class="in7" maxlength="255" type="text" name="telefon" id="" placeholder="+375 29 8353435">
                                         <input class="in8" maxlength="255" type="text" name="email" id="" placeholder="EvgenieVlacol1991@gmail.com">
                                     </div>
                                     <div id="id2">
                             <div class="regAnket"></div>
                             <p class="text1">Анкета абитуриента</p>
                             <div class="line"></div>
                             
                             <p class="text11">Специальность </p>
                             <p class="text12">Форма обучения</p>
                             <p class="text13">Базовое образование</p>
                             
                             <select  class="in9" name="cpecialnost">
                                        
                                         <option value="">Не выбранно</option>
                                         <option value="Техник-программист">Техник-программист </option>
                                         <option value="Операционный логист">Операционный логист</option>
                                         <option value="Бухгалтер">Бухгалтер</option>
                                         <option value="Юрист">Юрист</option>
                                        
                             </select>
                             <select class="in10" name="form_obuchen">
                                        
                                          <option value="">Не выбранно</option>
                                         <option value="Очное">Очное</option>
                                         <option style="color: red" value="Заочное (только для закончивших 11 классов)">Заочное (только для закончивших 11 классов)</option>
                                        
                             </select>
                              
                             
                             <select class="in11" name="baz_obuchen">
                                        
                                          <option value="">Не выбранно</option>
                                         <option value="На основании 9 классов">На основании 9 классов</option>
                                         <option value="На основании 11 классов">На основании 11 классов</option>
                                        
                             </select>
                            
                             
                            <label class="in12"><input maxlength="255" name="chlen_brsm" value="Да" type="checkbox"/> Являетесь членом БРСМ?</label>
                            <label class="in13"><input maxlength="255" name="trebuets_obcaga" value="Да" type="checkbox"/> Требуется общежитие?</label> 
                            <p class="text14">Льгота</p>
                                  <select class="in14" name="lgota">
                                        
                                          <option value="Нет">Нет</option>
                                         <option value="Дети военнослужащих, погибших или ставших инвалидами при исполнении">Дети военнослужащих, погибших или ставших инвалидами при исполнении</option>
                                        
                                        
                             </select>
                             
                             <p class="text15">Пол</p>
                              <select class="in15" name="pol">
                                        
                                          <option value="">Не выбранно</option>
                                         <option value="Мужской">Мужской</option>
                                         <option value="Женский">Женский</option>
                                        
                             </select>
                             
                              <p class="text10">2/ 5</p>
                                         <img id="n3" class="imgNext" src="img/addAnket/Vector.png" alt="">
                                          <img id="n2" class="imgNext2" src="img/addAnket/Vector2.png" alt="">
                         </div>
  
                        <div id="id3">
                                         
                                          <div class="regAnket"></div>
                                         <p class="text1">Анкета абитуриента</p>
                                         <div class="line"></div>
                                          <p class="text10">3/ 5</p>
                                         <img id="1n25" class="imgNext" src="img/addAnket/Vector.png" alt="">
                                          <img id="n4" class="imgNext2" src="img/addAnket/Vector2.png" alt="">
                                          
                                          
                                              <p class="text16">Дата окончания образования </p>
                                          <input maxlength="255" class="inp16" type="date" name="data_okonchanie_obrazov" id="">
                                              <p class="text17">Окончил классов</p>
                                           <input maxlength="255" class="inp17" name="okonchil_klasov" type="number" placeholder="9" step="1" min="9" max="11">
                                              <p class="text18">Вид образовательной организации</p>
                                              
                                                                                          
                                                                <input maxlength="255" class="inp18" type="text" name="vid_obraz_organ" list="citynames">
                                                            <datalist id="citynames">
                                                              <option value="Государственное учреждение образования">Государственное учреждение образования </option>
                                                              
                                                            </datalist> 
                                              
                                              <p class="text19">Город образовательной организации</p>
                                          <input maxlength="255" class="inp19" type="text" name="gorod_obraz_organiz" id="">
                                              <p class="text20">Наименование учебного заведения</p>
                                          <input maxlength="255" class="inp20" type="text" name="name_uchedn_zaveden" id="">
                                              
                                          <label class="inp21" ><input value="Да" name="c_otlichem_medal" type="checkbox"/> С отличием (медалью)</label>
                                             
                                          <label maxlength="255" class="inp22" ><input value="Да" name="prohodil_voinskue_uchet" type="checkbox"/> Проходил военскую службу</label>
                                              <p class="text23">Изучаемый иностранный язык</p>
                                              
                                              
                                              
                                              <input maxlength="255" class="inp23" type="text"  name="izuchemue_lang"    list="citynames2">
                                                            <datalist id="citynames2">
                                                           
                                                 <option value="Француский" >Француский</option>
                                                 <option value="Немецкий"  >Немецкий</option>
                                                 <option value="Англиский"  >Англиский</option>
                                                            </datalist> 
                
                                              <p class="text24">Средний балл аттестата</p>
                                        <input maxlength="255" class="inp24" name="crednie_bal" type="number" value="5.0" step="0.1" min="1.0" max="10.0">
                                          
                                          
                        </div>
                     <div id="id4">
                              <div class="regAnket"></div>
                                         <p class="text1">Анкета абитуриента</p>
                                         <div class="line"></div>
                                          <p class="text10">4/ 5</p>
                                         <img id="1n5" class="imgNext" src="img/addAnket/Vector.png" alt="">
                                          <img id="1n34" class="imgNext2" src="img/addAnket/Vector2.png" alt="">
                         
                         
                         <p class="text25">Дата рождения</p>
                         <p class="text26">Место рождения</p>
                         <p class="text27">Источник информации</p>
                         <p class="text28">Адрес по прописке </p>
                         <p class="text29">Адрес для информирования</p>
                         <p class="text30">Канал рекламного воздействия</p>
                        
                         <p class="text32">Увлечения</p>
                         
                         
                         <input maxlength="255" class="inpr25" type="date" name="data_rochden" id="">
                         <input maxlength="255" class="inpr26" type="text" name="mecto_rochdenie" id="">
                         
                         
                         
                         
                         <input maxlength="255" class="inpr27" type="text" name="istochnik_info"  list="citynames33">
                                                            <datalist id="citynames33">                                                   
                                                               <option value="Интэрнет-сайт колледжа" >Интэрнет-сайт колледжа</option> 
                                                                                                        
                                                            </datalist> 
                         
                         
                           <input maxlength="255" class="inpr28"  name="kanal_reclamnogo_vozdei" type="text"  >
                                                         
                         
                         
                         <input maxlength="255" class="inpr29" type="text" name="adres_dle_inform" id="">
                          
                         <input maxlength="255" class="inpr30" type="text" name="kak_abitur_urnal_o_nas" id="" list="citynamees33">
                          <datalist id="citynamees33">                                                   
                                     <option  value="Интернет">Интернет</option> 
                                                                                                        
                         </datalist> 
                         
                         
                          <label class="inpr31" ><input name="pocechali_kyrs" value="Да" type="checkbox"/>Посещали ли вы подготовительные курсы</label>
                        
                          <input maxlength="255"  class="inpr32" type="text" name="uvlechenie" id="">
                         
                         
                     </div>
                     <div id="id5">
                         <div class="regAnket"></div>
                                         <p class="t1ext1">Документы для поступления</p>
                                         <div class="l1ine"></div>
                                          <p class="text10">5/ 5</p>
                                       
                                          <img id="n224" class="imgNext2" src="img/addAnket/Vector2.png" alt="">
                                          <p class="t1ext2">Аттестат</p>
                                          <p class="t1ext3">Медецинская справка о состоянии здоровья</p>
                                          <p class="t1ext4">Фотография 3х4 6 копий</p>
                                          <p class="t1ext5">Заявления</p>
                                          
                                          
                            <div class="inpok18" id="info"></div>         
                          <button class="inpok1" type="button" onclick="addAnkwt()">Подать анкету</button>
                     </div>
                    </form>
    
    			
    				
    
    			
    
    
    			
     </div>
     <script type="text/javascript">
   document.getElementById('id1').style.display = "block";
     document.getElementById('id2').style.display = "none" ;
         document.getElementById('id3').style.display = "none" ;
          document.getElementById('id4').style.display = "none" ;
         document.getElementById('id5').style.display = "none" ;
  </script>
  <script>
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




var btn = document.getElementById('1n5');

btn.onclick = function() {
    document.getElementById('id5').style.display = "block";
     document.getElementById('id4').style.display = "none";
}

var btn = document.getElementById('n224');

btn.onclick = function() {
    document.getElementById('id4').style.display = "block";
     document.getElementById('id5').style.display = "none";
}


            </script>
</body>
</html>