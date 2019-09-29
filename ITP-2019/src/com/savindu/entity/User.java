package com.savindu.entity;

import java.io.Serializable;
import java.util.List;

/*
 * @author : Savindu Bashitha
 * Student ID : IT18177442
 */

public class User implements Serializable {
    
    private static final long serialVersionUID = 1L;

    private String usrID;
	private String username;
    private String password;
    private String email;
    private String fName;
    private String lname;	
    private String contact;
    private String createDate;
    private String state;
    private String street;
    private String city;
    private String userImg;
     
    public String getUsrID() {
 		return usrID;
 	}
 	public void setUsrID(String usrID) {
 		this.usrID = usrID;
 	}
    public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getLastLogIn() {
		return lastLogIn;
	}
	public void setLastLogIn(String lastLogIn) {
		this.lastLogIn = lastLogIn;
	}
	private String lastLogIn;
    
   
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
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

    
}
