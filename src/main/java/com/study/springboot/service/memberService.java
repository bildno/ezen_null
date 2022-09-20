package com.study.springboot.service;

import java.util.List;
import java.util.Map;

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
	
	
	
	public List<memberDto> mypageload(String member_id){
		
		List<memberDto> memberlist = imemberDao.mypageload(member_id);
		
		return memberlist;
		
	}
	
	
	public String idfind(String member_name,String member_phone) {
		
		String idfind = imemberDao.idfind(member_name,member_phone);
		
		return idfind;
	}
	
	public String select_pw(String member_id, String member_name) {
		
		String member_pw = imemberDao.select_pw(member_id, member_name);
		
		return member_pw;
	}
	
	public int name_change(Map<String, Object> map) {
		
		int name_change = imemberDao.name_change(map);
		
		return name_change;
	}
	
	public int update_pw(String member_id, String member_pw) {
		
		int update_pw = imemberDao.update_pw(member_id,member_pw);
		
		return update_pw;
		
	}
	

	public int join_member(String member_id, String member_pw, String member_email, String member_phone, String member_gender, String member_name, String member_host) {
		
		int result = 0;
		memberDto dto = new memberDto();
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_email(member_email);
		dto.setMember_phone(member_phone);
		dto.setMember_gender(member_host);
		dto.setMember_name(member_name);
		dto.setMember_host(member_host);
		
		try {
			result = imemberDao.join_member(dto);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return result;
		
	}
	

}
