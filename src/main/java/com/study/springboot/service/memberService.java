package com.study.springboot.service;

import org.springframework.stereotype.Component;

import com.study.springboot.dao.ImemberDao;

@Component
public class memberService {

	private ImemberDao imemberDao;
	private int count = 0;
	
	
	public int login(String member_id, String member_pw) {
		int result = 0;
		
		int count = imemberDao.login(member_id, member_pw);
		if(count > 0) {
			result = 1;
		}
		
		return result;
	}
	
	
}
