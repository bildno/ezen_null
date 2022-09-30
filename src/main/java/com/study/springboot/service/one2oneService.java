package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.Ione2oneDao;
import com.study.springboot.dto.one2oneDto;

@Component
public class one2oneService {

	@Autowired
	private Ione2oneDao ione2oneDao;
	
	public List<one2oneDto> one2one_list(String member_id) {
		
		List<one2oneDto> one2one_list = ione2oneDao.one2one_list(member_id);
		
		return one2one_list;
	}
	
	public int one2one_write(one2oneDto dto) {
		int result = ione2oneDao.one2one_write(dto);
		return result;
	}
}