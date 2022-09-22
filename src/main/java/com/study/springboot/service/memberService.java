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
	
//	이름변경
	public int name_change(Map<String, Object> map) {
		
		int name_change = imemberDao.name_change(map);
		
		return name_change;
		
	}
//	이메일변경
	public int email_change(String member_email, String member_id) {
		
		int email_change = imemberDao.email_change(member_email, member_id);
		
		return email_change;
	}
	
//	전화번호변경
	public int phone_change(String member_phone, String member_id) {
		
		int phone_change = imemberDao.phone_change(member_phone, member_id);
		
		return phone_change;
	}
	
	public int update_pw(String member_id, String member_pw) {
		
		int update_pw = imemberDao.update_pw(member_id,member_pw);
		
		return update_pw;
		
	}
	

	

}
