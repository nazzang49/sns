package com.cafe24.sns.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.security.Auth;
import com.cafe24.security.AuthUser;
import com.cafe24.sns.service.TimelineService;
import com.cafe24.sns.vo.AlbumVO;
import com.cafe24.sns.vo.PostVO;
import com.cafe24.sns.vo.TimelineVO;
import com.cafe24.sns.vo.UserVO;

@Controller
@RequestMapping("/timeline/{userEmail:(?!assets).*}")
public class TimelineController {

	@Autowired
	private TimelineService timelineService;
	
	//타임라인 메인으로 이동(사용자 이메일 / 게시물 번호)
	@RequestMapping({"","/","/{albumNo}","/{albumNo}/{postNo}"})
	public String main(@PathVariable Optional<String> userEmail,
					   @PathVariable Optional<Long> albumNo,
					   @PathVariable Optional<Long> postNo,
					   @RequestParam (value="pageNum", required=true, defaultValue="1") Integer pageNum,
					   Model model) {
		
		//(메인 페이지) 갤러리 게시물 리스트 list, 타임라인 tvo, 페이징 정보
		//앨범 O, 게시물 O = 해당 게시물 표시
		//앨범 O, 게시물 X = 해당 앨범 내 최근 게시물 표시
		//앨범 X, 게시물 X = 전체 게시물 리스트 표시
		Map<String, Object> postMap = timelineService.getPostList(userEmail, albumNo, postNo, pageNum);
		
		//페이징 정보
		Map<String, Integer> pagingMap = (Map<String, Integer>)postMap.get("pagingMap");
		//게시물 리스트
		List<PostVO> postList = (List<PostVO>)postMap.get("postList");
		//대표 게시물
		PostVO pvo = (PostVO)postMap.get("post");
		//타임라인 정보
		TimelineVO tvo = timelineService.getTimeline(userEmail);
		//앨범 리스트
		List<AlbumVO> albumList = timelineService.getAlbumList(userEmail);
		
		model.addAttribute("pagingMap", pagingMap);
		model.addAttribute("postList", postList);
		model.addAttribute("albumList", albumList);
		model.addAttribute("pvo", pvo);
		model.addAttribute("tvo", tvo);
		
		return "timeline/timeline-main";
	}
	
	//게시물 작성 페이지 이동(본인 인증)
	@Auth
	@RequestMapping("/admin/write")
	public String write(@AuthUser UserVO authUser,
						@PathVariable Optional<String> userEmail) {
		
		//본인 인증
		if(userEmail.isPresent()) {
			//같지 않다면 = 메인으로 이동
			if(!authUser.getEmail().equals(userEmail.get())) {
				return "redirect:/"+userEmail;
			}
		}
		return "timeline/timeline-admin-write"; 
	}
	
	//관리 페이지 이동(본인 인증)
	@Auth
	@RequestMapping("/admin/mypage")
	public String mypage(@AuthUser UserVO authUser,
						 @PathVariable Optional<String> userEmail,
						 Model model) {
		
		//본인 인증
		if(userEmail.isPresent()) {
			//같지 않다면 = 메인으로 이동
			if(!authUser.getEmail().equals(userEmail.get())) {
				return "redirect:/"+userEmail;
			}
		}
		
		//앨범 리스트
		List<AlbumVO> albumList = timelineService.getAlbumList(userEmail);
		model.addAttribute("albumList", albumList);
				
		return "timeline/timeline-admin-mypage"; 
	}
	
	
	
}
