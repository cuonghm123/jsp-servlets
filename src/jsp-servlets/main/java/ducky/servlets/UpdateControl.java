package ducky.servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ducky.models.DatabaseManagement;
import ducky.models.Students;

/**
 * Servlet implementation class UpdateControl
 */
@WebServlet("/update")
public class UpdateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String id = request.getParameter("sid");
		DatabaseManagement students = new DatabaseManagement();
		Students s = students.updateUserByID(Integer.parseInt(id));
		request.setAttribute("st", s);
		request.getRequestDispatcher("Views/UpdateUser.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String id = request.getParameter("id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String date = request.getParameter("date");
		System.out.println("t " + date);
		Date dateNew = null;
		try {
			dateNew = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(date);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String room = request.getParameter("room");
		DatabaseManagement students = new DatabaseManagement();
		System.out.println("id" + id);
		students.updateUser(Integer.parseInt(id), first_name, last_name, dateNew, gender, address, room);
		response.sendRedirect("load");
	}

}
