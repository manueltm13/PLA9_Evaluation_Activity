<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Editores</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Editores</h1>
		<h3>Esta página es sólo para editores</h3>
		<p>
			Usuario:
			<sec:authentication property="principal.username" />
		</p>
		<p>
			Roles:
			<sec:authentication property="principal.authorities" />
		</p>
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<button type="submit" class="btn btn-warning">Salir</button>
			<a href="${pageContext.request.contextPath}/" class="btn btn-outline-primary">Colaboradores</a>
		</form:form>
	</div>
</body>
</html>