package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Mycontroller {
	
	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}
		
	@RequestMapping("/main")
	public String main(Model model) {
		
		model.addAttribute("mainPage","one2one/one2one.jsp");
		return "index";
	}
	
	@RequestMapping("/one2one")
	public String one2one(Model model) {
		
		model.addAttribute("mainPage","one2one/one2one.jsp");
		return "index";
	}
	@RequestMapping("/login")
	public String login(Model model) {
		
		model.addAttribute("mainPage","member/login.jsp");
		return "index";
	}
	
}
