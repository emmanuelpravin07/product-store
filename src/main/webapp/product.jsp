<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: lightblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: aqua;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
		<div>
		<form action="insert" method="get">
		Id :<input type="text" name="id"><br><br>
		Name :<input type="text" name="name"><br><br>
		Brand:<input type="text" name="brand"><br><br>
		Price:<input type="text" name="price"><br><br>
		Quantity:<input type="text" name="quantity"><br><br>
		<input type="submit" value="Save">
		</form>
		</div>

</body>
</html>