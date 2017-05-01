package com.house.user.vo;

public class User {
	private Integer id;
	private String uid;
	private String username;
	private String password;
	private String name;
	private Integer power;
	
	public User() {
		
	}
	
	public User(Integer id, String uid, String username, String password, String name, Integer power) {
		super();
		this.id = id;
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.power = power;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPower() {
		return power;
	}
	public void setPower(Integer power) {
		this.power = power;
	}
	
}
