<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ILogin</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="/css/style.css" rel="stylesheet">
</head>
<body id="LoginForm">
	<div class="container">
		<h1 class="form-heading">login Form</h1>
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h2>Admin Login</h2>
					<p>Please enter your email and password</p>
				</div>
				<form:form id="Login"
					action="<c:url value='j_spring_security_check'/>">

					<div class="form-group">


						<form:input path="login" type="text" class="form-control"
							name="j_username" id="j_username" placeholder="Email Address" />

					</div>

					<div class="form-group">

						<form:input path="password" type="password" class="form-control"
							name="j_password" id="j_password" placeholder="Password" />

					</div>
					<div class="forgot">
						<a href="reset.html">Forgot password?</a>
					</div>
					<button type="submit" class="btn btn-primary">Login</button>

				</form:form>
			</div>
			<p class="botto-text">Designed by Sunil Rajput</p>
		</div>
	</div>



</body>
</html>