package com.cafe24.sns.vo;

public class TimelineVO {

	private String email;
	private String title;
	//관심분야 = 여러개일 경우 하나의 문자열로 입력
	private String interests;
	private String school;
	private String open;
	private String image;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getInterests() {
		return interests;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getOpen() {
		return open;
	}
	public void setOpen(String open) {
		this.open = open;
	}
	
	@Override
	public String toString() {
		return "TimelineVO [email=" + email + ", title=" + title + ", interests=" + interests + ", school=" + school
				+ ", open=" + open + ", image=" + image + "]";
	}
}
