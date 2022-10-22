package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class communityDto {
	
	private String community_number;
	private String community_title;
	private String community_content;
	private Date community_date;
	private String community_member_name;
	private String community_member_id;
	private int community_contents_number;
	private int community_hit;

}
