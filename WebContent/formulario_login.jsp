<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banco Estado</title>
</head>
<body>
	<form action="ValidarUsuario" method="GET">
		<!-- Se envian los datos las Servlet llamado ValidaUsuario. -->
		<label>Rut</label>
		<input type="text" name="usuario"><br/>
		<label>Contrase�a</label>
		<input type="text" name="clave"><br/> <input type="submit" value="Ingresar">
	</form>
	${error} <!-- Mostrando el error mediante una expresi�n de lenguaje. -->

<% 
//Esto es otra forma de mostrar el error.
//if (request.getAttribute("error") != null) {
	//out.print(request.getAttribute("error"));
//}
%>

</body>
</html>