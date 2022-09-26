package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.faqDto;


@Mapper
public interface IfaqDao {

	public List<faqDto> faq();
	public List<faqDto> faqpage( String startRowNum_faq, String endRowNum_faq );
	
	public int faq_write(faqDto dto);
	

	
}
