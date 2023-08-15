package ducky.models;

import java.util.Date;

public class Students {
	private int id;
	private String username;
	private String password;
	private String first_name;
	private String last_name;
	private Date date;
	private String gender;
	private String address;
	private String room;
	
	public Students() {

	}

	public Students(int id, String username, String password, String first_name, String last_name, Date date,
			String gender ,String address, String room ) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.date = date;
		this.gender = gender;
		this.address = address;
		this.room = room;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}


	@Override
	public String toString() {
		return "Students [id=" + id + ", username=" + username + ", password=" + password + ", first_name=" + first_name
				+ ", last_name=" + last_name + ", date=" + date + ", gender=" + gender + ", address=" + address
				+ ", room=" + room + "]";
	}

	
}
