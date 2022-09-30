package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.noticeDto;

@Mapper
public interface InoticeDao {

	public List<noticeDto> notice();
	
	public List<noticeDto> noticepage( String startRowNum_notice, String endRowNum_notice );
	
	public int notice_write(noticeDto dto);
	
	public List<noticeDto>ad_notice_info(String notice_number);
	
	public int ad_notice_update(noticeDto dto);
	
	public List<noticeDto>ad_noticesearch(String search_type, String search_contents);
	
}
