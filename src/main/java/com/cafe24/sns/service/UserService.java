package com.cafe24.sns.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.sns.repository.UserDAO;
import com.cafe24.sns.vo.TimelineVO;
import com.cafe24.sns.vo.UserVO;

@Service
public class UserService {

	@Autowired
	private UserDAO userDao;
	
	public UserVO getUser(String email, String pw) {
		return userDao.getUser(email, pw);
	}
	
	public boolean join(UserVO uvo, TimelineVO tvo) {
		return userDao.join(uvo, tvo);
	}
	
	//중복체크
	public boolean existEmail(String email) {
		UserVO uvo = userDao.existEmail(email);
		//중복 O
		if(uvo!=null) return false;
		//중복 X
		return true;
	}
}
