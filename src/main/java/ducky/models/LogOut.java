package ducky.models;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOut
 */
//@WebServlet("/LogOut")
public class LogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogOut() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// lấy session ht
			HttpSession session = request.getSession();
			//session.removeAttribute("acc");
			session.invalidate();
			response.sendRedirect("../Website/Login.jsp");

			// RequestDispatcher dispatch =
			// getServletContext().getRequestDispatcher("/Login.jsp");
			// dispatch.forward(request, response);
			System.out.println("LogOut Successsssss!");

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Errrrr Logout" + e);
		}

	}

}
