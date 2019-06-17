package com.cafe24.sns.vo;

import java.sql.Date;

public class AlbumVO {

	private Long no;
	private String title;
	private String description;
	private Date regDate;
	private String userEmail;
	private Long postCount;
	
	public Long getPostCount() {
		return postCount;
	}
	public void setPostCount(Long postCount) {
		this.postCount = postCount;
	}
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	@Override
	public String toString() {
		return "AlbumVO [no=" + no + ", title=" + title + ", description=" + description + ", regDate=" + regDate
				+ ", userEmail=" + userEmail + ", postCount=" + postCount + "]";
	}
	
}
