package com.cafe24.sns.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.sns.repository.UserDAO;
import com.cafe24.sns.vo.UserVO;

@Service
public class UserService {

	@Autowired
	private UserDAO userDao;
	
	public UserVO getUser(String email, String pw) {
		return userDao.getUser(email, pw);
	}
	
	public boolean join(UserVO uvo) {
		return userDao.join(uvo);
	}
	
}
