package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.hostenter_imgDto;

@Mapper
public interface Ihostenter_imgDao {
	
	public int hostenter_img_up(hostenter_imgDto dto);
	
	List<hostenter_imgDto> hostenter_img_sel(String hostenter_img_name);
	
	public int hostenter_img_update(String hostenter_img, String hostenter_img_name);

	public int delete_img(String hostenter_img_name);
	
	List<hostenter_imgDto> img_sel(String hostenter_img_name);
	
}
