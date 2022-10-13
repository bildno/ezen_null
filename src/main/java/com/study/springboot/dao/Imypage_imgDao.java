package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.mypage_imgDto;


@Mapper
public interface Imypage_imgDao {

	public int up_file_title(mypage_imgDto dto);
	
}
