<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">

<br>

<center>


<%
		
			HttpSession s=request.getSession(false);
			
			String code=(String)s.getAttribute("S3CRET");
		
			if(code==null){
				out.println("You are not within the session ");
			}else{
				String uname=(String)s.getAttribute("USERNAME");
				%>
						<h1> <%=uname%> Setings</h1>

		               <h2>Session Proprties</h2>		
						Session ID <%=s.getId() %><br>
						CreationTime <%=s.getCreationTime() %><br>
						Last Accessed Time  <%=s.getLastAccessedTime() %><br>
						Inactive Time Interval<%=s.getMaxInactiveInterval() %><br>
						Session IsNew <%=s.isNew()%><br>
						
				
						<br> <br>
		 				<a href="mypage.jsp">Profile Page </a> 
						<br>
						<a href="shopping.jsp">Go Shopping </a> <br>
						<br>
						<a href="LogoutServlet">Logout</a> <br>
				
				
				<%
				
			}
		 %>

		
</center>


</body>
</html>