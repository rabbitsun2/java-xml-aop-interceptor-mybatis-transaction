package com.cakeon.website.vo;

import java.util.Date;

public class MemberVO {

	private int id;
	private String email;
	private String passwd;
	private int remember;
	private int locked;
	private Date regidate;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public int getRemember() {
		return remember;
	}
	
	public void setRemember(int remember) {
		this.remember = remember;
	}
	
	public int getLocked() {
		return locked;
	}
	
	public void setLocked(int locked) {
		this.locked = locked;
	}
	
	public Date getRegidate() {
		return regidate;
	}
	
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	
}
