package com.study.springboot.dto;

import lombok.Data;

@Data
public class memberDto {

	private String member_id;
	private String member_pw;
	private String member_email;
	private String member_phone;
	private int member_gender;
	private String member_name;
	private int member_host;
	
	
}