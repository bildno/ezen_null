package com.study.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.ImemberDao;

@Component
public class memberService {

	@Autowired
	private ImemberDao imemberDao;

	
	
	public int login(String member_id, String member_pw) {
		int result = 0;
		
		
		int count = imemberDao.login(member_id, member_pw);
		
		if(count > 0) {
			result = 1;
		}
		
		return result;
	}
	
	
}
