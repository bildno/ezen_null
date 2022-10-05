package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.reviewDto;

@Mapper
public interface IreviewDao {

	public List<reviewDto> select_review(String member_id);
	
	public List<reviewDto> myreview_page(String startRowNum_community, String endRowNum_community,String member_id);
	
}
