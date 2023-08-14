package ducky.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ducky.models.DatabaseManagement;
import ducky.models.Students;

/**
 * Servlet implementation class LoadControl
 */
@WebServlet("/load")
public class LoadControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoadControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get db
		DatabaseManagement students = new DatabaseManagement();
		List<Students> list = students.getStudents();
		// db sang jsp
		request.setAttribute("listS", list);
		request.getRequestDispatcher("/Views/ListUser.jsp").forward(request, response);
		//response.sendRedirect("/ListUser.jsp");
		//System.out.println("Listttttttttttt control" + list);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
