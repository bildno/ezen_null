package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IreviewDao;
import com.study.springboot.dto.reviewDto;

@Component
public class reviewService {

	@Autowired
	private IreviewDao ireviewDao;

	public List<reviewDto> select_review(String member_id) {
		List<reviewDto> reviewlist = ireviewDao.select_review(member_id);

		return reviewlist;
	}

}