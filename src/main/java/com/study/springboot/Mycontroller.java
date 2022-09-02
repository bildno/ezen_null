package com.study.springboot;

import org.springframework.web.bind.annotation.RequestMapping;

public class Mycontroller {
	@RequestMapping("/")
	public String root() {
		return "index";
	}
}
