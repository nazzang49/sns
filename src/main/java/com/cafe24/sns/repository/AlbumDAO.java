package com.cafe24.sns.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.sns.vo.AlbumVO;

@Repository
public class AlbumDAO {

	@Autowired
	private SqlSession sqlSession;
	
	//앨범 리스트
	public List<AlbumVO> getAlbumList(String userEmail){
		return sqlSession.selectList("album.getAlbumList", userEmail);
	}
	
}
