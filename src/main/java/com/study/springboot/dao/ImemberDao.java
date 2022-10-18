package com.study.springboot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.memberDto;

@Mapper
public interface ImemberDao {

	public int login(String member_id, String member_pw);
	
	public List<memberDto> mypageload(String member_id);
	
	public String idfind(String member_name,String member_phone);
	
	public String select_pw(String member_id, String member_name);
	
	public int update_pw(String member_id, String member_pw);
	
	public int join_member(memberDto dto);
	
	public int name_change(Map<String, Object> map);
	
	public int email_change(String member_email, String member_id);
	
	public int phone_change(String member_phone, String member_id);
	
	public int host_find(String member_id);
	
	public List<memberDto> ad_member_page(String startRowNum, String endRowNum );

	public List<memberDto> ad_host_page(String startRowNum, String endRowNum );
	
	public List<memberDto> host_search(String search_type, String search_contents);
	
	public List<memberDto> member_search(String search_type, String search_contents);
	
	public int resign(String member_id);
	
	public int idCheck(String member_id);
	
	
}
