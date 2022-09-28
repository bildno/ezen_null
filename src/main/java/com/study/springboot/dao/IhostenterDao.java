package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.hostenterDto;

@Mapper
public interface IhostenterDao {
	
	public int insert_hostenter(hostenterDto dto);
	
	public List<hostenterDto> select_space(String member_id);
	
	public List<hostenterDto> detail_space(String hostenter_name);
	
	public int update_hostenter(hostenterDto dto, String host_name_0);
	
	public List<hostenterDto> contents_space(String hostenter_contents_number);
}
