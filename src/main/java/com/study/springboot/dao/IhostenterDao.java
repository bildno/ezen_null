package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.hostenterDto;

@Mapper
public interface IhostenterDao {
	
	public int insert_hostenter(hostenterDto dto);
	
	public List<hostenterDto> select_space(String member_id);
}
