package ducky.servlets;

import java.io.IOException;
import java.sql.Date;

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
		//
		//SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		String date = request.getParameter("date");
	    Date date1 =Date.valueOf(date);//converting string into sql date 
	    
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String room = request.getParameter("room");
		DatabaseManagement students = new DatabaseManagement();
		System.out.println("id" + id);
		students.updateUser(Integer.parseInt(id), first_name, last_name, date1, gender, address, room);
		response.sendRedirect("load");
	}

}
