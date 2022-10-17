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
	
//	로그인판별
	public int login(String member_id, String member_pw) {
		int result = 0;
		
		
		int count = imemberDao.login(member_id, member_pw);
		
		if(count > 0) {
			result = 1;
		}
		return result;
	}
	
//	멤버리스트
	public List<memberDto> mypageload(String member_id){
		
		List<memberDto> memberlist = imemberDao.mypageload(member_id);
		
		return memberlist;
	}
	
//	일반멤버검색
	public List<memberDto> member_search(String search_type, String search_contents) {
		
		List<memberDto> member_search = imemberDao.member_search(search_type, search_contents);
		
		return member_search;
	}
	
//	호스트검색
	
	public List<memberDto> host_search(String search_type, String search_contents) {
		
		List<memberDto> host_search = imemberDao.host_search(search_type, search_contents);
		
		return host_search;
	}
	
//	아이디찾기
	public String idfind(String member_name,String member_phone) {
		
		String idfind = imemberDao.idfind(member_name,member_phone);
		
		return idfind;
	}
	
//	비밀번호찾기
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
	
//	비밀번호변경
	public int update_pw(String member_id, String member_pw) {
		
		int update_pw = imemberDao.update_pw(member_id, member_pw);
		
		return update_pw;
		
	}
	
//	호스트판별
	public int host_find(String member_id) {
		
		int member_host = imemberDao.host_find(member_id);
		
		return member_host;
	}
	
//	회원가입
	public int join_member(String member_id, String member_pw, String member_email, String member_phone, String member_gender, String member_name, String member_host) {
		
		int result = 0;
		memberDto dto = new memberDto();
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_email(member_email);
		dto.setMember_phone(member_phone);
		dto.setMember_gender(member_gender);
		dto.setMember_name(member_name);
		dto.setMember_host(member_host);
	
		try {
			result = imemberDao.join_member(dto);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return result;
	}
//// 관리자 회원 조회
//	public List<memberDto> ad_member_list() {
//		
//		List<memberDto> ad_host_list = imemberDao.ad_member_list();
//		
//		return ad_host_list;
//	}
//// 관리자 호스트 조회
//	public List<memberDto> ad_host_list() {
//		
//		List<memberDto> ad_host_list = imemberDao.ad_host_list();
//		
//		return ad_host_list;
//	}
	
//  회원탈퇴
	public int resign(String member_id) {
		int result = imemberDao.resign(member_id);
		
		return result;
	}
}
