<%@page import="cl.inacap.bancoestadosession.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banco Estado</title>
</head>
<body>
<% 
Usuario usuario = (Usuario) session.getAttribute("usuario");
if (usuario != null) {  //Aca es cuando se verifica que el usuario est� autenticado.		
%>
	<nav>
		<center>
			<a href="#">Transeferencias</a> <a href="#">Pagos</a> 
			<a href="cerrar_sesion.jsp">Cerrar sesi�n</a>
		</center>
	</nav>
	Has iniciado sesi�n correctamente:
	<%=usuario.getRut()%>
<%
}
else {
%>
	<center>
		<a href="index.html">Inicio</a>
	</center>
	<p>Debes iniciar sesi�n para poder ver el contenido</p>
<%
}
%>
</body>
</html>