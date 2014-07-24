<%@page import="model.Superhero"%>
<%@page import="java.util.ArrayList"%>
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

		<h1>Our Super heros</h1>
		<div align="right">
			<h3>. .. . ... . dharti ke rakshak</h3>
		</div>


		<table bgcolor="yellow" width="70%">
			<th>ID</th>
			<th>Name</th>
			<th>Shakthi</th>
			<th>Rating</th>
			<%
				ArrayList<Superhero> suList=(ArrayList<Superhero>)request.getAttribute("SUPER_LIST");
								
								for(Superhero s : suList){
							
								out.println("<tr><td>"+s.id+"</td><td>"+s.name+"</td><td>"+s.power+"</td><td>"+s.rating+"</td><td><a href='DeleteSuperheroServlet?id="+s.id+"'><img height='20' width='20' src='cross.png'></a></td></tr");
							
							
								}
			%>



		</table>

	</center>
</body>
</html>