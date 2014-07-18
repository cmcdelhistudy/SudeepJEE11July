package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;

@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		HttpSession s = request.getSession(false);

		String code = (String) s.getAttribute("S3CRET");

		if (code == null) {
			out.println("You are not within the session ");
		} else {

			ArrayList<Product> obtainedList = (ArrayList<Product>) s
					.getAttribute("TROLLEY");

			String pid = request.getParameter("pid");

			if (pid.equals("1")) {
				Product milk = new Product(1, "Amul Milk", 40,
						" Fresh Healy Milk");
				obtainedList.add(milk);

			} else if (pid.equals("2")) {

				Product maggie = new Product(2, "Maggie", 20, " Yummy Maggie");
				obtainedList.add(maggie);
			} else if (pid.equals("3")) {
				Product shoes = new Product(3, "Reebok Shoes", 3500,
						" Sporty Shoes");
				obtainedList.add(shoes);
			} else if (pid.equals("4")) {
				Product telephone = new Product(4, "Telephone", 10000000,
						" Classic Phone");
				obtainedList.add(telephone);
			}

			request.getRequestDispatcher("shopping.jsp").forward(request,
					response);

		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
