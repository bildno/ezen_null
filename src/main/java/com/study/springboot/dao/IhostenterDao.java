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
	
	public int zzim_count1(String hostenter_wish);
	
	public int zzim_count2(int hostenter_wish);
	
	public List<hostenterDto> wish_list(String member_id);
	
	public int view_count(int hostenter_number);
	
	public List<hostenterDto> search(String search);
	
	public String select_title(int hostenter_number);
	
	public List<hostenterDto> space_top_hit(String hostenter_contents_number);
	
	public int delete_space(int hostenter_number);
	
	public int spacedeleteid(String member_id);
	
	public int deletespaceselect(String member_id);
	
	public List<hostenterDto>space_search(String contents_number, String headcount, String name);
	
	public List<hostenterDto>space_search2(String headcount, String name);

	public List<hostenterDto>space_search3(String member_id,String headcount, String name);

}
