package com.cafe24.sns.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cafe24.sns.dto.JSONResult;
import com.cafe24.sns.service.UserService;

@Controller("userAPIController")
@RequestMapping("/user/api")
public class UserController {

	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/check-email")
	public JSONResult checkEmail(@RequestParam(value="email", required=true, defaultValue="") String email) {
		boolean exist = userService.existEmail(email);
		
		System.out.println(exist);
		//JSON 형태로 변형하여 전송
		JSONResult result = JSONResult.success(exist);
		return result;
	}
	
}
