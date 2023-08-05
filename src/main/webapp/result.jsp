<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.header {
	padding:50px;
	border: 5px outset red;
	background-color: lightblue;
	text-align: center;
}
</style>	
	

</head>
<body>

		<div class="header">

		<% String msg=(String)request.getAttribute("msg"); %>
		<h1><%= msg %></h1>
		
		</div>
</body>
</html>