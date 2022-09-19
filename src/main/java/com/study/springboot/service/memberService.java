package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.ImemberDao;
import com.study.springboot.dto.memberDto;

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
	
	public List<memberDto> mypageload(){
		
		List<memberDto> memberlist = imemberDao.mypageload();
		
		return memberlist;
		
	}
	
}
