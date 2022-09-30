package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.faqDto;

@Mapper
public interface IfaqDao {

	public List<faqDto> faq();
	
	public List<faqDto> faqpage( String startRowNum_faq, String endRowNum_faq );
	
	public int ad_FAQ_write(faqDto dto);
	
	public List<faqDto> ad_FAQ_info(String faq_number);
	
	public int ad_FAQ_delete(String faq_number);
	
	public int ad_FAQ_update(String faq_number, String faq_title, String faq_content);
	
	public List<faqDto> faq_search(String search_type, String search_contents);
	
}
