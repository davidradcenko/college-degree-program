<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qqq"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="css/indexstyle.css" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</head>
<body>
<div class="content">
<!-- Форма для отправки с POST и нужным типом данных -->
<form action="fileUpload" method="POST" enctype="multipart/form-data" class="form" id="fileForm">
			<table>
				<tr>
					<td class="w-50">
						<label for="uploadfile">Select file:</label>
					</td>
					<td class="w-50">
						<!-- Input для приема файлов -->
						<input type="file" name="fileInput" id="uploadfile">
					</td>
				</tr>
				<tr>
					<td>
						<label for="sometext">Description:</label>
					</td>
					<td>
						<!-- Input для приема текста (просто для примера) -->
						<input type="text" name="textInput" id="sometext" class="w-100">
					</td>
				</tr>
				<tr>
					<div id="info"></div>
					<td>
						<!-- Кнопка для вызова AJAX-функции -->
						<button type="button" onclick="uploadFile()" class="w-100">SEND FILE (AJAX)</button>
					</td>
				</tr>
			</table>
		</form>
</div>

</body>
</html>