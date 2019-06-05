package com.cafe24.security;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD,ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface Auth {

	//사용자와 관리자 구분할 인증 어노테이션
	public enum Role{
		USER,
		ADMIN
	}

	public Role role() default Role.USER;
	
}
