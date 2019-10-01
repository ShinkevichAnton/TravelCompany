<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Обновление</title>
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
		<c:if test="${tour!=null}">
			<form:form modelAttribute="tour" action="/edit" method="post">
				<form:input path="id" type="hidden" value="${tour.id}" name="id" />
				<div class="form-group">
					<label>Название тура:</label>
					<form:input required="required" class="form-control" path="name"
						type="text" placeholder="Раскошный Берлин" name="${tour.name}" />
				</div>
				<div class="form-group">
					<label>Страна:</label>
					<form:input required="required" class="form-control" path="country"
						type="text" placeholder="Германия" name="${tour.country}" />
				</div>
				<div class="form-group">
					<label>Программа тура:</label>
					<form:input required="required" class="form-control"
						path="description" type="text" placeholder="Берлин-Париж"
						name="${tour.description}" />
				</div>

				<div class="form-group">
					<label>Цена:</label>
					<form:input required="required" class="form-control" path="price"
						type="number" placeholder="100" name="${tour.price}" />
				</div>
				<div class="form-group">
					<label>Колличество дней:</label>
					<form:input required="required" class="form-control"
						path="amountOfDays" type="number" placeholder="20"
						name="${tour.amountOfDays}" />
				</div>
				<div class="form-group">
					<label>ImgUrl:</label>
					<form:input required="required" class="form-control" path="imgUrl"
						type="text" placeholder="italy.jpg" name="${tour.imgUrl}" />
				</div>
				<div class="form-group">
					<label>Номер телефона:</label>
					<form:input required="required" class="form-control" path="phone"
						type="text" placeholder="+375 (29) 55-000-11" name="${tour.phone}" />
				</div>

				<input class="btn btn-success" type="submit" value="Обновить" />
			</form:form>
		</c:if>
	</div>

</body>
</html>