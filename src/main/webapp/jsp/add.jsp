<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Добавление(админ)</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="/css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form action="" method="post">
			<div class="form-group">
				<label>Название тура:</label> <input required class="form-control"
					type="text" value="Вена" name="name" />
			</div>
			<div class="form-group">
				<label>Страна:</label> <input required class="form-control"
					type="text" value="Австрия" name="country" />
			</div>
			<div class="form-group">
				<label>Программа тура:</label> <input required class="form-control"
					type="text" value="Минск - Вена - Минск" name="description" />
			</div>

			<div class="form-group">
				<label>Цена:</label> <input required class="form-control"
					type="number" value="100" name="price" />
			</div>
			<div class="form-group">
				<label>Колличество дней:</label> <input required
					class="form-control" type="number" value="10" name="amountOfDays" />
			</div>
			<div class="form-group">
				<label>ImgUrl:</label> <input required class="form-control"
					type="text" value="austria.jpg" name="imgUrl" />
			</div>
			<div class="form-group">
				<label>Номер телефона:</label> <input required class="form-control"
					type="text" value="+375(29)55-000-11" name="phone" />
			</div>
			<input class="btn btn-success" type="submit" value="Добавить" />
		</form>
	</div>
</body>
</html>