package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.contentsDto;

@Mapper
public interface IcontentsDao {
	
	public List<contentsDto> contentsload(String contents_number);

	
	public String select_content(String contents_number);
}

