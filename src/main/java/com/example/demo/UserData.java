package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity

public class UserData {
    @Id
    private int id;
	private String name;
    private String email;
    private String password;

    // Getters and Setters
public String toString() {
	return name+":"+email+" : "+ id;
}

    public void setId(int id) {
  		this.id = id;
  	}

    public int getId() {
		return id;
	}

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static void main(String[] args) {
        // Your application logic here
    }
}
