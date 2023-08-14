package ducky.models;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DatabaseManagement {

	// check đăng nhập

//	 public boolean checkUser(String username, String password) {
//	  if(username.equals("Ducky") && password.equals("FunnyGuy")) { return true;
//	  }else { return false; } }
//	 

	// check loginDB
	public Students checkLogin(String username, String password) {
		boolean isValid = false;
		try {
			Connection conn = ConnectDB.connecion();
			String sql = "select * from customers where username = ? and password = ?";
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.setString(1, username);
			pre.setString(2, password);

			ResultSet rs = pre.executeQuery();
			// success
			while(rs.next()) {
				return new Students(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	// red DB
	ResultSet rs = null;

	public List<Students> getStudents() {

		try {
			Connection conn = ConnectDB.connecion();
			String query = " SELECT * from customers";
			PreparedStatement pre = conn.prepareStatement(query);
			rs = pre.executeQuery();
			List<Students> list = new ArrayList<>();
			while (rs.next()) {
				Students a = new Students(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9));
				list.add(a);
			}

			return list;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Errrrrrrrrrrrr List" + e);
		}

		return null;

	}
	
	public void deleteUser(int id ) {	
		try {
			Connection conn = ConnectDB.connecion();
			String query = " DELETE from customers WHERE id = ?";
			PreparedStatement pre = conn.prepareStatement(query);
			pre.setInt(1, id);
			pre.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Errrrrrrrrrrrr Delete " + e);
		}
	}
	
	public void insertStudent(String first_name, String last_name,Date date, String gender, String address, String room) {
		
		
		try {
			Connection conn = ConnectDB.connecion();
			String query = "INSERT INTO customers (first_name, last_name, date, gender, address, room)\r\n"
					+ "					VALUES(?, ?, ?, ?, ?, ? )";
			PreparedStatement pre = conn.prepareStatement(query);
			pre.setString(1, first_name);
			pre.setString(2, last_name);
			pre.setDate(3, date);
			pre.setString(4, gender);
			pre.setString(5, address);
			pre.setString(6, room);
			pre.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Errrrrrrrrrrrr Add " + e);
		}
	}
	
	public Students updateUserByID(int id) {
		
		try {
			Connection conn = ConnectDB.connecion();
			String query = "SELECT * from customers WHERE id = ?";
			PreparedStatement pre = conn.prepareStatement(query);
			pre.setInt(1, id);
			rs = pre.executeQuery();
			while(rs.next()) {
				return new  Students(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Errrrrrrrrrrrr Update " + e);
		}
		
		return null;
	}
	public void updateUser(int id ,String first_name, String last_name,Date date, String gender, String address, String room) {
		try {
			Connection conn = ConnectDB.connecion();
			String query = " UPDATE customers SET first_name = ?,last_name = ?, date = ? ,gender = ?, address = ?, room = ? WHERE id = ? ";
			PreparedStatement pre = conn.prepareStatement(query);
			pre.setString(1, first_name);
			pre.setString(2, last_name);
			pre.setDate(3, date);
			pre.setString(4, gender);
			pre.setString(5, address);
			pre.setString(6, room);
			pre.setInt(7, id);
			
			pre.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Errrrrrrrrrrrr UpdateUser " + e);
		}
	}
	

	public List<Students> getSearchName(String txtSearch) {

		List<Students> list = new ArrayList<>();
		try {
			Connection conn = ConnectDB.connecion();
			System.out.println("allllllll" + txtSearch);
			String query = "SELECT * FROM customers WHERE first_name LIKE ? or address LIKE ?";
			PreparedStatement pre = conn.prepareStatement(query);
			System.out.println("1");
			pre.setString(1, "%" +txtSearch+ "%");
			System.out.println("2");
			pre.setString(2, "%" +txtSearch+ "%");
			System.out.println("3");
			
			
			rs = pre.executeQuery();
			
			while (rs.next()) {
				list.add( new Students(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Errrrrrrrrrrrr Search" + e);
		}
		return list;
	}

	
	
}
