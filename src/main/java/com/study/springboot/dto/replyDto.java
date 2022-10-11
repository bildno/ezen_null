package com.study.springboot.dto;

import lombok.Data;

@Data
public class replyDto {
	
	private String reply_content;
	private String reply_member_id;
	private String reply_community_number;
	public void setCommunity_contents_number(String contents_number) {
		// TODO Auto-generated method stub
		
	}

}
