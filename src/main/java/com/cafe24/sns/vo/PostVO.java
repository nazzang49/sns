package com.cafe24.sns.vo;

import java.sql.Date;

public class PostVO {

	private Long no;
	private String title;
	private String contents;
	private String image;
	private Date regDate;
	private Long albumNo;
	
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Long getAlbumNo() {
		return albumNo;
	}
	public void setAlbumNo(Long albumNo) {
		this.albumNo = albumNo;
	}
	
	@Override
	public String toString() {
		return "PostVO [no=" + no + ", title=" + title + ", contents=" + contents + ", image=" + image + ", regDate="
				+ regDate + ", albumNo=" + albumNo + "]";
	}
	
}
