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

}
