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
	session.invalidate(); //Aca se esta cerrando la sesión.
	response.sendRedirect("index.html"); //Redirecciona automaticamente a "index.html".
	%>
</body>
</html>