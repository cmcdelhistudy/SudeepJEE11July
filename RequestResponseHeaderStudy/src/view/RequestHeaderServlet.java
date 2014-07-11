package view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RequestHeaderServlet")
public class RequestHeaderServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<body >");
		out.println("<h1>Hello Request Header Servlet </h1>");

		// String con = request.getHeader("Connection");

		Enumeration enm = request.getHeaderNames();

		while (enm.hasMoreElements()) {
			String headerName = (String) enm.nextElement();
			String headerValue = request.getHeader(headerName);
			out.println("<br>" + headerName + " : " + headerValue);

		}

		// out.println("Coonection  " + con);
		out.println("</body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
