package com.practical;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class universities {
	@Id
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return  name;
	}
	
}
