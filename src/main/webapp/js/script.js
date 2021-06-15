/*function ajaxFunc(){
	$.ajax({
        url: 'ajaxcontroller',
        data: ({login : 'loginValue', password : 'passValue'}),
        success: function (dataFromServer) {
            alert("OK!");
        },
        error: function () {
            alert("NEOK!");
        }
    });
}*/

/*function ajaxFunc(){
	var inpValue = $("#inp").val();
	
	$.ajax({
        url: 'ajaxcontroller_2',
        data: ({login : inpValue , password : 'passValue456456'}),
        success: function (dataFromServer) {
            alert(dataFromServer);
        },
        error: function () {
            alert("NEOK!");
        }
    });
}*/


function uploadFile() {
	var form = $('#fileForm')[0]; 
//	var foto= document.getElementById("uploadfile");
//	
//	window.alert("Модальное Окно  "+foto.name);
	//вытягиваем по id форму
	var formData = new FormData(form); //создаем объект FormData из нашей формы, который и будет отправлен Ajax'ом
    $.ajax({
        url: 'fileUploadAjax', //URL
        data: formData,
        //форма с фалом и текстом
        enctype: 'multipart/form-data', //так же как и с формой указываем тип данных 
        contentType: false, //запрещаем скрипту менять нименование типа данных в заголовках
        processData: false, //просто так нужно =)
        method: 'POST', //метод запроса
        success: function (data) {
        	if(data.upload == 'ok'){
$("#info").html('<span style="color: green">Картинка успешно загруженна!</a>'); //Меняем текст в блоке
document.getElementById('try1').removeAttribute("disabled");
        	} else {
        		document.getElementById('try1').setAttribute('disabled', 'disabled');
$("#info").html('<span style="color: red">Картинка слишком большая!</a>'); //Меняем текст в блоке
        	}
        },
        error: function () {
        	document.getElementById('try1').setAttribute('disabled', 'disabled');
$("#info").html('<span style="color: red">Картинка слишком большая!</a>'); //Меняем текст в блоке
        }
    });
}




function uploadFileadmin2() {
//	var foto= document.getElementById("infoqw").value;
// document.getElementById('info23').value = foto;
	var form = $('#fileForm2')[0]; 
//	var foto12= document.getElementById("info23").value;
//		window.alert("Модальное Окно1  "+foto12);
////	//вытягиваем по id форму
	var formData = new FormData(form); //создаем объект FormData из нашей формы, который и будет отправлен Ajax'ом
    $.ajax({
        url: 'fileUploadAjax2', //URL
        data: formData,
        //форма с фалом и текстом
        enctype: 'multipart/form-data', //так же как и с формой указываем тип данных 
        contentType: false, //запрещаем скрипту менять нименование типа данных в заголовках
        processData: false, //просто так нужно =)
        method: 'POST', //метод запроса
        success: function (data) {
        	if(data.upload == 'ok'){
        		document.location.href = "MainAdminADD";
$("#info").html('<span style="color: green">Картинка успешно загруженна!</a>'); //Меняем текст в блоке
document.getElementById('try1').removeAttribute("disabled");
        	} else {
        		document.getElementById('try1').setAttribute('disabled', 'disabled');
$("#info").html('<span style="color: red">Картинка слишком большая!</a>'); //Меняем текст в блоке
        	}
        },
        error: function () {
        	document.getElementById('try1').setAttribute('disabled', 'disabled');
$("#info").html('<span style="color: red">Картинка слишком большая!</a>'); //Меняем текст в блоке
        }
    });
}


function uploadFileadmin3() {
	var form = $('#fileForm2')[0]; 
	var formData = new FormData(form); //создаем объект FormData из нашей формы, который и будет отправлен Ajax'ом
    $.ajax({
        url: 'fileUploadAjax3', //URL
        data: formData,
       
        enctype: 'multipart/form-data', //так же как и с формой указываем тип данных 
        contentType: false, //запрещаем скрипту менять нименование типа данных в заголовках
        processData: false, //просто так нужно =)
        method: 'POST', //метод запроса
        success: function (data) {
        	if(data.upload == 'ok'){
        		document.location.href = "UserNas";
$("#info").html('<span style="color: green">Картинка успешно загруженна!</a>'); //Меняем текст в блоке
document.getElementById('try1').removeAttribute("disabled");
        	} else {
        		document.getElementById('try1').setAttribute('disabled', 'disabled');
$("#info").html('<span style="color: red">Картинка слишком большая!</a>'); //Меняем текст в блоке
        	}
        },
        error: function () {
        	document.getElementById('try1').setAttribute('disabled', 'disabled');
$("#info").html('<span style="color: red">Картинка слишком большая!</a>'); //Меняем текст в блоке
        }
    });
}








function getName (str) {
    if (str.lastIndexOf('\\')) {
        var i = str.lastIndexOf('\\') + 1;
    }
    else {
        var i = str.lastIndexOf('/') + 1;
    }						
    var filename = str.slice(i);			
//    var uploaded = document.getElementById("info2");
//    uploaded.innerHTML = filename;
    document.getElementById('info2').value = filename;
}








function testA1() {
	var formDataTest = $('#fileForm').serialize();
	$.ajax({
        url: 'AjaxNuwUsers1',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "admin1";
            	} else {
            		$('#info1').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}
function testA1admin2() {
	var formDataTest = $('#fileForm2').serialize();
	$.ajax({
        url: 'AjaxNuwTeacher',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "admin2";
            	} else {
            		$('#info1').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}

function addAnkwt() {
	var formDataTest = $('#FormADDANK').serialize();
	$.ajax({
        url: 'AddAntetAjaxUser',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "UserAdmin";
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}



function PassUser() {
	var formDataTest = $('#signForm').serialize();
	$.ajax({
        url: 'InputAjax',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "abiturientReg";
            	} else {
            		$('#info').text(data.validMessage);
            	}
            	if(data.validStatus == "ok1"){
            		document.location.href = "UserAdmin";
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}



function PassUserAdmin() {
	var formDataTest = $('#signForm').serialize();
	$.ajax({
        url: 'inputAdminR',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "admin1";
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}


function nichUser() {
	var formDataTest = $('#signForm').serialize();
	$.ajax({
        url: 'inputAdminR',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "admin1";
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}




function Reguser() {
	var formDataTest = $('#signFormReguser').serialize();
	$.ajax({
        url: 'ReguserAjax',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "input";
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}

function getinfousers(orderId){

		$.ajax({
			url : 'infoUsers',
			data : ({
				id : orderId
			}),
			success : function(dataFromServer) {
				if(dataFromServer === 'OK'){
					document.location.href = "UserInfo";
				}
			},
			error : function() {
				alert("NEOK!");
			}
		});
		
}

function getEditUser(userId) {
	$.ajax({
        url: 'getEditUserForm',
        data: ({id : userId}),
        success: function (dataFromServer) {
            $("#editDiv").html(dataFromServer);
        },
        error: function () {
            alert("NEOK!");
        }
    });
}

function signFunction() {
	var formData = $('#signform').serialize();
	$.ajax({
        url: 'sign',
        data: formData,
        success: function (data) {
        	if(data.validStatus == "ok"){
        		document.location.href = "profile";
        	} else {
        		$('#status').text(data.validMessage);
        	}
        },
        error: function () {
            alert("NEOK!");
        }
    });
}

function testAjaxDenADD() {
	var formDataTest = $('#signForm').serialize();
	$.ajax({
        url: 'ADDDEN',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.href = "MainAdminDEN";
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}
function setLocaleFunc(localeName) {
	$.ajax({
        url: 'setLocale',
        data: ({localeName : localeName}),
        success: function () {
        	location.reload();
        },
        error: function () {
            alert("NEOK!");
        }
    });
}

function DeleteDEN(orderId){
	$.ajax({
		url : 'DELLDEN',
		data : ({
			id : orderId
		}),
		success : function(dataFromServer) {
			if(dataFromServer === 'OK'){
				document.location.reload(true);
			}
		},
		error : function() {
			alert("NEOK!");
		}
	});
}
function DeleteUser(orderId){
	$.ajax({
		url : 'DELLDENuser',
		data : ({
			id : orderId
		}),
		success : function(dataFromServer) {
			if(dataFromServer === 'OK'){
				document.location.reload(true);
			}
		},
		error : function() {
			alert("NEOK!");
		}
	});
}

function testAjax4(id) {
	$.ajax({
		url : 'POiscAnkets_1',
		data : ({
			inputDataName : id
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
	
	
	
}


function testAjax4Poisc() {
	var inputDataVal = $('#tty1').val();
	$.ajax({
		url : 'POiscAnkets_1user',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint1').html(data);
			console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});	
}

function testS() {
	var formDataTest = $('#FormADDANKwe').serialize();
	$.ajax({
        url: 'POiscAnkets_1usersd',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.reload(true);
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}





function testS() {
	var formDataTest = $('#poisrr').serialize();
	$.ajax({
        url: 'POiscAnketsttt',
        data: formDataTest,
        success: function (data) {    	
            	if(data.validStatus == "ok"){
            		document.location.reload(true);
            	} else {
            		$('#info').text(data.validMessage);
            	}
            },
        error: function () {
            alert("NEOK!");
        }
    });
}



















