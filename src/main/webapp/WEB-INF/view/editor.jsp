<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
</head>
<body class="cls-rol">
	<header>
		<img alt="Trip Memories" src="<c:url value="/resources/img/avion.png" />">
		<p>Trip Memories</p>
		<form:form action="${pageContext.request.contextPath}/logout"
			method="POST">
			<button type="submit" class="btn btn-info" 
				onclick="if(!confirm('¿Está seguro?')) return false">Cerrar sesión</button>
		</form:form>
	</header>
	<h1>Sección Editorial</h1>
	<h3>Esta página es sólo para editores</h3>
	<textarea rows="100"><c:import url="/resources/txt/loremipsum.txt" />
	</textarea>
	<footer>
		<a href="${pageContext.request.contextPath}/" class="btn btn-outline-primary">Colaboradores</a>
		<sec:authorize access="hasRole('ADMINISTRADOR')">
			<a href="${pageContext.request.contextPath}/administrador/"
				class="btn btn-outline-primary">Sección Administrativa</a>
		</sec:authorize>
	</footer>
</body>
</html>