package com.cafe24.sns.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping({"","/","/main"})
	public String main() {
		return "main/index";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "main/test";
	}
	
}
