package com.cafe24.sns.dto;

//api 통신 시 통신 규약
public class JSONResult {
	private String result;  //통신 성공 여부
	private String message; //통신 성공 여부 관련 메시지
	private Object data;    //응답 데이터

	public static JSONResult success(Object data) {
		return new JSONResult("success", null, data);
	}

	public static JSONResult fail(String message) {
		return new JSONResult("fail", message, null);
	}
	
	private JSONResult(String result, String message, Object data) {
		this.result = result;
		this.message = message;
		this.data = data;
	}
	
	public String getResult() {
		return result;
	}
	public String getMessage() {
		return message;
	}
	public Object getData() {
		return data;
	}
}