package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Superhero;

@WebServlet("/FetchSuperheroServlet")
public class FetchSuperheroServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Superhero> superList = new ArrayList<Superhero>();

		PrintWriter out = response.getWriter();

		try {
			// load the driver class
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// establish database connection
			Connection c = DriverManager
					.getConnection("jdbc:oracle:thin:system/1267@localhost:1521:XE");

			// create statement
			Statement st = c.createStatement();

			// fire query
			ResultSet rs = st.executeQuery("select * from Superhero");

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				float rating = rs.getFloat(3);
				int power = rs.getInt(4);

				Superhero temp = new Superhero(id, name, rating, power);

				superList.add(temp);

			}

			if (superList.size() > 0) {
				request.setAttribute("SUPER_LIST", superList);

				request.getRequestDispatcher("superherosinfo.jsp").forward(request,
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
		// TODO Auto-generated method stub
	}

}
