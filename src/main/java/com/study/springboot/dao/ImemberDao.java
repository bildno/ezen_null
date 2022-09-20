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
	
	public int name_change(Map<String, Object> map);
}