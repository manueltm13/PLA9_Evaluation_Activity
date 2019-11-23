<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Colaboradores</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
	<h1>Hola <sec:authentication property="principal.username" /></h1>
	<textarea rows="100"><c:import url="/resources/txt/loremipsum.txt" />
	</textarea>
	<footer>
		<sec:authorize access="hasRole('EDITOR')">
			<a href="${pageContext.request.contextPath}/editor/"
				class="btn btn-outline-primary">Sección Editorial</a>
		</sec:authorize>
		<sec:authorize access="hasRole('ADMINISTRADOR')">
			<a href="${pageContext.request.contextPath}/administrador/"
				class="btn btn-outline-primary">Sección Administrativa</a>
		</sec:authorize>
	</footer>

<!-- 
	<div class="container">
		<h1>Hola que tal</h1>
		<p>
			Usuario:
			<sec:authentication property="principal.username" />
		</p>
		<p>
			Roles:
			<sec:authentication property="principal.authorities" />
		</p>
		
		<p></p>
		<form:form action="${pageContext.request.contextPath}/logout"
			method="POST">
			<button type="submit" class="btn btn-warning">Salir</button>
			<sec:authorize access="hasRole('EDITOR')">
				<a href="${pageContext.request.contextPath}/editor/"
					class="btn btn-outline-primary">Sección Editorial</a>
			</sec:authorize>
			<sec:authorize access="hasRole('ADMINISTRADOR')">
				<a href="${pageContext.request.contextPath}/administrador/"
					class="btn btn-outline-primary">Sección Administrativa</a>
			</sec:authorize>
		</form:form>
	</div>
-->
</body>
</html>