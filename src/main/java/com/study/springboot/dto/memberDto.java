package com.study.springboot.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class memberDto {

	private String member_id;
	private String member_pw;
	private String member_email;
	private String member_phone;
	private String member_gender;
	private String member_name;
	private String member_host;
	private String member_check;	
	private Date member_joindate;
	
}
