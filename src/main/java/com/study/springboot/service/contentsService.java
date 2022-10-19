package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IcontentsDao;
import com.study.springboot.dto.contentsDto;

@Component
public class contentsService {

	@Autowired
	private IcontentsDao icontentsDao;

	public List<contentsDto> contentsload(String contents_number) {

		List<contentsDto> contentsload = icontentsDao.contentsload(contents_number);

		return contentsload;

	}
	
	public String select_content(String contents_number) {
		
		String result = icontentsDao.select_content(contents_number);
		
		return result;
	}
}
