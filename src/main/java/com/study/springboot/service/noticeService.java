package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.InoticeDao;
import com.study.springboot.dto.noticeDto;

@Component
public class noticeService {
	
	@Autowired
	private InoticeDao inoticeDao;
	
	
	public List<noticeDto> notice() {
		
		List<noticeDto> notice = inoticeDao.notice();
		
		return notice;
	}
	
	public int notice_write(noticeDto dto) {
		int result = inoticeDao.notice_write(dto);
		return result;
	}
	
	public List<noticeDto>ad_notice_info(String notice_number) {

		List<noticeDto>ad_notice_info = inoticeDao.ad_notice_info(notice_number);

		return ad_notice_info;
	}

	public List<noticeDto>ad_noticesearch(String search_type, String search_contents) {
		
		List<noticeDto>ad_noticesearch = inoticeDao.ad_noticesearch(search_type, search_contents);
		
		return ad_noticesearch;
	}
	
	public List<noticeDto> contents_notice(String notice_contents_number){
		
		List<noticeDto> notice_list = inoticeDao.contents_notice(notice_contents_number);
		
		return notice_list;
	}
}
