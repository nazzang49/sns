package com.cafe24.sns.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.sns.vo.TimelineVO;

@Repository
public class TimelineDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public boolean make(TimelineVO tvo) {
		return sqlSession.insert("timeline.make",tvo)==1;
	}
	
	public TimelineVO getTimeline(String userEmail) {
		return sqlSession.selectOne("timeline.getTimeline", userEmail);
	}
	
}
