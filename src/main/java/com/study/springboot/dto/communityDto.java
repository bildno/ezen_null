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
	private int community_hit;
		
	
//	  COMMUNITY_NUMBER NUMBER(30)
//    COMMUNITY_TITLE VARCHAR(50),
//    COMMUNITY_CONTENT VARCHAR(1000),
//    COMMUNITY_DATE DATE,
//    COMMUNITY_MEMBER_NAME VARCHAR(20),
//    COMMUNITY_MEMBER_ID VARCHAR(20) REFERENCES MEMBER(MEMBER_ID),
//    COMMUNITY_CONTENTS_NUMBER NUMBER(20) REFERENCES CONTENTS(CONTENTS_NUMBER),
//    COMMUNITY_HIT NUMBER(20)
}
