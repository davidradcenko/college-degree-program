function testAjax() {
	var inputDataVal = $('#testInputId').val();

	$.ajax({
		url : 'testMethod_3',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#testDive').html(data);
		},
		error : function() {
			alert('Some goes wrong!');
		}
	});
}
function sign() {
	var formData = $('#signForm').serialize();

	$.ajax({
		url : 'sign',
		data : formData,
		success : function(data) {
			//проверяем значение "signStatus"
			if (data.signStatus == "success") {
      //если все ГУД, выполняем переход по урлу "profile" (чисто скриптовая команда)
				  document.location.href = "Main2";
			} else {
				  //если нет, добавляем текст ошибки в <div> с id="signinfo" (гуглим jQuery)
	  $('#signinfo').text(data.message);
			}
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}

function podach() {
	var formData = $('#podachanket').serialize();

	$.ajax({
		url : 'podachAnk',
		data : formData,
		success : function(data) {
			//проверяем значение "signStatus"
			if (data.signStatus == "success") {
      //если все ГУД, выполняем переход по урлу "profile" (чисто скриптовая команда)
				  document.location.href = "Main2";
			} else {
				  //если нет, добавляем текст ошибки в <div> с id="signinfo" (гуглим jQuery)
	  $('#podachInfo').text(data.message);
			}
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}
function podach1() {
	var formData = $('#podachanket').serialize();

	$.ajax({
		url : 'podachAnk1',
		data : formData,
		success : function(data) {
			//проверяем значение "signStatus"
			if (data.signStatus == "success") {
      //если все ГУД, выполняем переход по урлу "profile" (чисто скриптовая команда)
				  document.location.href = "Main4";
			} else {
				  //если нет, добавляем текст ошибки в <div> с id="signinfo" (гуглим jQuery)
	  $('#podachInfo').text(data.message);
			}
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}




function testAjax2() {
	event.preventDefault()

	var inputDataVal = $('#inputPassword').val();
	$.ajax({
		url : 'testMethod_4',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			//console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}
function testAjax3() {
	event.preventDefault()

	var inputDataVal = $('#inputPassword').val();
	$.ajax({
		url : 'testMethod_5',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			//console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}
function testAjax4() {
	event.preventDefault()

	var inputDataVal = $('#inputPassword').val();
	$.ajax({
		url : 'testMethod_4',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			//console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}
function getEditUser(userId) {
	$.ajax({
		url : 'getEditUserForm',
		data : ({
			id : userId
		}),
		success : function(dataFromServer) {
			$("#editDiv").html(dataFromServer);
		},
		error : function() {
			alert("NEOK!");
		}
	});
}

function deleteOrder(orderId){
	$.ajax({
		url : 'deleteorder',
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
//$('tr').click(function() {
//    location.href = 'url';
//});
function copyaddress(){	
	 document.location.href = "Main3";}

function returnr(orderI1,orderId2,orderId3,orderId4,orderId5,orderId6,orderId7){
	if (orderI1==null || orderI1==""){ document.location.href = "input"; }
	 location.href = "#zatemnenie";
	 document.getElementById('inputEmail00').value=orderI1;
	 document.getElementById('inputEmail0').value=orderId2;
	 document.getElementById('inputEmail1').value=orderId3;
	 document.getElementById('inputEmail2').value=orderId4;
	 document.getElementById('inputEmail3').value=orderId5;
	 document.getElementById('inputEmail4').value=orderId6;
	 document.getElementById('inputEmail5').value=orderId7;
}

function deleteOrder1(orderId){
	
	var resultActionUser = confirm("Вы действительно хотите удалить запись с id= "+orderId);
	if (resultActionUser) {
		$.ajax({
			url : 'dan',
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
	else {
	
	}	
}

function getPastavname(orderId){
	
	var resultActionUser = confirm("Вы действительно хотите произвести поставку с id= "+orderId);
	if (resultActionUser) {
		$.ajax({
			url : 'dan1',
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
	else {
	
	}	
}







function test1Ajax3() {
	event.preventDefault()

	var inputDataVal = $('#inputPassword').val();
	$.ajax({
		url : 'testMethod_55',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			//console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}
function test1Ajax4() {
	event.preventDefault()

	var inputDataVal = $('#inputPassword').val();
	$.ajax({
		url : 'test1Method_44',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			//console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}








function test1Ajax33() {
	event.preventDefault()

	var inputDataVal = $('#inputPassword').val();
	$.ajax({
		url : 'testMethod_555',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			//console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}
function test1Ajax44() {
	event.preventDefault()

	var inputDataVal = $('#inputPassword').val();
	$.ajax({
		url : 'test1Method_444',
		data : ({
			inputDataName : inputDataVal
		}),
		success : function(data) {
			$('#DivIdToPrint').html(data);
			//console.log(data);
		},
		error : function() {
			console.log('Some goes wrong!');
		}
	});
}
