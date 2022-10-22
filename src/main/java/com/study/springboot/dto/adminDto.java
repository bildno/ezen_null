package com.study.springboot.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class adminDto {
		private String one2one_number;
		private String one2one_name;
		private String one2one_title;
		private String one2one_content;
		private Date one2one_date;
		private String one2one_member_id;
		
		
		private String notice_number;
		private String notice_title;
		private String notice_content;
		private String notice_contents_number;
		private Date notice_date;
	}
