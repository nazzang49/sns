package com.cafe24.sns.repository;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.sns.vo.UserVO;

@Repository
public class UserDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public UserVO getUser(String email, String pw) {
		Map<String, String> map = new HashMap<>();
		map.put("email", email);
		map.put("pw", pw);
		return sqlSession.selectOne("user.getUser", map);
	}
	
	public boolean join(UserVO uvo) {
		return sqlSession.insert("user.join", uvo)==1;
	}
	
}
