package com.cafe24.sns.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.sns.repository.AlbumDAO;
import com.cafe24.sns.repository.PostDAO;
import com.cafe24.sns.repository.TimelineDAO;
import com.cafe24.sns.vo.AlbumVO;
import com.cafe24.sns.vo.PostVO;
import com.cafe24.sns.vo.TimelineVO;

@Service
public class TimelineService {
	
	private static final int PAGE_SIZE = 5;
	
	@Autowired
	private TimelineDAO timelineDao;
	
	@Autowired
	private PostDAO postDao;
	
	@Autowired
	private AlbumDAO albumDao;
	
	public TimelineVO getTimeline(@PathVariable Optional<String> userEmail) {
		return timelineDao.getTimeline(userEmail.get());
	}
	
	//앨범 리스트
	public List<AlbumVO> getAlbumList(@PathVariable Optional<String> userEmail) {
		if(userEmail.isPresent()) {
			return albumDao.getAlbumList(userEmail.get());	
		}
		return null;
	}
	
	//대표 게시물 + 게시물 리스트
	public Map<String, Object> getPostList(@PathVariable Optional<String> userEmail,
			   							   @PathVariable Optional<Long> albumNo,
			   							   @PathVariable Optional<Long> postNo,
			   							   @RequestParam (value="pageNum", required=true, defaultValue="1") Integer pageNum) {
		
		Map<String , Object> postMap = new HashMap<>();
		
		//회원 이메일이 입력되었다면
		if(userEmail.isPresent()) {
			//앨범 + 게시물(해당 게시물 and 게시물 리스트)
			if(postNo.isPresent()) {
				postMap.put("post", postDao.getPost(albumNo.get(), postNo.get()));
				
				//해당 앨범 내 게시물 수
				int count = postDao.getCount(albumNo.get());
				Map<String, Integer> pagingMap = getPaging(count, pageNum);
				int startRow = pagingMap.get("startRow");
				postMap.put("pagingMap", pagingMap);
				postMap.put("postList", postDao.getPostList(startRow-1,PAGE_SIZE,albumNo.get()));
			}
			//앨범(최근 게시물 and 게시물 리스트)
			else if(albumNo.isPresent()) {
				postMap.put("post", postDao.getPost(albumNo.get()));
				
				//해당 앨범 내 게시물 수
				int count = postDao.getCount(albumNo.get());
				Map<String, Integer> pagingMap = getPaging(count, pageNum);
				int startRow = pagingMap.get("startRow");
				postMap.put("pagingMap", pagingMap);
				postMap.put("postList", postDao.getPostList(startRow-1,PAGE_SIZE,albumNo.get()));
			}
			//nothing(전체 중 최근 게시물 and 전체 게시물 리스트)
			else {
				postMap.put("post", postDao.getPost(userEmail.get()));
				
				//전체 게시물 수
				int count = postDao.getCount(userEmail.get());
				Map<String, Integer> pagingMap = getPaging(count, pageNum);
				int startRow = pagingMap.get("startRow");
				postMap.put("pagingMap", pagingMap);
				postMap.put("postList", postDao.getPostList(startRow-1,PAGE_SIZE,userEmail.get()));
			}
		}
		
		return postMap;
		
	}
	
	//게시물 리스트 페이징
	public Map<String, Integer> getPaging(int count, int pageNum) {
		Map<String, Integer> map = new HashMap<>();
		
		//현재 페이지
		int currentPage = pageNum;
		
		//한 페이지에 3개의 게시물 표시
		int pageBlock = 3;
		
		//한 페이지의 시작행, 끝행
		int startRow = (currentPage-1)*PAGE_SIZE+1;
		
		//앨범 내 총 게시물 수
		int pageCount = count/PAGE_SIZE+(count%PAGE_SIZE==0? 0:1);
		int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		
		if(endPage>pageCount) {
			endPage=pageCount;
		}
		
		map.put("startRow", startRow);
		map.put("pageCount", pageCount);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		
		return map;
	}
	

}
