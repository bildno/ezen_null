package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.hostenter_imgDto;

@Mapper
public interface Ihostenter_imgDao {
	
	public int hostenter_img_up(hostenter_imgDto dto);
}