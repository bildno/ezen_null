package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.wishDto;

@Mapper
public interface IwishDao {
	
	public int zzim_do(wishDto dto);
	
	public int zzim_exist(String hostenter_number,String member_id);


}
