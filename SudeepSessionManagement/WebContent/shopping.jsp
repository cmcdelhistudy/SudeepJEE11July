<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import ="java.util.ArrayList,model.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#basket{
	
	background-color: yellow;
	border-width: 5px;
	border-style: dotted;
	border-color: red;
	position: fixed;
	 

}
</style>
</head>
<body bgcolor="white">


	
		
		
		<%
		
			HttpSession s=request.getSession(false);
			
			String code=(String)s.getAttribute("S3CRET");
		
			if(code==null){
				out.println("You are not within the session ");
			}else{
				String uname=(String)s.getAttribute("USERNAME");
				%>
							<div align="center"> Logged in as <%=uname%></div> 
						   	<h1>  Start Shopping  </h1>
						   	<div id="basket">
						   		<h2>Items in your Cart</h2>
						   		<%
						   		
						   		double totalPrice=0;
						   		
						   		ArrayList<Product> obtainedList = (ArrayList<Product>) s
								.getAttribute("TROLLEY");
						   		
						   		for( Product p  :obtainedList){
						   			out.println("<br>"+p.name+" &nbsp &nbsp  Rs."+p.price+"&nbsp  &nbsp <a href='RemoveServlet?pid="+p.id+"'> <img src='images/del.png'></a>");
						   			totalPrice=totalPrice+p.price;
						   		}
						   		out.println("<hr>");
						   		out.println("Toatal Amount  Rs."+totalPrice);
						   		%>
						   	</div>
						   	
					
					<center>
					<img src="images/milk.jpg" width="100" height="130" >
					<br>
					<a href="PurchaseServlet?pid=1">Buy</a>
					<br>
					<img src="images/maggie.jpg" width="100" height="130"  >
					<br>
					<a href="PurchaseServlet?pid=2">Buy</a>
					<br>
					<img src="images/phone.jpg" width="100" height="130"  >
					<br>
					<a href="PurchaseServlet?pid=3">Buy</a>
					<br>
					<img src="images/shoes.jpg" width="100" height="130"  >
					<br>
					<a href="PurchaseServlet?pid=4">Buy</a>
					<br>
			      	</center>
					
							<h2>Session Proprties</h2>		
							Session ID <%=s.getId() %><br>
							CreationTime <%=s.getCreationTime() %><br>
							Last Accessed Time  <%=s.getLastAccessedTime() %><br>
							Inactive Time Interval<%=s.getMaxInactiveInterval() %><br>
							Session IsNew <%=s.isNew()%><br>
							
				
					
							<br> <br>
							 <a href="mypage.jsp">Profile Page </a> 
							<br>
							<a href="settings.jsp">User Settings </a> <br>
							<br>
							<a href="LogoutServlet">Logout</a> <br>
				
				
				
				<%
				
			}
		 %>
		
		
</body>
</html>