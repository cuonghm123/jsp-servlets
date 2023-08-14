package ducky.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorl
 */
//@WebServlet(description = "This a demo", urlPatterns = { "/ducky" })
public class HelloWorl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		loadParameter(request, response, "byGET");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		loadParameter(request, response, "byPOST");

	}
	
	private void loadParameter(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
		
		ServletContext context = this.getServletContext();
		
		String account = context.getInitParameter("account");  
		String password = context.getInitParameter("password");
		
		
		ServletConfig config =  this.getServletConfig();
		String song = config.getInitParameter("song");
		PrintWriter writer = response.getWriter();
		writer.println("hello worl " + method);
		writer.println("the account is " + account + " password " + password);
		writer.println("the song is " + song);
	}

}
