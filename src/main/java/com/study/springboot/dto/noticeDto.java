package com.study.springboot.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class noticeDto {
	
	private String notice_number;
	private String notice_title;
	private String notice_content;
	private String notice_contents_number;
	private Date notice_date;
	
	
	
}


