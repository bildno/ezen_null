package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.communityDto;

@Mapper
public interface IcommunityDao {

	public List<communityDto> communityload(String contents_number);
	
	
	public List<communityDto> community_content(String community_number);
	
	public int community_write(communityDto dto);
	
	public List<communityDto> community_page(String startRowNum_community, String endRowNum_community, String contents_number);
	
}
