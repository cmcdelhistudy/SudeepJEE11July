package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SuggestionServelet
 */
@WebServlet("/SuggestionServelet")
public class SuggestionServelet extends HttpServlet {

	String[] words = { "Avocado", "Peaches", "Cat", "Caterpillar", "Catalina",
			"Catalyst", "Avogadro", "Batista", "London" };

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		String alfaaz = request.getParameter("shabd");

		String respString = "";

		if (alfaaz.equals("")) {

		} else {
			for (String s : words) {
				if (s.startsWith(alfaaz)) {
					respString += s + ",";
				}
			}
		}
		out.println(respString);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
