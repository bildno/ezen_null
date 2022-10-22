package com.study.springboot.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class one2oneDto {
	
	private String one2one_number;
	private String one2one_name;
	private String one2one_title;
	private String one2one_content;
	private Date one2one_date;
	private String one2one_member_id;
	
}