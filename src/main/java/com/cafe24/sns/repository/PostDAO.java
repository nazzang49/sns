package com.cafe24.sns.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.sns.vo.PostVO;

@Repository
public class PostDAO {

	@Autowired
	private SqlSession sqlSession;
	
	//앨범 내 게시물 리스트
	public List<PostVO> getPostList(int startRow, int pageSize, Long AlbumNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("AlbumNo", AlbumNo);
		map.put("startRow", startRow);
		map.put("pageSize", pageSize);
		return sqlSession.selectList("post.getPostListByAlbumNo",map);
	}
	
	//전체 게시물 리스트
	public List<PostVO> getPostList(int startRow, int pageSize, String userEmail) {
		Map<String, Object> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("pageSize", pageSize);
		map.put("userEmail", userEmail);
		return sqlSession.selectList("post.getPostList",map);
	}
	
	//앨범 내 게시물 수
	public int getCount(Long albumNo) {
		return sqlSession.selectOne("post.getCountByAlbumNo", albumNo);
	}
	
	//특정 회원의 전체 게시물 수 
	public int getCount(String userEmail) {
		return sqlSession.selectOne("post.getCountByUserEmail", userEmail);
	}
	
	//대표 게시물 by 앨범 + 게시물
	public PostVO getPost(Long albumNo, Long postNo) {
		Map<String, Long> map = new HashMap<>();
		map.put("albumNo", albumNo);
		map.put("postNo", postNo);
		return sqlSession.selectOne("post.getPostByAlbumNoAndPostNo", map);
	}
	
	//대표 게시물 by 앨범
	public PostVO getPost(Long albumNo) {
		return sqlSession.selectOne("post.getPostByAlbumNo", albumNo);
	}
		
	//대표 게시물
	public PostVO getPost(String userEmail) {
		return sqlSession.selectOne("post.getPost", userEmail);
	}
	
}
