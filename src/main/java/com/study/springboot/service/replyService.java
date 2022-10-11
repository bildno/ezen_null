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
	public List<replyDto>replyView(String community_number) {
		List<replyDto>replyViewlist = ireplyDao.replyView(community_number);
		return replyViewlist;
	}
	
	//댓글 달기
	public int replyInsert(String reply_content, String reply_member_id, String reply_communty_number ) {
		
		int result = 0;
		replyDto dto = new replyDto();
		dto.setReply_content(reply_content);
		dto.setReply_member_id(reply_member_id);
		dto.setReply_communty_number(reply_communty_number);
		
		try {
			result = ireplyDao.replyInsert(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
		
	}
	
	
	//마이페이지 내가작성한 댓글
	public List<replyDto> select_reply(String member_id) {
		
		List<replyDto> replylist = ireplyDao.select_reply(member_id);
		
		return replylist;
	}

	
}
