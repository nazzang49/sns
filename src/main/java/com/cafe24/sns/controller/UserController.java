package com.cafe24.sns.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.cafe24.sns.service.UserService;
import com.cafe24.sns.vo.TimelineVO;
import com.cafe24.sns.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("/join")
	public String join() {
		return "user/join";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(@ModelAttribute UserVO uvo,
					   Model model) {
		
		//회원가입 성공 = 타임라인 생성 by 디폴트
		TimelineVO tvo = new TimelineVO();
		tvo.setEmail(uvo.getEmail());
		tvo.setTitle("welcome to "+uvo.getName()+"'s timeline");
		tvo.setLogo("/image/201951134533963.jpg");
		
		//회원가입 + 타임라인 생성 by 트랜잭션 처리
		boolean flag = userService.join(uvo, tvo);
		
		//회원가입 성공여부
		if(!flag) model.addAttribute("joinflag", false);
		else model.addAttribute("joinflag", true);
		
		return "user/joinsuccess";
	}
	
}
