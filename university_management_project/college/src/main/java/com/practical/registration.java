package com.practical;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class registration {
	private String college;
	@Id
	private String name;
	private String password;
	private String university;
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Name : "+name;
	}
	
	
}
