<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Туры</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/css/style.css" rel="stylesheet">
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
</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/">TravelCompany</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="/">Главная</a></li>
			<li class="active"><a href="/tour">Туры</a></li>
			<li><a href="/about">Контакты</a></li>
			<li><a href="/admin">Админ</a></li>
			<li><a><span style="color: yellow;">velcom:</span> +375 (29)
					55-000-11</a></li>
			<li><a><span style="color: red;">мтс:</span> +375 (29)
					55-010-11</a></li>
					</li>
			<li><a><span style="color: red;">life:</span> +375 (29)
					55-110-11</a></li>
		</ul>

	</div>
	</nav>

	<div class="container">
		<form action="" method="get">
			<input type="text" placeholder="Страна" name="country" /> <input
				type="number" placeholder="Цена" name="price" /> <input
				class="btn btn-light" type="submit" value="Поиск" />
		</form>
	</div>
	<hr>
	<div class="container">
		<c:forEach var="tour" items="${tour}">
			<div class="col-lg-3 col-md-4 col-xs-6 thumb">
				<img class="img-thumbnail" src="/img/${tour.imgUrl}" width="500"
					height="500" alt="Another alt text"> <span class="tour"><a
					href="/${tour.id}">${tour.name}</a> </span>

			</div>
		</c:forEach>

	</div>





	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>

</html>