package com.user.bean;

public class User {
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_sex;
	private String user_academy;//所属学院
	private String user_phone;
	private String user_qq;
	private String user_email;
	
	//构造器
	public User() {
		super();
	}

	public User(String user_id, String user_password, String user_name,
			String user_sex, String user_academy, String user_phone,
			String user_qq, String user_email) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_sex = user_sex;
		this.user_academy = user_academy;
		this.user_phone = user_phone;
		this.user_qq = user_qq;
		this.user_email = user_email;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_academy() {
		return user_academy;
	}

	public void setUser_academy(String user_academy) {
		this.user_academy = user_academy;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_qq() {
		return user_qq;
	}

	public void setUser_qq(String user_qq) {
		this.user_qq = user_qq;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_password=" + user_password
				+ ", user_name=" + user_name + ", user_sex=" + user_sex
				+ ", user_academy=" + user_academy + ", user_phone="
				+ user_phone + ", user_qq=" + user_qq + ", user_email="
				+ user_email + "]";
	}

}