package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.communityDto;

@Mapper
public interface IcommunityDao {

	public List<communityDto> communityload(String contents_number);
	
//	public String community_hit(String contents_number);
	
}
