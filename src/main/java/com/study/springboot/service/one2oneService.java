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

//	public List<one2oneDto>ad_one2one_write(String one2one_number) {
//
//		List<one2oneDto>ad_one2one_write = ione2oneDao.ad_one2one_write(one2one_number);
//
//		return ad_one2one_write;
//	}

	public List<one2oneDto>ad_one2one_answer(String one2one_number) {

		List<one2oneDto>ad_one2one_answer = ione2oneDao.ad_one2one_answer(one2one_number);

		return ad_one2one_answer;
	}

	public List<one2oneDto> one2one_search(String search_type, String search_contents) {

		List<one2oneDto> one2one_search = ione2oneDao.one2one_search(search_type, search_contents);

		return one2one_search;
	}

}