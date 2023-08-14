package ducky.models;


import java.sql.*;
public class ConnectDB {
	
	
	   private static final String url = "jdbc:postgresql://localhost:5433/"; //"jdbc:postgresql://localhost/postgres/";
	    private static final String user = "postgres";
	    private static final String password = "1";

	    /**
	     * Connect to the PostgreSQL database
	     *
	     * @return a Connection object
	     * @throws ClassNotFoundException 
	     */
	    public static Connection connecion() throws ClassNotFoundException {
	        Connection conn = null;
	        try {
	        	Class.forName("org.postgresql.Driver");
	        	conn = DriverManager.getConnection(url, user, password);
	        	System.out.println("Connection DB Success!");
	        } catch (SQLException e) {
	            System.out.println(e.getMessage() + "Error hhhhhhh");
	        }
	        return conn;
		}

	}
