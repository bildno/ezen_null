package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImemberDao {

	public int login(String member_id, String member_pw);
	
	
}
