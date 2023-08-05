<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% String s = (String) session.getAttribute("abc"); 
	if(s!=null){
	%>
		<h1> Welcome to friends page</h1>
		<h3><a href="logout">LOGOUT</a></h3>
	<%
	}else{
		response.sendRedirect("demologin.jsp");
	}
	
	%>
		
	
</body>
</html>