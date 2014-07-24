package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddSuperHeroServlet")
public class AddSuperHeroServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String rating = request.getParameter("rating");
		String power = request.getParameter("power");

		try {
			// load the driver class
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// establish database connection
			Connection c = DriverManager
					.getConnection("jdbc:oracle:thin:system/1267@localhost:1521:XE");

			// create statement
			Statement st = c.createStatement();

			// fire query
			int r = st.executeUpdate("insert into  Superhero values(" + id
					+ ",'" + name + "'," + rating + "," + power + ")");

			if (r > 0) {
				request.getRequestDispatcher("FetchSuperheroServlet").forward(request,
						response);
			}

		} catch (ClassNotFoundException e) {
			out.println("Driver is not available " + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			out.println("SQL Exception " + e.getMessage());
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
