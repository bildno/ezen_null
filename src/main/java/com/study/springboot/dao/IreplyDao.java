package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.replyDto;

@Mapper
public interface IreplyDao {

	public List<replyDto>replyView(String community_number);
	
	
	public int replyInsert(replyDto dto);
	
//	public String community_hit(String contents_number);
	
	
	public List<replyDto> select_reply(String member_id);
	
	
	public List<replyDto> myreply_page(String startRowNum_reply, String endRowNum_reply,String member_id);
	
	public int deletereply(int reply_number);
	
	public int deletereplyA(int community_number);
	
	
}
