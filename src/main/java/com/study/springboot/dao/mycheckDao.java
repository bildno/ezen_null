package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.mycheckDto;



@Mapper
public interface mycheckDao {
	
//	@Autowired
//	private SqlSession SqlSession;
	
	
	
	
	
	public List<mycheckDto> mycheck_list(String member_id);
	
	public int insertMycheck(mycheckDto dto);

	
}
