<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Prohibido</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
</head>
<body id="id-prohibido">
	<header>
		<img alt="Trip Memories" src="<c:url value="/resources/img/avion.png" />">
		<p>Trip Memories</p>
		<div class="btn-group">
			<button type="button" class="btn btn-info dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				Iniciar sesión</button>
			<div class="dropdown-menu dropdown-menu-right">
				<form:form class="px-4 py-3"
					action="${pageContext.request.contextPath}/authenticateTheUser"
					method="POST">
					<div class="form-group">
						<label for="id-username">Usuario</label> <input type="text"
							class="form-control" id="id-username" name="username" placeholder="Usuario">
					</div>
					<div class="form-group">
						<label for="id-password">Contraseña</label> <input type="password"
							class="form-control" id="id-password" name="password" placeholder="Contraseña">
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="dropdownCheck">
						<label class="form-check-label" for="dropdownCheck">
							Recuérdame </label>
					</div>
					<button type="submit" class="btn btn-primary">Iniciar
						sesión</button>
				</form:form>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#">Nuevo por aquí? Regístrese</a> <a
					class="dropdown-item" href="#">Olvidó su contraseña?</a>
			</div>
		</div>
	</header>
	<h1 class="text-danger">Acceso denegado</h1>

	<a href="${pageContext.request.contextPath}/"
		class="btn btn-warning">Volver al inicio</a>
</body>
</html>