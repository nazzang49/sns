package com.cafe24.sns.vo;

import java.sql.Date;

public class UserVO {

	private String email;
	private String pw;
	private String gender;
	private int age;
	private String friends;
	private Date regDate;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getFriends() {
		return friends;
	}
	public void setFriends(String friends) {
		this.friends = friends;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "UserVO [email=" + email + ", pw=" + pw + ", gender=" + gender + ", age=" + age + ", friends=" + friends
				+ ", regDate=" + regDate + "]";
	}
}
