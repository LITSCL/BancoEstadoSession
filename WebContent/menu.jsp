<%@page import="cl.inacap.bancoestadosession.model.Usuario"%>
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
<% 
Usuario usuario = (Usuario) session.getAttribute("usuario");
if (usuario != null) {  //Aca es cuando se verifica que el usuario esté autenticado.		
%>
	<nav>
		<center>
			<a href="#">Transeferencias</a> <a href="#">Pagos</a> 
			<a href="cerrar_sesion.jsp">Cerrar sesión</a>
		</center>
	</nav>
	Has iniciado sesión correctamente:
	<%=usuario.getRut()%>
<%
}
else {
%>
	<center>
		<a href="index.html">Inicio</a>
	</center>
	<p>Debes iniciar sesión para poder ver el contenido</p>
<%
}
%>
</body>
</html>