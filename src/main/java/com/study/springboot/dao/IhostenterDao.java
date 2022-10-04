package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.hostenterDto;

@Mapper
public interface IhostenterDao {
	
	public int insert_hostenter(hostenterDto dto);
	
	public List<hostenterDto> select_space(String member_id);
	
	public List<hostenterDto> detail_space(String hostenter_name);
	
	public int update_space(String hostenter_title_img,
							String hostenter_name,
							int hostenter_contents_number,
							String hostenter_onerow,
							String hostenter_description,
							String hosteter_caution,
							int hostenter_price,
							int hostenter_bnumber,
							int hostenter_headcount,
							int hostenter_number
			
			);
	
	public List<hostenterDto> contents_space(String hostenter_contents_number);
	
	
	public List<hostenterDto> space_info(int hostenter_number);
}
