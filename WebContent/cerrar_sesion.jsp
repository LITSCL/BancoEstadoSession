<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Banco Estado</title>
</head>
<body>
	<% 
	session.invalidate(); //Aca se esta cerrando la sesión.
	response.sendRedirect("index.html"); //Redirecciona automaticamente a "index.html".
	%>
</body>
</html>