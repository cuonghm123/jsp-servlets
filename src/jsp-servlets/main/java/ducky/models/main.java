package ducky.models;

import java.util.List;

public class main {
	public static void main(String [] args) {
		// TODO Auto-generated method stub
		DatabaseManagement students = new DatabaseManagement();
		Students list = students.updateUserByID(Integer.parseInt("2"));
		
		System.out.println(list);
	}
}
