<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Подробно</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="/css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- RedConnect -->
<script id="rhlpscrtg" type="text/javascript" charset="utf-8"
	async="async"
	src="https://web.redhelper.ru/service/main.js?c=shinkevichanton94"></script>
<div style="display: none">
	<a class="rc-copyright" href="http://redconnect.ru">Сервис
		обратного звонка RedConnect</a>
</div>
<!--/RedConnect -->
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/">TravelCompany</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="/">Главная</a></li>
			<li><a href="/tour">Туры</a></li>
			<li class="active"><a href="3">Подробно</a></li>
			<li><a href="/about">Контакты</a></li>
			<li><a href="/admin">Админ</a></li>
			<li><a><span style="color: yellow;">velcom:</span> +375 (29) 55-000-11</a></li>
			<li><a><span style="color: red;">мтс:</span> +375 (29) 55-010-11</a></li>
			<li><a><span style="color: red;">life:</span> +375 (29)
					55-110-11</a></li>
		</ul>

		
	</div>
	</nav>
	<c:choose>
		<c:when test="${tour!=null}">
			<h1 align="center">${tour.name}</h1>
			<div class="container" id="info">
				<div>
					<img class="image" alt="Null" src="/img/${tour.imgUrl}" width="900"
						height="500">
					<hr>
					<p>
						<b>Название тура:</b> ${tour.name}
					</p>
					<hr>
					<p>
						<b>Страна:</b> ${tour.country}
					</p>
					<hr>
					<p>
						<b>Программа тура:</b> ${tour.description}
					</p>
					<hr>
					<p>
						<b>Колличество дней:</b> ${tour.amountOfDays}
					</p>
					<hr>
					<p>
						<b>Цена:</b> ${tour.price}$
					</p>
					<hr>
					<p>
						<b>Телефон:</b> ${tour.phone}
					</p>
					<hr>

				</div>
			</div>

		</c:when>
		<c:otherwise>NotFound</c:otherwise>
	</c:choose>

</body>
</html>