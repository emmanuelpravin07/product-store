<%@page import="com.js.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: lightblue;
  color: white;
}
</style>
</head>
<body>

		<h1>PRODUCT TABLE</h1>
		<table border=10px; id="customers">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>BRAND</th>
			<th>PRICE</th>
			<th>QUANTITY</th>
			<th>DELETE</th>
			<th>UPDATE</th>
		</tr>
		
		<% ArrayList<Product> al=(ArrayList)request.getAttribute("data"); %>
		<% for(Product p: al){ %>
		<tr>
		<td><%= p.getId() %></td>
		<td><%= p.getName() %></td>
		<td><%= p.getBrand() %></td>
		<td><%= p.getPrice() %></td>
		<td><%= p.getQuantity() %></td>
		<td> <a href="delete?id=<%= p.getId() %>">delete</a></td>
		<td> <a href="edit?id=<%= p.getId() %>">edit</a></td>
		</tr>
		<% } %>
		
		</table>
		

</body>
</html>