<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>Login</h2>
	<h4>Introduzca sus credenciales</h4>
	<form:form
		action="${pageContext.request.contextPath}/authenticateTheUser"
		method="POST">
		<div class="input-group mb-3">
			<div class="input-group-prepend w-25">
				<span class="input-group-text w-100">Usuario</span>
			</div>
			<input type="text" class="form-control" placeholder="Usuario"
				name="username">
		</div>
		<div class="input-group mb-3">
			<div class="input-group-prepend w-25">
				<span class="input-group-text w-100">Usuario</span>
			</div>
			<input type="password" class="form-control" placeholder="Contraseña"
				name="password">
		</div>
		<button type="submit" class="btn btn-primary">Iniciar sesión</button>
		<p></p>
		<c:if test="${param.error!=null}">
			<div class="alert alert-danger">
				<strong>Error:</strong> Nombre o contraseña incorrectos.
			</div>
		</c:if>
		<c:if test="${param.logout!=null}">
			<div class="alert alert-warning">
				<strong>Salir:</strong> Ha salido del sistema.
			</div>
		</c:if>
	</form:form>
</body>
</html>
