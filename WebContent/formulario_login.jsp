<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Banco Estado</title>
</head>
<body>
	<form action="ValidarUsuario" method="GET">
		<!-- Se envian los datos las Servlet llamado ValidaUsuario. -->
		<label>Rut</label>
		<input type="text" name="usuario"><br/>
		<label>Contraseña</label>
		<input type="text" name="clave"><br/> <input type="submit" value="Ingresar">
	</form>
	${error} <!-- Mostrando el error mediante una expresión de lenguaje. -->

<% 
//Esto es otra forma de mostrar el error.
//if (request.getAttribute("error") != null) {
	//out.print(request.getAttribute("error"));
//}
%>

</body>
</html>