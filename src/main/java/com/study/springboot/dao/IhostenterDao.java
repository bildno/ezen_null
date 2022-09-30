package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.hostenterDto;

@Mapper
public interface IhostenterDao {
	
	public int insert_hostenter(hostenterDto dto);
	
	public List<hostenterDto> select_space(String member_id);
	
	public List<hostenterDto> detail_space(String hostenter_name);
	
	public int space_update(String hostenter_title_img,
			int hostenter_contents_number, String hostenter_name,
			String hostenter_description, String hostenter_caution, 
			int hostenter_price, int hostenter_headcount,
			int hostenter_bumber, String hostenter_onerow, 
			String host_name_0);
	
	public List<hostenterDto> contents_space(String hostenter_contents_number);
	
	
	public List<hostenterDto> space_info(int hostenter_number);
}
