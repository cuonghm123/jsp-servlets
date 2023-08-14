package ducky.models;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class Image implements HttpSessionBindingListener {
	private String name;
	private int witdh;
	private int height;
	
	
	public Image(String name, int witdh, int height) {
		super();
		this.name = name;
		this.witdh = witdh;
		this.height = height;
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getWitdh() {
		return witdh;
	}
	public void setWitdh(int witdh) {
		this.witdh = witdh;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	
	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		event.getSession().getServletContext().log("Image in the session" + getName());
		//event.getSession().getServletContext().log("Image out the session" + getName());
	}

	
	public void valueUnbuond(HttpSessionBindingEvent event) {
		event.getSession().getServletContext().log("Image out the session" + getName());
	}
}
