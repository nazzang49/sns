package com.cafe24.sns.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

import com.cafe24.sns.vo.TimelineVO;
import com.cafe24.sns.vo.UserVO;

@Repository
public class UserDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private TransactionTemplate transactionTemplate;
	
	@Autowired
	private JdbcTemplate template;
	
	public UserVO getUser(String email, String pw) {
		Map<String, String> map = new HashMap<>();
		map.put("email", email);
		map.put("pw", pw);
		return sqlSession.selectOne("user.getUser", map);
	}
	
	public boolean join(UserVO uvo, TimelineVO tvo) {
		boolean flag = false;
		transactionTemplate.execute(new TransactionCallbackWithoutResult() {
			
			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				template.update(new PreparedStatementCreator() {
					
					@Override
					public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
						String sql = "insert into user values(?, ?, ?, ?, ?, null, now())";
						PreparedStatement pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, uvo.getEmail());
						pstmt.setString(2, uvo.getName());
						pstmt.setString(3, uvo.getPw());
						pstmt.setString(4, uvo.getGender());
						pstmt.setInt(5, uvo.getAge());
						return pstmt;
					}
				});
				
				template.update(new PreparedStatementCreator() {
					
					@Override
					public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
						String sql = "insert into timeline(email, title, logo) values(?, ?, ?)";
						PreparedStatement pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, tvo.getEmail());
						pstmt.setString(2, tvo.getTitle());
						pstmt.setString(3, tvo.getImage());
						return pstmt;
					}
				});
			}
		});
		flag = true;
		return flag;
	}
	
	public UserVO existEmail(String email) {
		return sqlSession.selectOne("user.existEmail", email);
	}
	
}
