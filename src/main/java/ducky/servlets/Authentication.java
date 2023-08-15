package ducky.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ducky.models.DatabaseManagement;
import ducky.models.Students;

/**
 * Servlet implementation class Authentication
 */
//@WebServlet("/Authentication")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentication() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		//PrintWriter writer = response.getWriter();
		DatabaseManagement dm = new DatabaseManagement();
		Students a = dm.checkLogin(username, password);
	
		if (a == null) {
			
			request.setAttribute("mess", "Wrong user or password !");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
			
			
		} else {
			HttpSession session = request.getSession();
			// session qly attribute thay cho req
			session.setAttribute("acc", dm.checkLogin(username, password));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/load");
			dispatcher.forward(request, response);
			System.out.println("Login Succsess!");
		}
	}

}
