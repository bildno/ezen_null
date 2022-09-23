package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IreplyDao;
import com.study.springboot.dto.replyDto;

@Component
public class replyService {

	@Autowired
	private IreplyDao ireplyDao;
	
	//댓글 보여주기
	public List<replyDto>replyView(String community_number,String member_id) {
		List<replyDto>replyViewlist = ireplyDao.replyView(community_number,member_id);
		return replyViewlist;
	}
	
	//댓글 달기

	
}
