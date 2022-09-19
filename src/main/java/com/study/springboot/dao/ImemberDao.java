package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.memberDto;

@Mapper
public interface ImemberDao {

	public int login(String member_id, String member_pw);
	
	public List<memberDto> mypageload(String member_id);
	
	
	
}
