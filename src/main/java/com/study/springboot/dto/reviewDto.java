package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class reviewDto {

	private int review_number;
	private String review_content;
	private Date review_date;
	private String review_member_id;
	private String review_member_name;
	private int review_contents_number;
	
}
