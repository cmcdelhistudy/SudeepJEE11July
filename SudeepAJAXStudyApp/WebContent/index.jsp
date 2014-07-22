<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function getDataFromServer() {
		var info = document.getElementById("info");
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {

			if (xmlhttp.readyState == 1) {
				info.innerHTML = "Please wait .. . ..";
			}

			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				info.innerHTML = xmlhttp.responseText;
			}

		}
		xmlhttp.open("GET", "MyServlet", true);
		xmlhttp.send();
	}

	function getSuggestions() {
		var word = document.getElementById("word");
		var sarea = document.getElementById("sarea");
		
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {

			if (xmlhttp.readyState == 1) {
				sarea.innerHTML = "Please wait .. . ..";
			}

			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				sarea.innerHTML = xmlhttp.responseText;
			}

		}
		xmlhttp.open("GET", "SuggestionServelet?shabd="+word.value, true);
		xmlhttp.send();

	}
</script>
</head>
<body>
	<center>
		<h1>AJAX Study</h1>

		<p id="info">This is info text</p>
		<button onclick="getDataFromServer()">Click Me</button>


		<hr>


		<input type="text" id="word"  onkeyup="getSuggestions()" ><br>
		<div id="sarea"></div>


	</center>
</body>
</html>