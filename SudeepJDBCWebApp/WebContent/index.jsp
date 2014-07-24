<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>JDBC Web App</h1>
		<h3> .. . .. .  hey lets add a cool superhero ! </h3>
		
		<form action="AddSuperHeroServlet" method="get">
			Enter ID <input type="text" name="id"><br>
			Enter Cool Name <input type="text" name="name"><br>
			Rate Him <input type="text" name="rating"><br>
			Shakti <input type="text" name="power"><br>
		<input type="submit">
	</form>
	
	
	<br>
	<br>
	<br>
	
	<a href="FetchSuperheroServlet">Get All Super Heroes Information</a>
	
		
	</center>

</body>
</html>