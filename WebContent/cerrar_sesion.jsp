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
	session.invalidate(); //Aca se esta cerrando la sesión.
	response.sendRedirect("index.html"); //Eedirecciona automaticamente a "index.html".
	%>
</body>
</html>