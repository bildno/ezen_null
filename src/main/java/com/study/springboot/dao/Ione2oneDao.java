package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.one2oneDto;

@Mapper
public interface Ione2oneDao {
	
	public  List<one2oneDto> one2one_list(String member_id);
	
}
