package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.one2one_answerDto;

@Mapper
public interface Ione2one_answerDao {
	
	public List<one2one_answerDto> one2one_answer(String member_id);

}
