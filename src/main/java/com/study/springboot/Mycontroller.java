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
		
		model.addAttribute("mainPage","main.jsp");
		return "index";
	}
	
	
	
}
