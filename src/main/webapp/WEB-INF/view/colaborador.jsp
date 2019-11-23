<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Colaboradores</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
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
		
		<!-- a href="${pageContext.request.contextPath}/editor/" class="btn btn-outline-primary">Sección Editorial</a>
		<a href="${pageContext.request.contextPath}/administrador/" class="btn btn-outline-primary">Sección Administrativa</a -->
		
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
</body>
</html>